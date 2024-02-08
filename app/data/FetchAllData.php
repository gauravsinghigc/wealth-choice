<?php
$Dir = "../..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';

$Lead_Sql = $_POST['Lead_Sql'];
$TotalItems = $_POST['TotalLeads'];
$listcounts = $_POST['ListCount'];
$page = $_POST['view_page'];
$start = ($page - 1) * $listcounts;
$next_page = ($page + 1);
$previous_page = ($page - 1);
if (isset($_POST['CurrentUrl'])) {
    $currenturl = $_POST['CurrentUrl'];
} else {
    $currenturl = "";
}
// $Getleads = _DB_COMMAND_("SELECT * FROM leads WHERE CompanyID='" . CompanyId . "' ORDER BY LeadsId DESC LIMIT $start, $listcounts", true);
$GetLeads = _DB_COMMAND_($Lead_Sql . "  LIMIT $start, $listcounts", true);

if ($GetLeads == null) { ?>
    <div class="col-md-12">
        <div class="card card-body border-0 shadow-sm">
            <div class="text-left">
                <h1><i class="fa fa-globe fa-spin display-4 text-success"></i></h1>
                <h4 class="text-muted">No Data found</h4>
            </div>
        </div>
    </div>
    <?php
} else {
    if ($page == 1 || $page == 0) {
        $Count = 0;
    } else {
        $Count = ($page - 1) * $listcounts;
    }
    foreach ($GetLeads as $leads) {
        $Count++;
        $LeadPersonCreatedBy = $leads->DataPersonCreatedBy;
        $LeadsId = $leads->DataId;
        if ($leads->DataPriorityLevel == "HIGH") {
            $Priority = '<i class="fa fa-flag text-success" aria-hidden="true"></i>';
        } elseif ($leads->DataPriorityLevel == "MEDIUM") {
            $Priority = '<i class="fa fa-flag text-info" aria-hidden="true"></i>';
        } elseif ($leads->DataPriorityLevel == "LOW") {
            $Priority = '<i class="fa fa-flag text-warning" aria-hidden="true"></i>';
        } else {
            $Priority = '<i class="fa fa-flag text-dark" aria-hidden="true"></i>';
        }
        if ($leads->DataPersonStatus == "Follow Up") {
            $dot = '<i class="fa fa-circle fs-10 text-danger" aria-hidden="true"></i>';
        } elseif ($leads->DataPersonStatus == "FRESH DATA" || $leads->DataPersonStatus == "FRESH LEAD" || $leads->DataPersonStatus == "Fresh Lead") {
            $dot = '<i class="fa fa-circle fs-10 text-success" aria-hidden="true"></i>';
        } else {
            $dot = '<i class="fa fa-circle fs-10 text-info" aria-hidden="true"></i>';
        }
        $FollowUpsSQL = "SELECT DataFollowUpDate, DataFollowUpTime  FROM data_lead_followups where DataFollowMainId='$LeadsId'";
        $LeadFollowUpDate = FETCH($FollowUpsSQL, "DataFollowUpDate");
        $LeadFollowUpTime = FETCH($FollowUpsSQL, "DataFollowUpTime");
        $LeadPersonManagebyName = FETCH("SELECT UserFullName FROM users WHERE UserId='$leads->DataPersonManagedBy'", "UserFullName");
        $lead_requirements = CHECK("SELECT * FROM data_lead_requirements where DataMainId='$LeadsId'");
        $LeadPersonManagebyUserStatus = FETCH("SELECT UserStatus FROM users WHERE UserId='$leads->DataPersonManagedBy'", "UserStatus");
        if ($LeadPersonManagebyUserStatus == "1") {
            $status = "<span class='text-success'><i class='fa fa-check-circle'></i></span>";
        } else {
            $status = "<span class='text-danger'><i class='fa fa-warning'></i></span>";
        }
    ?>
        <?php if (DEVICE_TYPE == "COMPUTER") { ?>
            <div class="col-md-12">
                <div class="p-0 data-list flex-s-b align-items-center bg-light  new-outline">
                    <div class="w-pr-5">
                        <span class=""><?php echo $Count; ?></span>
                    </div>
                    <div class="w-pr-25 ">
                        <span class="d-flex justify-content-start align-items-center w-100">
                            <span class="fs-15" style="width: 10% !important;"><?php echo $Priority; ?></span>
                            <span class="w-75">
                                <a class="w-100 text-primary" href="details/index.php?DataId=<?php echo SECURE($leads->DataId, "e"); ?>">
                                    <span class=" ml-1 bold"> <?php echo $leads->DataSalutations; ?>
                                        <?php echo LimitText($leads->DataPersonFullname, 0, 22); ?></span><br>
                                    <?php $projectId = FETCH("SELECT DataRequirementDetails FROM data_lead_requirements WHERE DataMainId='$LeadsId'", "DataRequirementDetails");

                                    if ($projectId  == null) {
                                        echo "<span class='text-gray fs-10 '>
                                                                <i class='fa fa-hashtag'></i>No Requirement
                                                                </span>";
                                    } else {
                                        $ProjectName = FETCH("SELECT * FROM projects WHERE ProjectsId='$projectId'", "ProjectName");
                                        echo "<span class='text-gray fs-10'>
                                                                <i class='fa fa-hashtag'></i>" . $ProjectName . "
                                                                </span>";
                                    } ?>
                                </a>
                            </span>
                        </span>
                    </div>
                    <div class="w-pr-15 ">
                        <span class=""><?php
                                        if ($leads->DataPersonPhoneNumber == null) {
                                            echo "No-Phone";
                                        } else {
                                            echo $leads->DataPersonPhoneNumber;
                                        } ?></span>
                    </div>

                    <div class="w-pr-10 ">
                        <span class="btn btn-default btn-xs cursor-default "><?php echo $dot . " " . $leads->DataPersonStatus; ?></span>
                    </div>
                    <div class="w-pr-10 ">
                        <span class="btn btn-default btn-xs cursor-default"> <?php if ($leads->DataPersonSource == null) {
                                                                                    echo "No Source Found!";
                                                                                } else {
                                                                                    echo $leads->DataPersonSource;
                                                                                } ?></span>
                    </div>
                    <div class="w-pr-10 ">
                        <span class=""><?php echo DATE_FORMATES("d M, Y", $leads->DataPersonCreatedAt); ?></span>
                    </div>
                    <div class="w-pr-10 ">
                        <span class="btn btn-default btn-xs m-1 cursor-default"> <?php echo $status . " " . $LeadPersonManagebyName; ?></span>
                    </div>
                    <div class="w-pr-15 ">
                        <span class="d-flex justify-content-around">
                            <span class='w-100 text-center'>
                                <a href='tel:<?php echo $leads->DataPersonPhoneNumber; ?>' class='btn btn-md btn-default'> <i class='fa fa-phone text-success h5'></i><br></a>
                            </span>
                            <span class='w-100 text-center'>
                                <a href='#' onmouseover="GetInstantTime('displayTime_<?php echo $LeadsId; ?>', 'value')" onclick="Databar('Lead_Update_<?php echo $LeadsId; ?>')" class='btn btn-md btn-default'><i class="fa fa-comments text-info" aria-hidden="true"></i></a>
                            </span>
                            <span class='w-100 text-center'>
                                <div class='btn btn-md btn-default popup-btn'><i class="fa fa-ellipsis-h" aria-hidden="true"></i></div>
                                <div class="popup">
                                    <div class=" text-center text-info "> <i class='fa fa-user'></i>
                                        <?php echo $leads->DataSalutations . " " . $leads->DataPersonFullname; ?>
                                    </div>
                                    <hr class="mt-0">
                                    <div class="flex-s-b w-100">
                                        <span class="w-pr-50">
                                            <span class="text-gray"><i class='fa fa-phone text-success h6'></i> <b><?php echo TOTAL("SELECT DataFollowUpId FROM data_lead_followups WHERE DataFollowMainId='$LeadsId'"); ?></b> Calls </span>
                                        </span>
                                        <span class="w-pr-50">
                                            <span class="text-gray"> <i class='fa fa-refresh text-danger h6'></i> <b><?php echo TOTAL("SELECT DataFollowStatus FROM data_lead_followups where DataFollowMainId='$LeadsId' and DataFollowStatus like '%Follow%'"); ?></b> Follow ups <b></b></span>
                                        </span>
                                    </div>
                                    <div class="w-100">
                                        <span class='text-small bold text-left w-pr-100'>Last Feedback</span>
                                        <hr class="mt-0 mb-0 ">
                                        <span class="text-justify w-100  fs-10">
                                            <?php
                                            $LastFeedback = FETCH("SELECT DataFollowUpDescriptions from data_lead_followups WHERE DataFollowMainId='$LeadsId' ORDER BY DataFollowUpId DESC limit 1", "DataFollowUpDescriptions");
                                            if ($LastFeedback == null) {
                                                echo "No feedback";
                                            } else {
                                                echo $LastFeedback;
                                            } ?>
                                        </span>
                                    </div>
                                </div>
                            </span>
                        </span>
                    </div>
                </div>
            </div>

        <?php } else { ?>
            <div class='col-md-4 col-12 col-xs-6'>
                <div class="data-list" style="line-height:1rem !important;">
                    <div class='flex-s-b'>
                        <div class='w-pr-100'>
                            <div class="p-1">
                                <h6 class='mb-0' style='font-size:1.1rem !important;'>
                                    <a class="w-100 text-primary" href="details/index.php?LeadsId=<?php echo SECURE($leads->DataId, "e"); ?>">
                                        <?php echo $leads->DataSalutations; ?>
                                        <?php echo LimitText($leads->DataPersonFullname, 0, 25); ?>
                                    </a>
                                </h6>
                                <span class='btn btn-xs btn-warning fs-10'>
                                    <i class='fa fa-hashtag'></i>
                                    <?php
                                    $ProjectId = FETCH("SELECT DataRequirementDetails FROM data_lead_requirements WHERE DataMainId='$LeadsId'", "DataRequirementDetails");
                                    $ProjectName = FETCH("SELECT ProjectName FROM projects where ProjectsId='$ProjectId'", "ProjectName");
                                    if ($ProjectId == null) {
                                        echo "No Requirement";
                                    } else {
                                        echo $ProjectName;
                                    }; ?>
                                </span><br>
                                <div class='flex-s-b lead-action mt-1'>
                                    <a href="tel:<?php echo $leads->DataPersonPhoneNumber; ?>" class='btn call btn-md btn-default small w-30'><i class='fa fa-phone'></i> Call</a>
                                    <a href="whatsapp://send?phone=91<?php echo $leads->DataPersonPhoneNumber; ?>&text=Hey <?php echo $leads->DataPersonFullname; ?>" class='btn chat btn-md btn-default small w-30'><i class='fa fa-whatsapp'></i> Whatsapp</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w-100">
                        <span class='text-grey small'>Last Feedbacks</span><br>
                        <?php
                        $LastFeedback = FETCH("SELECT DataFollowUpDescriptions from data_lead_followups WHERE DataFollowMainId='$LeadsId' ORDER BY DataFollowUpId DESC limit 1", "DataFollowUpDescriptions");
                        if ($LastFeedback == null) {
                            echo "No feedback";
                        } else {
                            echo $LastFeedback;
                        } ?>
                    </div>
                    <div>
                        <span class="flex-s-b p-1">
                            <span class='w-100 text-center p-1'>
                                <i class='fa fa-phone text-success' style='font-size:1.5rem !important;'></i><br>
                                <small><?php echo TOTAL("SELECT DataFollowUpId FROM data_lead_followups where DataFollowMainId='$LeadsId'"); ?></small>
                            </span>
                            <span class='w-100 text-center p-1'>
                                <i class='fa fa-clock text-warning' style='font-size:1.5rem !important;'></i><br>
                                <small>
                                    <?php
                                    $GetLeadsSeconds = GetLeadsCallDurations($LeadsId);
                                    $CallDurations = GetDurations($GetLeadsSeconds);
                                    echo $CallDurations; ?>
                                </small>
                            </span>
                            <span class='w-100 text-center p-1'>
                                <i class='fa fa-refresh text-danger' style='font-size:1.5rem !important;'></i><br>
                                <small>
                                    <?php
                                    echo TOTAL("SELECT DataFollowStatus FROM data_lead_followups where DataFollowMainId='$LeadsId' and DataFollowStatus like '%Follow%'");
                                    ?> followups
                                </small>
                            </span>
                            <span class='w-100 text-center p-1'>
                                <a href='#' onmouseover="GetInstantTime('displayTime_<?php echo $LeadsId; ?>', 'value')" onclick="Databar('Lead_Update_<?php echo $LeadsId; ?>')" class='btn btn-md btn-default'><i class='fa fa-plus'></i></a>
                            </span>
                        </span>
                    </div>
                </div>
            </div>
        <?php }
        include $Dir . "/include/forms/Add-Data-Instant-Feedback.php"; ?>
<?php  }
} ?>