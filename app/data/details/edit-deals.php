<?php
$Dir = "../../..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';


//pagevariables
$PageName = "Edit Deal Details";
$PageDescription = "Manage all Data";

if (isset($_GET['dealsid'])) {
    $_SESSION['REQ_LeadsId'] = SECURE($_GET['dealsid'], "d");
    $REQ_LeadsId = $_SESSION['REQ_LeadsId'];
} else {
    $REQ_LeadsId = $_SESSION['REQ_LeadsId'];
}
$PageSqls = "SELECT * FROM data where DataId='$REQ_LeadsId'";
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

            document.getElementById("all_leads").classList.add("active");
        }
        window.onload = SidebarActive;
    </script>
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <?php  ?>

        <?php
        include $Dir . "/include/app/Header.php";
        include $Dir . "/include/sidebar/get-side-menus.php"; ?>


        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card card-primary">
                                <div class="card-body">
                                    <form action="<?php echo CONTROLLER; ?>" method="POST">
                                        <?php FormPrimaryInputs(true, [
                                            "ManagedBy" => GET_DATA("data", "DataPersonManagedBy", "DataId='$REQ_LeadsId'")
                                        ]); ?>
                                        <div class="row">
                                            <div class="col-md-7">
                                                <h4 class="app-heading"><?php echo GET_DATA("data", "DataPersonFullname", "DataId='$REQ_LeadsId'"); ?> : <?php echo LEADID($REQ_LeadsId); ?></h4>
                                                <div class="row mb-2px">
                                                    <div class="form-group col-md-3">
                                                        <label>Salutation</label>
                                                        <select name="LeadSalutations" class="form-control">
                                                            <?php InputOptions(["Mr.", "Mrs.", "Miss.", "Ms.", "Dr.", "Prof.", "Sir"], GET_DATA("data", "DataSalutations", "DataId='$REQ_LeadsId'")); ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-9">
                                                        <label>Full Name</label>
                                                        <input type="text" name="LeadPersonFullname" value="<?php echo GET_DATA("data", "DataPersonFullname", "DataId='$REQ_LeadsId'"); ?>" list="LeadPersonFullname" class="form-control" placeholder="Gaurav Singh" required="">
                                                        <?php SUGGEST("data", "DataPersonFullname", "ASC") ?>
                                                    </div>
                                                </div>
                                                <div class="row mb-2px">
                                                    <div class="form-group col-md-5">
                                                        <label>Phone Number</label>
                                                        <input type="phone" name="LeadPersonPhoneNumber" value="<?php echo GET_DATA("data", "DataPersonPhoneNumber", "DataId='$REQ_LeadsId'"); ?>" list="LeadPersonPhoneNumber" placeholder="without +91" class="form-control" required="">
                                                        <?php SUGGEST("data", "DataPersonPhoneNumber", "ASC") ?>
                                                    </div>
                                                    <div class="form-group col-md-7">
                                                        <label>Email</label>
                                                        <input type="email" name="LeadPersonEmailId" value="<?php echo GET_DATA("data", "DataPersonEmailId", "DataId='$REQ_LeadsId'"); ?>" list="LeadPersonEmailId" class="form-control" placeholder="example@domain.tld">
                                                        <?php SUGGEST("data", "DataPersonEmailId", "ASC") ?>
                                                    </div>
                                                </div>
                                                <div class="row mb-2px">
                                                    <div class="form-group col-md-4">
                                                        <label>Lead Stage </label>
                                                        <select class="form-control" name="LeadPersonStatus">
                                                            <option value="">Select Stage</option>
                                                            <?php if (FETCH($PageSqls, "DataPersonStatus") == "FRESH DATA") {
                                                                $selected1 = "selected";
                                                            } else {
                                                                $selected1 = "";
                                                            } ?>
                                                            <option value="FRESH DATA" <?PHP echo $selected1; ?>>FRESH DATA</option>
                                                            <?php
                                                            $FetchCallStatus = _DB_COMMAND_("SELECT ConfigValueId, ConfigValueDetails FROM configs, config_values where configs.ConfigsId=config_values.ConfigValueGroupId and configs.ConfigGroupName='CALL_STATUS' ORDER BY ConfigValueId DESC", true);
                                                            if ($FetchCallStatus != null) {
                                                                foreach ($FetchCallStatus as $CallStatus) {
                                                                    if (FETCH($PageSqls, "DataPersonStatus") == $CallStatus->ConfigValueDetails) {
                                                                        $selected = "selected";
                                                                    } else {
                                                                        $selected = "";
                                                                    } ?>
                                                                    <option value="<?php echo $CallStatus->ConfigValueDetails; ?>" <?php echo $selected; ?>><?php echo $CallStatus->ConfigValueDetails; ?></option>
                                                            <?php
                                                                }
                                                            } ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-4">
                                                        <label>Lead Priority level </label>
                                                        <select class="form-control" name="LeadPriorityLevel">
                                                            <option value="">Select Priority</option>
                                                            <?php CONFIG_VALUES("LEAD_PERIORITY_LEVEL", FETCH($PageSqls, "DataPriorityLevel")); ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-4">
                                                        <label>Lead Source</label>

                                                        <select class="form-control" name="LeadPersonSource">
                                                            <option value="">Select Source</option>
                                                            <?php CONFIG_VALUES("LEAD_SOURCES", FETCH($PageSqls, "DataPersonSource")); ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row mb-2px">
                                                    <div class="form-group col-md-12">
                                                        <label>Address</label>
                                                        <textarea name="LeadPersonAddress" row="3" class="form-control" placeholder="Address"><?php echo GET_DATA("leads", "LeadPersonAddress", "LeadsId='$REQ_LeadsId'"); ?></textarea>
                                                    </div>
                                                </div>
                                                <?php if (LOGIN_UserType == "Admin") { ?>
                                                    <div class="row mb-2px">
                                                        <div class="form-group col-md-6">
                                                            <label>Lead Assigned To</label>
                                                            <select class="form-control" name="LeadPersonManagedBy">
                                                                <?php
                                                                $Users = _DB_COMMAND_("SELECT * FROM users ORDER BY UserFullName ASC", true);
                                                                foreach ($Users as $User) {
                                                                    if ($User->UserId == GET_DATA("data", "DataPersonManagedBy", "DataId='$REQ_LeadsId'")) {
                                                                        $selected = "selected";
                                                                    } else {
                                                                        $selected = "";
                                                                    }
                                                                    echo "<option value='" . $User->UserId . "' $selected>" . $User->UserFullName . " @ " . $User->UserPhoneNumber . "</option>";
                                                                }
                                                                ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                <?php } ?>
                                            </div>
                                            <!--======================================================= edit Residential commercial and agriculture leads=========================================================== -->
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label>Notes/Remarks</label>
                                            <textarea name="LeadPersonNotes" class="form-control" rows="3"><?php echo SECURE(GET_DATA("data", "DataPersonNotes", "DataId='$REQ_LeadsId'"), "d"); ?></textarea>
                                        </div>
                                        <div class="col-md-12 text-center">
                                            <a href="index.php" class="btn btn-sm btn-default mt-4" value="<?php echo SECURE($REQ_LeadsId, "e"); ?>"><i class="fa fa-angle-double-left"></i> Back To Details</a>
                                            <button class="btn btn-sm btn-success mt-4" name="UpdateData" value="<?php echo SECURE($REQ_LeadsId, "e"); ?>" TYPE="submit">Update Lead Details</button>
                                        </div>
                                </div>
                                </form>
                            </div>
                        </div>
                        <script>
                            function CheckCallStatus() {
                                var call_status = $("#call_status").val();
                                if (call_status == "FollowUp") {
                                    $("#call_reminder").removeClass("hidden");
                                } else {
                                    $("#call_reminder").addClass("hidden");
                                }
                            }
                        </script>
                        <script>
                            function GetExpireDate() {
                                var date = document.getElementById("purchasedate").value;
                                var period = document.getElementById("purchaseperiod").value;
                                var expire = new Date(date);
                                expire.setFullYear(expire.getFullYear() + parseInt(period));
                                document.getElementById("expiredate").value = expire.toISOString().substring(0, 10);
                            }

                            function DomainPreview() {
                                var domain = document.getElementById("domain").value;
                                document.getElementById("domain_preview").src = "https://www.whois.com/whois/" + domain;
                            }
                        </script>
                    </div>
                </div>
        </div>
        </section>
    </div>

    <?php
    include $Dir . "/include/app/Footer.php"; ?>
    </div>

    <?php include $Dir . "/assets/FooterFiles.php"; ?>

</body>

</html>