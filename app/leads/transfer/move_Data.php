<?php
$Dir = "../../..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';


//pagevariables
$PageName = "Transfer Data";
$PageDescription = "Manage all customers";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title><?php echo $PageName; ?> | <?php echo APP_NAME; ?></title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
    <meta name="keywords" content="<?php echo APP_NAME; ?>">
    <meta name="description" content="<?php echo SECURE(SHORT_DESCRIPTION, "d"); ?>">
    <?php include $Dir . "/assets/HeaderFiles.php"; ?>
    <script type="text/javascript">
        function SidebarActive() {
            document.getElementById("customers").classList.add("active");
        }
        window.onload = SidebarActive;
    </script>
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <?php

        include $Dir . "/include/app/Header.php";
        include $Dir . "/include/sidebar/get-side-menus.php";
        include $Dir . "/include/app/Loader.php"; ?>


        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card card-primary">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <a href="index.php" class="flex-s-b btn btn-sm btn-default btn-block">
                                                <span class="fs-15">Move Leads</span>
                                            </a>
                                        </div>
                                        <div class="col-md-6">
                                            <a href="move_Data.php" class="flex-s-b btn btn-sm btn-primary btn-block">
                                                <span class="fs-15">Move Data</span>
                                            </a>
                                        </div>
                                    </div>

                                    <div class="row mt-4">
                                        <div class="col-md-2">
                                            <form action="" method="GET">
                                                <input type="hidden" name="GetDataFrom" value="true">
                                                <h5 class="app-sub-heading">Fetch Leads From</h5>
                                                <div class="row">
                                                    <div class="form-group col-md-12 mb-2">
                                                        <label>Fetch Leads From</label>
                                                        <select class="form-control" name="FromData" onchange="form.submit()">
                                                            <option value="">Select User</option>
                                                            <?php
                                                            $Users = _DB_COMMAND_("SELECT * FROM users ORDER BY UserFullName ASC", true);
                                                            foreach ($Users as $User) {
                                                                if ($User->UserId == IfRequested("GET", "FromData", "", false)) {
                                                                    $selected = "selected";
                                                                } else {
                                                                    $selected = "";
                                                                }
                                                                echo "<option value='" . $User->UserId . "' $selected>" . $User->UserFullName . " @ " . $User->UserPhoneNumber . " - " . FETCH("SELECT * FROM user_employment_details where UserMainUserId='" . $User->UserId . "'", "UserEmpGroupName") . "</option>";
                                                            }
                                                            ?>
                                                        </select>
                                                    </div>
                                                    <input type="text" hidden id="leascurrentstatus" name="DataPersonSubStatus" value="">
                                                    <input type="text" hidden id="leasstatus" name="DataPersonStatus" value="">
                                                    <div class="col-md-12 col-6 mb-1">
                                                        <select class="form-control " id="statustype" onchange="CallStatusFunction()">
                                                            <option value="">Select Lead Status</option>
                                                            <option value="FRESH DATA">FRESH DATA</option>
                                                            <?php
                                                            $FetchCallStatus = _DB_COMMAND_("SELECT * FROM configs, config_values where configs.ConfigsId=config_values.ConfigValueGroupId and configs.ConfigGroupName='CALL_STATUS' ORDER BY ConfigValueId DESC", true);
                                                            if ($FetchCallStatus != null) {
                                                                foreach ($FetchCallStatus as $CallStatus) { ?>
                                                                    <option value="<?php echo $CallStatus->ConfigValueId; ?>"><?php echo $CallStatus->ConfigValueDetails; ?></option>
                                                            <?php
                                                                }
                                                            } ?>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-12 col-6 mb-1">
                                                        <?php
                                                        $FetchCallStatus = _DB_COMMAND_(CONFIG_DATA_SQL("CALL_STATUS"), true);
                                                        if ($FetchCallStatus != null) {
                                                            foreach ($FetchCallStatus as $Status) {
                                                                if ($Status->ConfigValueId == "50") {
                                                                    $display = "block";
                                                                } else {
                                                                    $display = "none";
                                                                } ?>
                                                                <select onchange="GetValue_<?php echo $Status->ConfigValueId; ?>()" class="form-control " id="view_<?php echo $Status->ConfigValueId; ?>" style="display:<?php echo $display; ?>;">
                                                                    <option value="0">Select Call Status</option>
                                                                    <?php
                                                                    $FetchCallStatus = _DB_COMMAND_("SELECT * FROM configs, config_values where config_values.ConfigReferenceId='" . $Status->ConfigValueId . "' and configs.ConfigsId=config_values.ConfigValueGroupId and configs.ConfigGroupName='CALL_STATUS_SUB_FIELDS'", true);
                                                                    if ($FetchCallStatus != null) {
                                                                        foreach ($FetchCallStatus as $CallStatus) { ?>
                                                                            <option value="<?php echo $CallStatus->ConfigValueDetails; ?>"><?php echo $CallStatus->ConfigValueDetails; ?></option>
                                                                    <?php
                                                                        }
                                                                    } ?>
                                                                </select>
                                                                <script>
                                                                    function GetValue_<?php echo $Status->ConfigValueId; ?>() {
                                                                        var leascurrentstatus = document.getElementById("leascurrentstatus")
                                                                        leascurrentstatus.value = document.getElementById("view_<?php echo $Status->ConfigValueId; ?>").value;
                                                                    }
                                                                </script>
                                                        <?php
                                                            }
                                                        } ?>
                                                    </div>
                                                    <div class="col-md-12 col-6">
                                                        <input type="text" value="" name="DataPriorityLevel" list="DataPriorityLevel" class="form-control " placeholder="Priority Level">
                                                        <?php SUGGEST("data", "DataPriorityLevel", "ASC"); ?>
                                                    </div>
                                                    <div class="col-md-12 col-6">
                                                        <input type="text" value="" name="DataPersonSource" list="DataPersonSource" class="form-control " placeholder="Lead Source">
                                                        <?php SUGGEST("data", "DataPersonSource", "ASC"); ?>
                                                    </div>
                                                </div>
                                                <div class="mt-2">
                                                    <button type="submit" name="GetDataFrom" value="true" class="btn btn-md btn-dark"><i class="fa fa-refresh"></i> Fetch leads</button>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="col-md-7">
                                            <h5 class="app-sub-heading">Available Leads</h5>
                                            <?php
                                            if (isset($_GET['GetDataFrom'])) {
                                                $GetLeadsFrom = $_GET['GetDataFrom'];
                                                $From = $_GET['FromData'];
                                                $LeadPersonSubStatus = $_GET['DataPersonSubStatus'];
                                                $LeadPersonStatus = $_GET['DataPersonStatus'];
                                                $LeadPriorityLevel = $_GET['DataPriorityLevel'];
                                                $LeadPersonSource = $_GET['DataPersonSource'];
                                            } else {
                                                $GetLeadsFrom = '';
                                                $From = '';
                                                $LeadPersonSubStatus = '';
                                                $LeadPersonStatus = '';
                                                $LeadPriorityLevel = '';
                                                $LeadPersonSource = '';
                                            }
                                            ?>
                                            <form>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="flex-s-b">
                                                            <div class="form-group w-100">
                                                                <input type="text" name="GetDataFrom" hidden value="<?php echo IfRequested("GET", "GetDataFrom", "", false); ?>">
                                                                <input type="text" name="FromData" hidden value="<?php echo IfRequested("GET", "FromData", "", false); ?>">
                                                                <input type="text" name="DataPersonSubStatus" hidden value="<?php echo IfRequested("GET", "DataPersonSubStatus", "", false); ?>">
                                                                <input type="text" name="DataPersonStatus" hidden value="<?php echo IfRequested("GET", "DataPersonStatus", "", false); ?>">
                                                                <input type="text" name="DataPriorityLevel" hidden value="<?php echo IfRequested("GET", "DataPriorityLevel", "", false); ?>">
                                                                <input type="text" name="DataPersonSource" hidden value="<?php echo IfRequested("GET", "DataPersonSource", "", false); ?>">
                                                                <label>Search Person</label>
                                                                <input type="search" oninput="SearchData('searching_leads', 'lead-lists')" id='searching_leads' placeholder="Enter Full Name" value='<?php echo IfRequested("GET", "search_leads", "", false); ?>' class="form-control " list="LeadPersonFullname" name="search_leads" onchange="form.submit()">
                                                                <?php SQL_SUGGEST("SELECT * FROM data where DataPersonManagedBy='$From' ORDER BY DataPersonFullname ASC", "DataPersonFullname"); ?>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                            <?php
                                            //get lead data
                                            if (isset($_GET['search_leads'])) {
                                                $search_leads = $_GET['search_leads'];
                                                $CountTotalLeads = TOTAL("SELECT DataId FROM data WHERE DataPersonFullname like '%$search_leads%' and DataPersonManagedBy='$From'  GROUP BY DataId ORDER by DataId DESC");
                                            } else {
                                                $CountTotalLeads = TOTAL("SELECT DataId FROM data WHERE DataPersonManagedBy='$From' and DataPersonSource like '%$LeadPersonSource%' and DataPriorityLevel like '%$LeadPriorityLevel%' and DataPersonSubStatus like '%$LeadPersonSubStatus%' and DataPersonStatus LIKE '%$LeadPersonStatus%' GROUP BY DataId ORDER by DataId DESC");
                                            }
                                            $TotalItems = $CountTotalLeads;

                                            $start = START_FROM;
                                            $listcounts = DEFAULT_RECORD_LISTING;

                                            if (isset($_GET['search_leads'])) {
                                                $search_leads = $_GET['search_leads'];
                                                $GetLeads = _DB_COMMAND_("SELECT *  FROM data WHERE DataPersonFullname like '%$search_leads%' and DataPersonManagedBy='$From' GROUP BY DataId ORDER by DataId DESC", true);
                                            } else {
                                                $GetLeads = _DB_COMMAND_("SELECT DataPersonPhoneNumber, DataPriorityLevel, DataPersonSource, DataPersonManagedBy, DataSalutations, DataPersonFullname, DataPersonStatus, DataId, DataPersonCreatedBy  FROM data WHERE DataPersonManagedBy='$From' and DataPersonSource like '%$LeadPersonSource%' and DataPriorityLevel like '%$LeadPriorityLevel%' and DataPersonSubStatus like '%$LeadPersonSubStatus%' and DataPersonStatus LIKE '%$LeadPersonStatus%' GROUP BY DataId ORDER by DataId DESC", true);
                                            }
                                            $Count = SERIAL_NO;
                                            ?>
                                            <form action="<?php echo CONTROLLER; ?>" method="POST">
                                                <?php FormPrimaryInputs(true, [
                                                    "FromData" => IfRequested("GET", "FromData", "", false),
                                                    "DataPersonSubStatus" => IfRequested("GET", "DataPersonSubStatus", "", false),
                                                    "DataPersonStatus" => IfRequested("GET", "DataPersonStatus", "", false),
                                                    "DataPriorityLevel" => IfRequested("GET", "DataPriorityLevel", "", false),
                                                    "DataPersonSource" => IfRequested("GET", "DataPersonSource", "", false)
                                                ]); ?>
                                                <?php
                                                if ($GetLeads == null) {
                                                    NoData("No Data Found!");
                                                } else {
                                                    echo "
                          <h6 class='mb-2 mt-0 ml-2 bold'>
                          Select leads for move : <b class='text-danger'>Total <b>$CountTotalLeads</b> Data found!</b>
                          </h6>
                          <div class='row'>";
                                                    foreach ($GetLeads as $leads) {
                                                        $Count++;
                                                        $LeadPersonCreatedBy = $leads->DataPersonCreatedBy;
                                                        $LeadsId = $leads->DataId;
                                                        $FollowUpsSQL = "SELECT DataFollowUpDate, DataFollowUpTime FROM data_lead_followups where DataFollowMainId='$LeadsId'";
                                                        $LeadFollowUpDate = FETCH($FollowUpsSQL, "DataFollowUpDate");
                                                        $LeadFollowUpTime = FETCH($FollowUpsSQL, "DataFollowUpTime");
                                                        $lead_requirements = CHECK("SELECT * FROM data_lead_requirements where DataMainId='$LeadsId'");
                                                        include "../../../include/common/send-data-list.php";
                                                    }
                                                    echo "</div>";
                                                }
                                                ?>
                                        </div>
                                        <div class="col-md-3">
                                            <h5 class="app-sub-heading">Move Leads In</h5>
                                            <?php if (isset($_GET['GetDataFrom'])) { ?>
                                                <div class="form-group">
                                                    <label>Move Leads From</label>
                                                    <?php echo GetUserDetails($From); ?>
                                                </div>
                                                <div class="form-group">
                                                    <label>Move Leads In</label>
                                                    <select class="form-control " name="DataPersonManagedBy">
                                                        <?php
                                                        $Users = _DB_COMMAND_("SELECT * FROM users where UserStatus='1' ORDER BY UserFullName ASC", true);
                                                        foreach ($Users as $User) {
                                                            if ($User->UserId == LOGIN_UserId) {
                                                                $selected = "selected";
                                                            } else {
                                                                $selected = "";
                                                            }
                                                            echo "<option value='" . $User->UserId . "' $selected>" . $User->UserFullName . " @ " . $User->UserPhoneNumber . " - " . FETCH("SELECT * FROM user_employment_details where UserMainUserId='" . $User->UserId . "'", "UserEmpGroupName") . "</option>";
                                                        }
                                                        ?>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label>Bulk Number of leads</label>
                                                    <input type='number' name='NumberOfLeads' value='0' class='form-control form-control-sm' min='0' max='<?php echo $TotalItems + 1; ?>'>
                                                </div>
                                                <div class="form-group">
                                                    <label>Order Of Selection</label>
                                                    <select name='OrderOfSelection' class='form-control form-control-sm'>
                                                        <option value='DESC'>Order of Selection</option>
                                                        <option value='ASC'>Old Leads</option>
                                                        <option value='DESC' selected>New Leads</option>
                                                    </select>
                                                </div>
                                                <input type="text" hidden id="leascurrentstatus2" name="DataPersonSubStatus" value="">
                                                <input type="text" hidden id="leasstatus2" name="DataPersonStatus" value="">
                                                <div class="form-group">
                                                    <label>Lead Main Status</label>
                                                    <select class="form-control " name="DataFollowStatus" id="statustype_2" onchange="CallStatusFunction_2()">
                                                        <option value="">All Status</option>
                                                        <option value="FRESH DATA">FRESH DATA</option>
                                                        <?php
                                                        $FetchCallStatus = _DB_COMMAND_("SELECT * FROM configs, config_values where configs.ConfigsId=config_values.ConfigValueGroupId and configs.ConfigGroupName='CALL_STATUS' ORDER BY ConfigValueId DESC", true);
                                                        if ($FetchCallStatus != null) {
                                                            foreach ($FetchCallStatus as $CallStatus) { ?>
                                                                <option value="<?php echo $CallStatus->ConfigValueId; ?>"><?php echo $CallStatus->ConfigValueDetails; ?></option>
                                                        <?php
                                                            }
                                                        } ?>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label>Lead Sub Status</label>
                                                    <?php
                                                    $FetchCallStatus = _DB_COMMAND_(CONFIG_DATA_SQL("CALL_STATUS"), true);
                                                    if ($FetchCallStatus != null) {
                                                        foreach ($FetchCallStatus as $Status) {
                                                            if ($Status->ConfigValueId == "50") {
                                                                $display = "block";
                                                            } else {
                                                                $display = "none";
                                                            } ?>
                                                            <select onchange="GetValue_<?php echo $Status->ConfigValueId; ?>_2()" class="form-control " id="view_<?php echo $Status->ConfigValueId; ?>_2" style="display:<?php echo $display; ?>;">
                                                                <option value="">All Sub Status</option>
                                                                <?php
                                                                $FetchCallStatus = _DB_COMMAND_("SELECT * FROM configs, config_values where config_values.ConfigReferenceId='" . $Status->ConfigValueId . "' and configs.ConfigsId=config_values.ConfigValueGroupId and configs.ConfigGroupName='CALL_STATUS_SUB_FIELDS'", true);
                                                                if ($FetchCallStatus != null) {
                                                                    foreach ($FetchCallStatus as $CallStatus) { ?>
                                                                        <option value="<?php echo $CallStatus->ConfigValueDetails; ?>"><?php echo $CallStatus->ConfigValueDetails; ?></option>
                                                                <?php
                                                                    }
                                                                } ?>
                                                            </select>
                                                            <script>
                                                                function GetValue_<?php echo $Status->ConfigValueId; ?>_2() {
                                                                    var leascurrentstatus = document.getElementById("leascurrentstatus_2")
                                                                    leascurrentstatus.value = document.getElementById("view_<?php echo $Status->ConfigValueId; ?>_2").value;
                                                                }
                                                            </script>
                                                    <?php
                                                        }
                                                    } ?>
                                                </div>
                                                <div class="mt-2">
                                                    <button type="submit" onclick="form.submit()" name="MoveData" class="btn btn-md btn-success"> Move Data <i class="fa fa-exchange"></i></button>
                                                </div>
                                            <?php } else { ?>
                                                <p>Please fetch some Data firsts..</p>
                                            <?php } ?>
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>
        </div>
        <?php
        include $Dir . "/include/app/Footer.php"; ?>
    </div>
    <script>
        function CallStatusFunction() {
            var statustype = document.getElementById("statustype");
            <?php
            $FetchCallStatus = _DB_COMMAND_("SELECT * FROM configs, config_values where configs.ConfigsId=config_values.ConfigValueGroupId and configs.ConfigGroupName='CALL_STATUS' ORDER BY ConfigValueId DESC", true);
            if ($FetchCallStatus != null) {
                foreach ($FetchCallStatus as $CallStatus) { ?>
                    if (statustype.value == <?php echo $CallStatus->ConfigValueId; ?>) {
                        document.getElementById("view_<?php echo $CallStatus->ConfigValueId; ?>").style.display = "block";
                        document.getElementById("leasstatus").value = "<?php echo $CallStatus->ConfigValueDetails; ?>";
                    } else {
                        document.getElementById("view_<?php echo $CallStatus->ConfigValueId; ?>").style.display = "none";
                    }
            <?php }
            } ?>
        }
    </script>
    <script>
        function CallStatusFunction_2() {
            var statustype = document.getElementById("statustype_2");
            <?php
            $FetchCallStatus = _DB_COMMAND_("SELECT * FROM configs, config_values where configs.ConfigsId=config_values.ConfigValueGroupId and configs.ConfigGroupName='CALL_STATUS' ORDER BY ConfigValueId DESC", true);
            if ($FetchCallStatus != null) {
                foreach ($FetchCallStatus as $CallStatus) { ?>
                    if (statustype.value == <?php echo $CallStatus->ConfigValueId; ?>) {
                        document.getElementById("view_<?php echo $CallStatus->ConfigValueId; ?>_2").style.display = "block";
                        document.getElementById("leasstatus2").value = "<?php echo $CallStatus->ConfigValueDetails; ?>";
                    } else {
                        document.getElementById("view_<?php echo $CallStatus->ConfigValueId; ?>_2").style.display = "none";
                    }
            <?php }
            } ?>
        }
    </script>
    <?php include $Dir . "/assets/FooterFiles.php"; ?>
</body>

</html>