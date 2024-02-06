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
if (DEVICE_TYPE == "Mobile") {
    $flex = "";
} else {
    $flex = "flex-s-b";
}
$GetLeads = _DB_COMMAND_($Lead_Sql . "  LIMIT $start, $listcounts", true);

if ($GetLeads == null) { ?>
    <div class="col-md-12">
        <div class="card card-body border-0 shadow-sm">
            <div class="text-left">
                <h1><i class="fa fa-globe fa-spin display-4 text-success"></i></h1>
                <h4 class="text-muted">No Leads found</h4>
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
        $LeadPersonCreatedBy = $leads->LeadPersonCreatedBy;
        $LeadsId = $leads->LeadsId;
        if ($leads->LeadPriorityLevel == "HIGH") {
            $Priority = '<i class="fa fa-flag text-success" aria-hidden="true"></i>';
        } elseif ($leads->LeadPriorityLevel == "MEDIUM") {
            $Priority = '<i class="fa fa-flag text-info" aria-hidden="true"></i>';
        } elseif ($leads->LeadPriorityLevel == "LOW") {
            $Priority = '<i class="fa fa-flag text-warning" aria-hidden="true"></i>';
        } else {
            $Priority = '<i class="fa fa-flag text-dark" aria-hidden="true"></i>';
        }
        if ($leads->LeadPersonStatus == "Follow Up") {
            $dot = '<i class="fa fa-circle fs-10 text-danger" aria-hidden="true"></i>';
        } elseif ($leads->LeadPersonStatus == "FRESH LEAD" || $leads->LeadPersonStatus == "Fresh Leads") {
            $dot = '<i class="fa fa-circle fs-10 text-success" aria-hidden="true"></i>';
        } else {
            $dot = '<i class="fa fa-circle fs-10 text-info" aria-hidden="true"></i>';
        }
        $FollowUpsSQL = "SELECT LeadFollowUpDate, LeadFollowUpTime  FROM lead_followups where LeadFollowMainId='$LeadsId'";
        $LeadFollowUpDate = FETCH($FollowUpsSQL, "LeadFollowUpDate");
        $LeadFollowUpTime = FETCH($FollowUpsSQL, "LeadFollowUpTime");
        $LeadPersonManagebyName = FETCH("SELECT UserFullName FROM users WHERE UserId='$leads->LeadPersonManagedBy'", "UserFullName");
        $lead_requirements = CHECK("SELECT * FROM data_lead_requirements where DataMainId='$LeadsId'");
        $LeadPersonManagebyUserStatus = FETCH("SELECT UserStatus FROM users WHERE UserId='$leads->LeadPersonManagedBy'", "UserStatus");
        if ($LeadPersonManagebyUserStatus == "1") {
            $status = "<span class='text-success'><i class='fa fa-check-circle'></i></span>";
        } else {
            $status = "<span class='text-danger'><i class='fa fa-warning'></i></span>";
        }
        // get the residential ,commercial and agriculture leads
        $ResidentialLead = "SELECT LeadMinimumBudget, LeadMaximumBudget, LeadRequiredPeriod, LeadPurchasePurpose FROM residential_leads where LeadMainId='$LeadsId'";
        $Residential = CHECK($ResidentialLead);
        $CommercialLead = "SELECT LeadMinimumBudget, LeadMaximumBudget, RequiredPeriod, PurchasePurpose FROM commercial_leads where LeadMainId='$LeadsId'";
        $Commercial = CHECK($CommercialLead);
        $AgricultureLead = "SELECT LandPrice, RequiredPeriod, PurchasePurpose FROM agriculture_leads where LeadMainId='$LeadsId'";
        $Agriculture = CHECK($AgricultureLead);

        if ($Residential != null) {
            $MinimumBudget = FETCH($ResidentialLead, "LeadMinimumBudget");
            $MaximumBudget = FETCH($ResidentialLead, "LeadMaximumBudget");
            $Budget = '<i class="fa-solid fa-indian-rupee-sign"></i> ' . $MinimumBudget . ' -  <i class="fa-solid fa-indian-rupee-sign"></i> ' . $MaximumBudget;
            $RequiredPeriod = FETCH($ResidentialLead, "LeadRequiredPeriod");
            $Purpose = FETCH($ResidentialLead, "LeadPurchasePurpose");
        } elseif ($Commercial != null) {
            $MinimumBudget = FETCH($CommercialLead, "LeadMinimumBudget");
            $MaximumBudget = FETCH($CommercialLead, "LeadMaximumBudget");
            $Budget = '<i class="fa-solid fa-indian-rupee-sign"></i> ' . $MinimumBudget . ' -  <i class="fa-solid fa-indian-rupee-sign"></i> ' . $MaximumBudget;
            $RequiredPeriod = FETCH($CommercialLead, "RequiredPeriod");
            $Purpose = FETCH($CommercialLead, "PurchasePurpose");
        } elseif ($Agriculture != null) {
            $Budget = '<i class="fa-solid fa-indian-rupee-sign"></i> ' . FETCH($AgricultureLead, "LandPrice");
            $RequiredPeriod = FETCH($AgricultureLead, "RequiredPeriod");
            $Purpose = FETCH($AgricultureLead, "PurchasePurpose");
        } else {
            $Budget = "";
            $RequiredPeriod = "";
            $Purpose = "";
        }
    ?>
        <?php if (DEVICE_TYPE == "COMPUTER") { ?>
            <div class="col-md-12">
                <div class="p-0 data-list flex-s-b align-items-center bg-light new-lead-outline w-100">
                    <div class="w-pr-5">
                        <span class=""><?php echo $Count; ?></span>
                    </div>
                    <div class="w-pr-20 ">
                        <span class="d-flex justify-content-start align-items-center w-100">
                            <span class="fs-15" style="width: 10% !important;"><?php echo $Priority; ?></span>
                            <span class="w-75">
                                <a class="w-100 text-primary" href="details/index.php?LeadsId=<?php echo SECURE($leads->LeadsId, "e"); ?>">
                                    <span class=" ml-1 bold"> <?php echo $leads->LeadSalutations; ?>
                                        <?php echo LimitText($leads->LeadPersonFullname, 0, 22); ?></span><br>
                                    <?php $projectId = FETCH("SELECT LeadRequirementDetails FROM lead_requirements WHERE LeadMainId='$LeadsId'", "LeadRequirementDetails");

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
                                        if ($leads->LeadPersonPhoneNumber == null) {
                                            echo "No-Phone";
                                        } else {
                                            echo $leads->LeadPersonPhoneNumber;
                                        } ?></span>
                    </div>

                    <div class="w-pr-10 ">
                        <span class="btn btn-default btn-xs cursor-default "><?php echo $dot . " " . $leads->LeadPersonStatus; ?></span>
                    </div>
                    <div class="w-pr-10 text-center ">
                        <span class="btn btn-default btn-xs cursor-default"> <?php if ($leads->LeadPersonSource == null) {
                                                                                    echo "No Source Found!";
                                                                                } else {
                                                                                    echo $leads->LeadPersonSource;
                                                                                } ?></span>
                    </div>
                    <div class="w-pr-12 text-center">
                        <span class="btn btn-xs btn-default"> <?php if ($leads->LeadType == null) {
                                                                    echo "No Type Found!";
                                                                } else {
                                                                    echo $leads->LeadType;
                                                                } ?></span>
                    </div>
                    <div class="w-pr-13 text-center ">
                        <span class="btn btn-default btn-xs m-1 cursor-default"> <?php echo $status . " " . $LeadPersonManagebyName; ?></span>
                    </div>
                    <div class="w-pr-15 ">
                        <span class="d-flex justify-content-around">
                            <span class='w-100 text-center'>
                                <a href='tel:<?php echo $leads->LeadPersonPhoneNumber; ?>' class='btn btn-md btn-default'> <i class='fa fa-phone text-success h5'></i><br></a>
                            </span>
                            <span class='w-100 text-center'>
                                <a href='#' onmouseover="GetInstantTime('displayTime_<?php echo $LeadsId; ?>', 'value')" onclick="Databar('Lead_Update_<?php echo $LeadsId; ?>')" class='btn btn-md btn-default'><i class="fa fa-comments text-info" aria-hidden="true"></i></a>
                            </span>
                            <span class='w-100 text-center'>
                                <div class='btn btn-md btn-default popup-btn'><i class="fa fa-ellipsis-h" aria-hidden="true"></i></div>
                                <div class="popup">
                                    <div class=" text-center text-info "> <i class='fa fa-user'></i>
                                        <?php echo $leads->LeadSalutations . " " . $leads->LeadPersonFullname; ?>
                                    </div>
                                    <hr class="mt-0">
                                    <div class="flex-s-b align-items-center w-100">
                                        <span>Budget : </span>
                                        <span class="fs-10"><?php if ($Budget == "" || $Budget == null) {
                                                                echo "No Budget Found";
                                                            } else {
                                                                echo "<b class='text-success'>" . $Budget . "</b>";
                                                            } ?> </span>
                                    </div>
                                    <div class="flex-s-b align-items-center w-100">
                                        <span>Period : </span>
                                        <span class="fs-10"><?php if ($RequiredPeriod == "" || $RequiredPeriod == null) {
                                                                echo "No Period Found";
                                                            } else {
                                                                echo "<b class=''>" . $RequiredPeriod . "</b>";
                                                            } ?> </span>
                                    </div>
                                    <div class="flex-s-b align-items-center w-100">
                                        <span>Purpose : </span>
                                        <span class="fs-10"><?php if ($Purpose == "" || $Purpose == null) {
                                                                echo "No Purpose Found";
                                                            } else {
                                                                echo "<b class=''>" . $Purpose . "</b>";
                                                            } ?> </span>
                                    </div>
                                    <hr class="mt-0">
                                    <div class="flex-s-b w-100">
                                        <span class="w-pr-50">
                                            <span class="text-gray"><i class='fa fa-phone text-success h6'></i> <b><?php echo TOTAL("SELECT LeadFollowUpId FROM lead_followups WHERE LeadFollowMainId='$LeadsId'"); ?></b> Calls </span>
                                        </span>
                                        <span class="w-pr-50">
                                            <span class="text-gray"> <i class='fa fa-refresh text-danger h6'></i> <b><?php echo TOTAL("SELECT LeadFollowStatus FROM lead_followups where LeadFollowMainId='$LeadsId' and LeadFollowStatus like '%Follow%'"); ?></b> Follow ups <b></b></span>
                                        </span>
                                    </div>
                                    <div class="w-100">
                                        <span class='text-small bold text-left w-pr-100'>Last Feedback</span>
                                        <hr class="mt-0 mb-0 ">
                                        <span class="text-justify w-100  fs-10">
                                            <?php
                                            $LastFeedback = FETCH("SELECT LeadFollowUpDescriptions from lead_followups WHERE LeadFollowMainId='$LeadsId' ORDER BY LeadFollowUpId DESC limit 1", "LeadFollowUpDescriptions");
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
                                    <a class="w-100 text-primary" href="details/index.php?LeadsId=<?php echo SECURE($leads->LeadsId, "e"); ?>">
                                        <?php echo $leads->LeadSalutations; ?>
                                        <?php echo LimitText($leads->LeadPersonFullname, 0, 25); ?>
                                    </a>
                                </h6>
                                <span class='btn btn-xs btn-warning fs-10'>
                                    <i class='fa fa-hashtag'></i>
                                    <?php
                                    $ProjectId = FETCH("SELECT LeadRequirementDetails FROM lead_requirements WHERE LeadMainId='$LeadsId'", "LeadRequirementDetails");
                                    $ProjectName = FETCH("SELECT ProjectName FROM projects where ProjectsId='$ProjectId'", "ProjectName");
                                    if ($ProjectId == null) {
                                        echo "No Requirement";
                                    } else {
                                        echo $ProjectName;
                                    }; ?>
                                </span><br>
                                <div class='flex-s-b lead-action mt-1'>
                                    <a href="tel:<?php echo $leads->LeadPersonPhoneNumber; ?>" class='btn call btn-md btn-default small w-30'><i class='fa fa-phone'></i> Call</a>
                                    <a href="whatsapp://send?phone=91<?php echo $leads->LeadPersonPhoneNumber; ?>&text=Hey <?php echo $leads->LeadPersonFullname; ?>" class='btn chat btn-md btn-default small w-30'><i class='fa fa-whatsapp'></i> Whatsapp</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w-100">
                        <span class='text-grey small'>Last Feedbacks</span><br>
                        <?php
                        $LastFeedback = FETCH("SELECT LeadFollowUpDescriptions from lead_followups WHERE LeadFollowMainId='$LeadsId' ORDER BY LeadFollowUpId DESC limit 1", "LeadFollowUpDescriptions");
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
                                <small><?php echo TOTAL("SELECT LeadFollowUpId FROM lead_followups where LeadFollowMainId='$LeadsId'"); ?></small>
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
                                    echo TOTAL("SELECT LeadFollowStatus FROM lead_followups where LeadFollowMainId='$LeadsId' and LeadFollowStatus like '%Follow%'");
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
        include  "../../include/forms/Add-Instant-Feedback.php"; ?>
<?php  }
} ?>