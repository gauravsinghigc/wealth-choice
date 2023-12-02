<?php
$Dir = "../..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';



//pagevariables
$PageName = "All Data";
$PageDescription = "Manage all Leads";
$btntext = "Add New Leads";
$DomainExpireInCurrentMonth = date("Y-m-d", strtotime("+1 month"));

include "sections/pageHeader.php";

if (isset($_GET['type'])) {
  $type = $_GET['type'];
  $from = $_GET['from'];
  $to = $_GET['to'];
  $by = $_GET['by'];
  $level = $_GET['level'];
  $LeadPersonSource = $_GET['LeadPersonSource'];
} else {
  $type = "";
  $from = date("Y-m-d");
  $to = date("Y-m-d");
  $by = LOGIN_UserId;
  $level = "";
  $LeadPersonSource = "";
}
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
  <style>
    .card {
      box-shadow: 0px 0px 1px black !important;
    }
  </style>
</head>

<body class="hold-transition sidebar-mini">
  <div class="wrapper">
    <?php
    include $Dir . "/include/app/Header.php";
    include $Dir . "/include/sidebar/get-side-menus.php";
    include $Dir . "/include/app/Loader.php";
    ?>
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
                    <div class="col-sm-4 col-12">
                      <?php
                      if (isset($_GET['type'])) {
                        $ListHeading = "All " . ucfirst(str_replace("_", " ", $_GET['type']))  . "";
                      } elseif (isset($_GET['view'])) {
                        $ListHeading = "All " . $_GET['view'];
                      } elseif (isset($_GET['sub_status'])) {
                        $ListHeading = "All " . $_GET['sub_status'];
                      } else {
                        $ListHeading = "All Leads";
                      } ?>
                      <h2 class="btn btn-sm btn-default btn-block">
                        <a href="index.php">
                          <?php echo $ListHeading; ?>
                        </a>
                      </h2>
                    </div>
                    <div class="col-sm-6 col-12">
                      <a href="data.php">
                        <h2 class="btn btn-sm btn-primary btn-block">
                          All Data
                        </h2>
                      </a>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 col-12">
                      <form class="row">
                        <div class="col-md-4 col-6">
                          <input type="text" onchange="form.submit()" name="LeadPersonFullname" list="LeadPersonFullname" class="form-control form-control-sm " placeholder="Enter Person name">
                        </div>
                        <div class="col-md-4 col-6">
                          <input type="text" onchange="form.submit()" name="LeadPersonPhoneNumber" list="LeadPersonPhoneNumber" class="form-control form-control-sm " placeholder="Enter Phone number">
                        </div>
                        <div class="col-sm-4 col-12">
                          <a href="add.php">
                            <h2 class="btn btn-sm btn-danger btn-block">
                              <i class="fa fa-plus"></i> New Lead
                            </h2>
                          </a>
                        </div>
                      </form>
                    </div>
                  </div>
                  <?php if (isset($_GET['LeadPersonPhoneNumber'])) { ?>
                    <div class="row">
                      <div class="col-md-12 mb-2 shadow-sm p-2">
                        <h6 class="mb-2"><i class="fa fa-filter text-warning"></i> Filter Applied</h6>
                        <p class="fs-11">
                          <span>
                            <span class="text-grey">Person Name :</span>
                            <span class="bold"><?php echo IfRequested("GET", "LeadPersonFullname", "All", false);  ?></span>
                          </span>
                          <span>
                            <span class="text-grey">Phone Number :</span>
                            <span class="bold"><?php echo IfRequested("GET", "LeadPersonPhoneNumber", "All", false);  ?></span>
                          </span>
                        </p>
                        <a href="index.php" class="btn btn-xs btn-danger fs-11 pull-right" style="margin-top:-5.3em !important;">Clear Filter <i class="fa fa-times"></i></a>
                      </div>
                    </div>
                  <?php } ?>
                  <div class="row">
                    <?php
                    $listcounts = 5;

                    // Get current page number
                    if (isset($_GET["view_page"])) {
                      $page = $_GET["view_page"];
                    } else {
                      $page = 1;
                    }
                    $start = ($page - 1) * $listcounts;
                    $next_page = ($page + 1);
                    $previous_page = ($page - 1);
                    $NetPages = round(($TotalItems / $listcounts) + 0.5);
                    ?>
                    <?php
                    if (isset($_GET['view'])) {
                      $view = $_GET['view'];
                      if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
                        $GetLeads = _DB_COMMAND_("SELECT LeadPersonCreatedBy, LeadPersonPhoneNumber, LeadPersonEmailId, LeadPersonStatus, LeadPersonSubStatus, LeadSalutations, LeadPersonFullname, LeadPersonManagedBy, LeadPersonSource, LeadPriorityLevel, LeadPersonCreatedAt, LeadsId  FROM leads WHERE LeadPersonStatus LIKE '%$view%' GROUP BY LeadsId ORDER by LeadsId DESC limit $start, $listcounts", true);
                      } else {
                        $LOGIN_UserId = LOGIN_UserId;
                        $GetLeads = _DB_COMMAND_("SELECT LeadPersonCreatedBy, LeadPersonPhoneNumber, LeadPersonEmailId, LeadPersonStatus, LeadPersonSubStatus, LeadSalutations, LeadPersonFullname, LeadPersonManagedBy, LeadPersonSource, LeadPriorityLevel, LeadPersonCreatedAt, LeadsId  FROM leads where LeadPersonStatus LIKE '%$view%' and LeadPersonManagedBy='$LOGIN_UserId' GROUP BY LeadsId ORDER by LeadsId DESC limit $start, $listcounts", true);
                      }
                    } elseif (isset($_GET['search_true'])) {
                      $LeadPersonFullname = $_GET['LeadPersonFullname'];
                      $LeadPersonPhoneNumber = $_GET['LeadPersonPhoneNumber'];
                      $LeadPersonSource = $_GET['LeadPersonSource'];
                      $LeadPersonManagedBy = $_GET['LeadPersonManagedBy'];
                      $LeadPriorityLevel = $_GET['LeadPriorityLevel'];
                      $LeadPersonCreatedAtFrom = $_GET['LeadPersonCreatedAtFrom'];
                      $LeadPersonCreatedAtTo = $_GET['LeadPersonCreatedAtTo'];

                      if ($LeadPersonManagedBy == null) {
                        $Managed = "LeadPersonManagedBy like '%$LeadPersonManagedBy%' and";
                      } else {
                        $Managed = "LeadPersonManagedBy='$LeadPersonManagedBy' and";
                      }
                      if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
                        $GetLeads = _DB_COMMAND_("SELECT LeadPersonCreatedBy, LeadPersonSubStatus, LeadPersonEmailId, LeadPersonPhoneNumber, LeadPersonStatus, LeadSalutations, LeadPersonFullname, LeadPersonManagedBy, LeadPersonSource, LeadPriorityLevel, LeadPersonCreatedAt, LeadsId  FROM leads WHERE DATE(LeadPersonCreatedAt)>='$LeadPersonCreatedAtFrom' and DATE(LeadPersonCreatedAt)<='$LeadPersonCreatedAtTo' and LeadPriorityLevel like '%$LeadPriorityLevel%' and $Managed LeadPersonSource like '%$LeadPersonSource%' and LeadPersonPhoneNumber like '%$LeadPersonPhoneNumber%' and LeadPersonFullname like '%$LeadPersonFullname%' and LeadPersonSubStatus like '%$LeadPersonSubStatus%' and LeadPersonStatus LIKE '%$LeadPersonStatus%' GROUP BY LeadsId ORDER by LeadsId DESC limit $start, $listcounts", true);
                      } else {
                        $LOGIN_UserId = LOGIN_UserId;
                        $GetLeads = _DB_COMMAND_("SELECT LeadPersonCreatedBy, LeadPersonSubStatus, LeadPersonEmailId, LeadPersonPhoneNumber, LeadPersonStatus, LeadSalutations, LeadPersonFullname, LeadPersonManagedBy, LeadPersonSource, LeadPriorityLevel, LeadPersonCreatedAt, LeadsId  FROM leads where DATE(LeadPersonCreatedAt)>='$LeadPersonCreatedAtFrom' and DATE(LeadPersonCreatedAt)<='$LeadPersonCreatedAtTo' and LeadPriorityLevel like '%$LeadPriorityLevel%' and $Managed LeadPersonSource like '%$LeadPersonSource%' and LeadPersonPhoneNumber like '%$LeadPersonPhoneNumber%' and LeadPersonFullname like '%$LeadPersonFullname%' and LeadPersonSubStatus like '%$LeadPersonSubStatus%' and LeadPersonStatus LIKE '%$LeadPersonStatus%' and LeadPersonManagedBy='$LOGIN_UserId' GROUP BY LeadsId ORDER by LeadsId DESC limit $start, $listcounts", true);
                      }
                    } elseif (isset($_GET['sub_status'])) {
                      $sub_status = $_GET['sub_status'];
                      if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
                        $GetLeads = _DB_COMMAND_("SELECT LeadPersonCreatedBy, LeadPersonSubStatus, LeadPersonEmailId,  LeadPersonPhoneNumber, LeadPersonStatus, LeadSalutations, LeadPersonFullname, LeadPersonManagedBy, LeadPersonSource, LeadPriorityLevel, LeadPersonCreatedAt, LeadsId  FROM leads WHERE LeadPersonSubStatus like '%$sub_status%' GROUP BY LeadsId ORDER by LeadsId DESC limit $start, $listcounts", true);
                      } else {
                        $LOGIN_UserId = LOGIN_UserId;
                        $GetLeads = _DB_COMMAND_("SELECT LeadPersonCreatedBy, LeadPersonSubStatus, LeadPersonEmailId, LeadPersonPhoneNumber, LeadPersonStatus, LeadSalutations, LeadPersonFullname, LeadPersonManagedBy, LeadPersonSource, LeadPriorityLevel, LeadPersonCreatedAt, LeadsId  FROM leads where LeadPersonSubStatus like '%$sub_status%' and LeadPersonManagedBy='$LOGIN_UserId' GROUP BY LeadsId ORDER by LeadsId DESC limit $start, $listcounts", true);
                      }
                    } else {
                      if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
                        $GetLeads = _DB_COMMAND_("SELECT LeadPersonCreatedBy, LeadPersonSubStatus, LeadPersonEmailId,  LeadPersonPhoneNumber, LeadPersonStatus, LeadSalutations, LeadPersonFullname, LeadPersonManagedBy, LeadPersonSource, LeadPriorityLevel, LeadPersonCreatedAt, LeadsId FROM leads GROUP BY LeadsId ORDER by LeadsId DESC limit $start,$listcounts", true);
                      } else {
                        $LOGIN_UserId = LOGIN_UserId;
                        $GetLeads = _DB_COMMAND_("SELECT LeadPersonCreatedBy, LeadPersonSubStatus, LeadPersonEmailId, LeadPersonPhoneNumber, LeadPersonStatus, LeadSalutations, LeadPersonFullname, LeadPersonManagedBy, LeadPersonSource, LeadPriorityLevel, LeadPersonCreatedAt, LeadsId  FROM leads where LeadPersonManagedBy='$LOGIN_UserId' GROUP BY LeadsId ORDER by LeadsId DESC limit $start, $listcounts", true);
                      }
                    }
                    if ($GetLeads == null) { ?>
                      <div class="col-md-12">
                        <div class="card card-body border-0 shadow-sm">
                          <div class="text-left">
                            <h1><i class="fa fa-globe fa-spin display-4 text-success"></i></h1>
                            <h4 class="text-muted">No leads found</h4>
                            <p class="text-muted">You can add a new lead by clicking the button above.</p>
                            <a href="add.php" class="btn btn-md btn-primary">Add leads</a>
                          </div>
                        </div>
                      </div>
                      <?php } else {
                      $Count = 0;
                      if (isset($_GET['view_page'])) {
                        $view_page = $_GET['view_page'];
                        if ($view_page == 1) {
                          $Count = 0;
                        } else {
                          $Count = $listcounts * ($view_page - 1);
                        }
                      } else {
                        $Count = $Count;
                      }


                      if (DEVICE_TYPE == "Mobile") {
                        $flex = "";
                      } else {
                        $flex = "flex-s-b";
                      }

                      foreach ($GetLeads as $leads) {
                        $Count++;
                        $LeadPersonCreatedBy = $leads->LeadPersonCreatedBy;
                        $LeadsId = $leads->LeadsId;
                        $FollowUpsSQL = "SELECT LeadFollowUpDate, LeadFollowUpTime  FROM lead_followups where LeadFollowMainId='$LeadsId'";
                        $LeadFollowUpDate = FETCH($FollowUpsSQL, "LeadFollowUpDate");
                        $LeadFollowUpTime = FETCH($FollowUpsSQL, "LeadFollowUpTime");
                        $lead_requirements = CHECK("SELECT * FROM lead_requirements where leadMainId='$LeadsId'");
                      ?>

                        <?php if (DEVICE_TYPE == "COMPUTER") { ?>
                          <div class="col-md-12">
                            <div class='data-list flex-s-b'>
                              <div class='w-pr-5'>
                                <span><?php echo $Count; ?></span>
                              </div>
                              <div class="w-pr-35">
                                <span class='text-primary'>

                                  <a class="w-100 text-primary" href="details/index.php?LeadsId=<?php echo SECURE($leads->LeadsId, "e"); ?>">
                                    <i class='fa fa-user'></i> <?php echo $leads->LeadSalutations; ?>
                                    <?php echo LimitText($leads->LeadPersonFullname, 0, 37); ?><br>
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
                                    <span class='text-black'><i class='fa fa-phone text-success'></i>
                                      <?php
                                      if ($leads->LeadPersonPhoneNumber == null) {
                                        echo "No-Phone";
                                      } else {
                                        echo $leads->LeadPersonPhoneNumber;
                                      } ?><br>
                                      <span class='text-black'>
                                        <i class='fa fa-envelope text-danger'></i>
                                        <?php
                                        if ($leads->LeadPersonEmailId == null) {
                                          echo "No-Email";
                                        } else {
                                          echo $leads->LeadPersonEmailId;
                                        } ?>
                                      </span>
                                    </span>
                                  </a>
                                </span>
                              </div>
                              <div class='w-pr-15 text-right'>
                                <span class='btn btn-xs btn-default m-1'><?php echo $leads->LeadPriorityLevel; ?></span><br>
                                <span class='btn btn-xs btn-info m-1'><?php echo $leads->LeadPersonSource; ?></span>
                              </div>
                              <div class='w-pr-20'>
                                <span class='btn btn-xs btn-success m-1'><?php echo $leads->LeadPersonStatus; ?></span><br>
                                <span class='btn btn-xs btn-danger m-1'><?php echo $leads->LeadPersonSubStatus; ?></span>
                              </div>
                              <div class="w-pr-15" style="line-height:0.85rem !important;">
                                <span class='text-grey small'>Last Feedbacks</span><br>
                                <?php
                                $LastFeedback = FETCH("SELECT LeadFollowUpDescriptions from lead_followups WHERE LeadFollowMainId='$LeadsId' ORDER BY LeadFollowUpId DESC limit 1", "LeadFollowUpDescriptions");
                                if ($LastFeedback == null) {
                                  echo "No feedback";
                                } else {
                                  echo $LastFeedback;
                                } ?>
                              </div>
                              <div class='w-pr-38'>
                                <span class="flex-s-b p-1">
                                  <span class='w-100 text-center fs-13 p-1'>
                                    <i class='fa fa-phone text-success h5'></i><br>
                                    <small><?php echo $CallCounts = TotalCalls($LeadsId); ?></small>
                                  </span>
                                  <span class='w-100 text-center fs-13 p-1'>
                                    <i class='fa fa-clock text-warning h5'></i><br>
                                    <small>
                                      <?php
                                      $GetLeadsSeconds = GetLeadsCallDurations($LeadsId);
                                      $CallDurations = GetDurations($GetLeadsSeconds);
                                      echo $CallDurations; ?>
                                    </small>
                                  </span>
                                  <span class='w-100 text-center fs-13 p-1'>
                                    <i class='fa fa-refresh text-danger h5'></i><br>
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
                                    <small><?php echo $CallCounts = TotalCalls($LeadsId); ?></small>
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
                        include $Dir . "/include/forms/Add-Instant-Feedback.php";
                      } ?>
                    <?php } ?>
                    <div class="col-md-12 flex-s-b mt-2 mb-1">
                      <div class="">
                        <h6 class="mb-0" style="font-size:0.75rem;color:grey;">Page <b><?php echo IfRequested("GET", "view_page", $page, false); ?></b> from <b><?php echo $NetPages; ?> </b> pages <br>Total <b><?php echo $TotalItems; ?></b> Entries</h6>
                      </div>
                      <div class="flex">
                        <span class="mr-1">
                          <?php
                          if (isset($_GET['view'])) {
                            $viewcheck = "&view=" . $_GET['view'];
                          } else {
                            $viewcheck = "";
                          }

                          if (isset($_GET['sub_status'])) {
                            $sub_statuscheck = "&sub_status=" . $_GET['sub_status'];
                          } else {
                            $sub_statuscheck = "";
                          }

                          if (isset($_GET['LeadPersonSubStatus'])) {
                            $pagefilter = "&LeadPersonManagedBy=" . $_GET['LeadPersonManagedBy'] . "&LeadPersonSource=" . "&LeadPersonSubStatus=" . $_GET['LeadPersonSubStatus'] . "&LeadPersonStatus=" . $_GET['LeadPersonStatus'] . "&LeadFollowStatus=" . $_GET['LeadFollowStatus'] . "&LeadPersonFullname=" . $_GET['LeadPersonFullname'] . "&search_true=" . $_GET['search_true'] . "&LeadPersonPhoneNumber=" . $_GET['LeadPersonPhoneNumber'];
                          } else {
                            $pagefilter = "";
                          } ?>
                          <a href="?view_page=<?php echo $previous_page; ?><?php echo $viewcheck; ?><?php echo $sub_statuscheck; ?><?php echo $pagefilter; ?>" class="btn btn-sm btn-default"><i class="fa fa-angle-double-left"></i></a>
                        </span>
                        <form style="padding:0.3rem !important;">
                          <input type="number" name="view_page" onchange="form.submit()" class="form-control form-control-sm  mb-0" min="1" max="<?php echo $NetPages; ?>" value="<?php echo IfRequested("GET", "view_page", 1, false); ?>">
                        </form>
                        <span class="ml-1">
                          <a href="?view_page=<?php echo $next_page; ?><?php echo $viewcheck; ?><?php echo $sub_statuscheck; ?><?php echo $pagefilter; ?>" class="btn btn-sm btn-default"><i class="fa fa-angle-double-right"></i></a>
                        </span>
                        <?php if (isset($_GET['view_page'])) { ?>
                          <span class="ml-1">
                            <a href="index.php" class="btn btn-sm btn-danger mb-0"><i class="fa fa-times m-1"></i></a>
                          </span>
                        <?php } ?>
                      </div>
                    </div>
                  </div>
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

  <?php include $Dir . "/assets/FooterFiles.php"; ?>

</body>

</html>