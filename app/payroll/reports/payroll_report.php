<?php
$Dir = "../../..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';


if (isset($_GET['month'])) {
    $VIEW_FOR_MONTH = $_GET['month'];
} else {
    $VIEW_FOR_MONTH = date('Y-m');
}

// Set the file name and path
$filename = 'payroll_report.csv';
$path = __DIR__ . '/' . $filename;

// Open the file for writing
$file = fopen($path, 'w');

// Write the header row
$header_row = [
    'Sno',
    'UserName',
    'PhoneNumber',
    'EmailId',
    'EMP-ID',
    'BH',
    'GROUP-NAME',
    'EMP-TYPE',
    'LOCATION',
    'NetPresents',
    'ValidPresents',
    'Absants',
    'Lates',
    'HalfDays',
    'Leaves',
    'OD/Meetings',
    "ShortLeaves",
    "NetSalary/Support",
    "NetAllowance",
    "SoftwareCharges",
    "OtherDeductions",
    "Payable",
    "PayrollMonth"
];
fputcsv($file, $header_row);

$AllUsers = _DB_COMMAND_("SELECT UserId, UserFullName, UserPhoneNumber, UserEmailId FROM users where UserStatus='1' ORDER BY UserFullName ASC", true);
if ($AllUsers == null) {
    NoData("No Users found!");
} else {
    $SerialNo = 0;
    $data_rows = [];
    foreach ($AllUsers as $User) {
        $SerialNo++;
        $RequestingUserId = $User->UserId;
        $GetPayrollId = FETCH("SELECT * FROM payrolls where payrolls_main_user_id='$RequestingUserId' and payrolls_type='$VIEW_FOR_MONTH'", "payrolls_id");
        $PayrollStatus = FETCH("SELECT * FROM payrolls where payrolls_main_user_id='$RequestingUserId' and payrolls_type='$VIEW_FOR_MONTH'", "payrolls_status");
        $payroll_mail_sent_at = FETCH("SELECT * FROM payrolls where payrolls_main_user_id='$RequestingUserId' and payrolls_type='$VIEW_FOR_MONTH'", "payroll_mail_sent_at");

        if ($PayrollStatus == null) {
            $PayrollStatus = "NA";
        }
        if (isset($_GET['ReqUserId'])) {
            if ($_GET['ReqUserId'] == $User->UserId) {
                $Checked = 'checked';
            } else {
                $Checked = "";
            }
        } else {
            $Checked = "";
        }

        //net allwances
        $FetchAllowances = _DB_COMMAND_("SELECT * FROM payroll_allowances where payroll_main_id='$GetPayrollId'", true);
        if ($FetchAllowances != null) {
            $NetAllowance = 0;
            foreach ($FetchAllowances as $Allowance) {
                $NetAllowance += $Allowance->pay_allowance_amount;
            }
        } else {
            $NetAllowance = 0;
        }

        //net deductions
        $FetchDeductions = _DB_COMMAND_("SELECT * FROM payroll_deductions where pay_deduction_name not like '%Software Charge%' and payroll_main_id='$GetPayrollId'", true);
        if ($FetchDeductions != null) {
            $NetDeductions = 0;
            foreach ($FetchDeductions as $Deductions) {
                $NetDeductions += $Deductions->pay_deduction_amount;
            }
        } else {
            $NetDeductions = 0;
        }

        //net salary support
        $GetAllowances = _DB_COMMAND_("SELECT * FROM config_payroll_allowance_for_users where payroll_allowance_for_users_main_user_id='$RequestingUserId'", true);
        if ($GetAllowances != null) {
            foreach ($GetAllowances as $Alls) {
                $Type = $Alls->payroll_allowance_for_users_type;
                if ($Type == "PERCENTAGE") {
                    $Type = $Alls->payroll_deductions_for_users_amount . " % of Total";
                } elseif ($Type = "FIX_AMOUNT") {
                    $Type = "Rs." . $Alls->payroll_allowance_for_users_amount;
                } else {
                    $Type = "Rs." . $Alls->payroll_allowance_for_users_amount;
                }
            }
        } else {
            $Type = "Rs.0";
        }

        //software charges
        $FetchSoftwareDeductions = _DB_COMMAND_("SELECT * FROM payroll_deductions where pay_deduction_name like '%Software Charge%' and payroll_main_id='$GetPayrollId'", true);
        if ($FetchSoftwareDeductions != null) {
            $SoftwareCharges = 0;
            foreach ($FetchSoftwareDeductions as $Softwares) {
                $SoftwareCharges += $Softwares->pay_deduction_amount;
            }
        } else {
            $SoftwareCharges = 0;
        }

        //business heads
        $ReportingManager = FETCH("SELECT * FROM user_employment_details where UserMainUserId='$RequestingUserId'", "UserEmpReportingMember");

        $BHSql = "SELECT * FROM users where UserId='$ReportingManager'";
        $BHEmpSql = "SELECT * FROM user_employment_details where UserMainUserId='$ReportingManager'";

        $row = [
            "$SerialNo",
            "" . $User->UserFullName . "",
            "" . $User->UserPhoneNumber . "",
            "" . $User->UserEmailId . "",
            "" . EMP_CODE . "-" . GET_DATA("user_employment_details", "UserEmpJoinedId", "UserMainUserId='" . $User->UserId . "'") . "",
            "" . FETCH($BHSql, "UserFullName") . " (" . FETCH($BHEmpSql, "UserEmpJoinedId") . ")" . "",
            "" . GET_DATA("user_employment_details", "UserEmpGroupName", "UserMainUserId='" . $User->UserId  . "'") . "",
            "" . GET_DATA("user_employment_details", "UserEmpType", "UserMainUserId='" . $User->UserId  . "'") . "",
            "" . UserLocation($User->UserId) . "",
            "" . UserPresents($VIEW_FOR_MONTH, $RequestingUserId) + UserMeetings($VIEW_FOR_MONTH, $RequestingUserId) + UserLateRecords($VIEW_FOR_MONTH, $RequestingUserId) + UserHalfDay($VIEW_FOR_MONTH, $RequestingUserId),
            "" . UserPresents($VIEW_FOR_MONTH, $RequestingUserId) . "",
            "" . UserAbsants($VIEW_FOR_MONTH, $RequestingUserId) . "",
            "" . UserLateRecords($VIEW_FOR_MONTH, $RequestingUserId) . "",
            "" . UserHalfDay($VIEW_FOR_MONTH, $RequestingUserId) . "",
            "" . UserLeaves($VIEW_FOR_MONTH, $RequestingUserId) . "",
            "" . UserMeetings($VIEW_FOR_MONTH, $RequestingUserId) . "",
            "" . UserShortLeaves($VIEW_FOR_MONTH, $RequestingUserId) . "",
            "" . $Type . "",
            "Rs." . $NetAllowance . "",
            "Rs." . $SoftwareCharges . "",
            "Rs." . $NetDeductions . "",
            "Rs." . $NetAllowance - $NetDeductions . "",
            "" . $VIEW_FOR_MONTH . "",
        ];
        array_push($data_rows, $row);
    }
}

array_push($data_rows, $row);

foreach ($data_rows as $data_row) {
    fputcsv($file, $data_row);
}

// Close the file
fclose($file);

header('Content-Type: application/csv');
header('Content-Disposition: attachment; filename="' . $filename . '"');
header('Pragma: no-cache');
readfile($path);
