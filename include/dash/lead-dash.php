<?php
//all leads
$LOGIN_UserViewId = LOGIN_UserId;
$Leads = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId'");
$LeadsToday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and Date(leads.LeadPersonCreatedAt)='" . date("Y-m-d") . "'");
$LeadsYesterday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and Date(leads.LeadPersonCreatedAt)='" . date("Y-m-d", strtotime("-1 days")) . "'");

//all fresh leads
$AllFreshLeads = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and leadPersonStatus like '%FRESH LEAD%'");
$AllFreshLeadsToday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and leadPersonStatus like '%FRESH LEAD%' and Date(leads.LeadPersonCreatedAt)='" . date("Y-m-d") . "'");
$AllFreshLeadsYesterday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and leadPersonStatus like '%FRESH LEAD%' and Date(leads.LeadPersonCreatedAt)='" . date("Y-m-d", strtotime("-1 days")) . "'");

//all followusp
$AllFollowUpLeads = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and leadPersonStatus like '%Follow Up%'");
$AllFollowUpLeadsToday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and leadPersonStatus like '%Follow up%' and Date(leads.LeadPersonCreatedAt)='" . date("Y-m-d") . "'");
$AllFollowUpLeadsYesterday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and leadPersonStatus like '%Follow up%' and Date(leads.LeadPersonCreatedAt)='" . date("Y-m-d", strtotime("-1 days")) . "'");

//all site visits planned
$AllSiteVisitPlannedLeads = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and  LeadPersonSubStatus like '%SITE VISIT PLANNED%'");
$AllSiteVisitPlannedLeadsToday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and   LeadPersonSubStatus like '%SITE VISIT PLANNED%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d") . "'");
$AllSiteVisitPlannedLeadsYesterday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and LeadPersonSubStatus like '%SITE VISIT PLANNED%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d", strtotime("-1 days")) . "'");

//all ringing
$AllRingingLeads = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and LeadPersonSubStatus like '%RINGING%'");
$AllRingingToday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and LeadPersonSubStatus like '%RINGING%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d") . "'");
$AllRingingYesterday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and LeadPersonSubStatus like '%RINGING%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d", strtotime("-1 days")) . "'");

//all site visits done
$AllSiteVisitDoneLeads = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and  LeadPersonSubStatus like '%SITE VISIT DONE%'");
$AllSiteVisitDoneLeadsToday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and  LeadPersonSubStatus like '%SITE VISIT DONE%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d") . "'");
$AllSiteVisitDoneLeadsYesterday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and  LeadPersonSubStatus like '%SITE VISIT DONE%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d", strtotime("-1 days")) . "'");

//all registration
$AllRegistrationsLeads = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and LeadPersonSubStatus like '%Rent%'");
$AllRegistrationsLeadsToday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and  LeadPersonSubStatus like '%Rent%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d") . "'");
$AllRegistrationsLeadsYesterday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and  LeadPersonSubStatus like '%Rent%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d", strtotime("-1 days")) . "'");

//all sale closed
$AllSaleClosedLeads = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and  LeadPersonSubStatus like '%Close%'");
$AllSaleClosedLeadsToday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and  LeadPersonSubStatus like '%Close%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d") . "'");
$AllSaleClosedLeadsYesterday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and  LeadPersonSubStatus like '%Close%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d", strtotime("-1 days")) . "'");

//all not interested
$AllNullLeads = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and LeadPersonStatus like '%Not Interested%'");
$AllNullLeadsToday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and LeadPersonStatus like '%Not Interested%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d") . "'");
$AllNullLeadsYesterday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and LeadPersonStatus like '%Not Interested%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d", strtotime("-1 days")) . "'");

//all junks
$AllJunkLeads = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and LeadPersonStatus like '%Junk%'");
$AllJunkLeadsToday = TOTAL("SELECT LeadsId FROM leads where LeadPersonManagedBy='$LOGIN_UserViewId' and LeadPersonStatus like '%Junk%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d") . "'");
$AllJunkLeadsYesterday = TOTAL("SELECT LeadsId FROM leads  where LeadPersonManagedBy='$LOGIN_UserViewId' and LeadPersonStatus like '%Junk%' and Date(LeadPersonLastUpdatedAt)='" . date("Y-m-d", strtotime("-1 days")) . "'");
?>
<div class="row">
  <div class="col-md-12">
    <div class='flex-s-b'>
      <h3 class="app-heading w-pr-80 m-t-0"><i class="fa fa-home"></i> Lead Dashboard </h3>
      <?php if (LOGIN_UserType == 'Admin') { ?> <form>
          <select name="view" onchange="form.submit()" class="form-control ">
            <?php InputOptions(["Admin Dashboard", 'Lead Dashboard', 'CRM Dashboard', 'HR Dashboard', 'Reception Dashboard', 'Digital Dashboard'], IfRequested('GET', 'view', 'Lead Dashboard', false)); ?>
          </select>
        </form>
      <?php } ?>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-md-3 col-6 mb-10px">
    <a href="<?php echo APP_URL; ?>/leads">
      <div class="card card-window card-body rounded-3 p-4 shadow-lg">
        <div class="flex-s-b">
          <h2 class="count mb-0 m-t-5 h1"> <?php echo $Leads ?> </h2>
          <span class="pull-right text-grey" style="line-height:1rem;">
            <span class="fs-11">Today : </span><span class="fs-13 count"> <?php echo $LeadsToday; ?> </span><br>
            <span class="fs-11">Yesterday : </span><span class="fs-13 count"> <?php echo $LeadsYesterday; ?> </span>
          </span>
        </div>
        <p class="mb-0 fs-14 text-black">All Leads</p>
      </div>
    </a>
  </div>
  <div class="col-md-3 col-6 mb-10px">
    <a href="<?php echo APP_URL; ?>/leads?view=Fresh Lead">
      <div class="card card-window card-body rounded-3 p-4 shadow-lg">
        <div class="flex-s-b">
          <h2 class="count mb-0 m-t-5 h1"> <?php echo $AllFreshLeads; ?> </h2>
          <span class="pull-right text-grey" style="line-height:1rem;">
            <span class="fs-11">Today : </span><span class="fs-13 count"> <?php echo $AllFreshLeadsToday; ?> </span><br>
            <span class="fs-11">Yesterday : </span><span class="fs-13 count"> <?php echo $AllFreshLeadsYesterday; ?> </span>
          </span>
        </div>
        <p class="mb-0 fs-14 text-black"> FRESH LEADS</p>
      </div>
    </a>
  </div>
  <div class="col-md-3 col-6 mb-10px">
    <a href="<?php echo APP_URL; ?>/leads?view=Follow up">
      <div class="card card-window card-body rounded-3 p-4 shadow-lg">
        <div class="flex-s-b">
          <h2 class="count mb-0 m-t-5 h1"> <?php echo $AllFollowUpLeads; ?> </h2>
          <span class="pull-right text-grey" style="line-height:1rem;">
            <span class="fs-11">Today : </span><span class="fs-13 count"> <?php echo $AllFollowUpLeadsToday; ?> </span><br>
            <span class="fs-11">Yesterday : </span><span class="fs-13 count"> <?php echo $AllFollowUpLeadsYesterday; ?>
            </span>
          </span>
        </div>
        <p class="mb-0 fs-14 text-black">TOTAL FOLLOW UPS</p>
      </div>
    </a>
  </div>
  <div class="col-md-3 col-6 mb-10px">
    <a href="<?php echo APP_URL; ?>/leads?sub_status=RINGING">
      <div class="card card-window card-body rounded-3 p-4 shadow-lg">
        <div class="flex-s-b">
          <h2 class="count mb-0 m-t-5 h1"> <?php echo $AllRingingLeads; ?> </h2>
          <span class="pull-right text-grey" style="line-height:1rem;">
            <span class="fs-11">Today : </span><span class="fs-13 count"> <?php echo $AllRingingToday; ?> </span><br>
            <span class="fs-11">Yesterday : </span><span class="fs-13 count"> <?php echo $AllRingingYesterday; ?> </span>
          </span>
        </div>
        <p class="mb-0 fs-14 text-black">ALL RINGING CALLS</p>
      </div>
    </a>
  </div>
  <div class="col-md-3 col-6 mb-10px">
    <a href="<?php echo APP_URL; ?>/leads?sub_status=Site Visit Planned">
      <div class="card card-window card-body rounded-3 p-4 shadow-lg">
        <div class="flex-s-b">
          <h2 class="count mb-0 m-t-5 h1"> <?php echo $AllSiteVisitPlannedLeads; ?> </h2>
          <span class="pull-right text-grey" style="line-height:1rem;">
            <span class="fs-11">Today : </span><span class="fs-13 count"> <?php echo $AllSiteVisitPlannedLeadsToday; ?>
            </span><br>
            <span class="fs-11">Yesterday : </span><span class="fs-13 count">
              <?php echo $AllSiteVisitPlannedLeadsYesterday; ?> </span>
          </span>
        </div>
        <p class="mb-0 fs-14 text-black">SITE VISITS PLANNED</p>
      </div>
    </a>
  </div>
  <div class="col-md-3 col-6 mb-10px">
    <a href="<?php echo APP_URL; ?>/leads?sub_status=Site Visit Done">
      <div class="card card-window card-body rounded-3 p-4 shadow-lg">
        <div class="flex-s-b">
          <h2 class="count mb-0 m-t-5 h1"> <?php echo $AllSiteVisitDoneLeads; ?> </h2>
          <span class="pull-right text-grey" style="line-height:1rem;">
            <span class="fs-11">Today : </span><span class="fs-13 count"> <?php echo $AllSiteVisitPlannedLeadsToday; ?>
            </span><br>
            <span class="fs-11">Yesterday : </span><span class="fs-13 count">
              <?php echo $AllSiteVisitPlannedLeadsYesterday; ?> </span>
          </span>
        </div>
        <p class="mb-0 fs-14 text-black">SITE VISITS DONE</p>
      </div>
    </a>
  </div>
  <div class="col-md-3 col-6 mb-10px">
    <a href="<?php echo APP_URL; ?>/leads?sub_status=Rent">
      <div class="card card-window card-body rounded-3 p-4 shadow-lg">
        <div class="flex-s-b">
          <h2 class="count mb-0 m-t-5 h1"> <?php echo $AllRegistrationsLeads; ?> </h2>
          <span class="pull-right text-grey" style="line-height:1rem;">
            <span class="fs-11">Today : </span><span class="fs-13 count"> <?php echo $AllRegistrationsLeadsToday; ?>
            </span><br>
            <span class="fs-11">Yesterday : </span><span class="fs-13 count"> <?php echo $AllRegistrationsLeadsYesterday; ?>
            </span>
          </span>
        </div>
        <p class="mb-0 fs-14 text-black">Rent Closed</p>
      </div>
    </a>
  </div>
  <div class="col-md-3 col-6 mb-10px">
    <a href="<?php echo APP_URL; ?>/leads?sub_status=Close">
      <div class="card card-window card-body rounded-3 p-4 shadow-lg">
        <div class="flex-s-b">
          <h2 class="count mb-0 m-t-5 h1"> <?php echo $AllSaleClosedLeads; ?> </h2>
          <span class="pull-right text-grey" style="line-height:1rem;">
            <span class="fs-11">Today : </span><span class="fs-13 count"> <?php echo $AllSaleClosedLeadsToday; ?> </span><br>
            <span class="fs-11">Yesterday : </span><span class="fs-13 count"> <?php echo $AllSaleClosedLeadsYesterday; ?>
            </span>
          </span>
        </div>
        <p class="mb-0 fs-14 text-black">SALE CLOSED</p>
      </div>
    </a>
  </div>
  <div class="col-md-3 col-6 mb-10px">
    <a href="<?php echo APP_URL; ?>/leads?view=Not Interested">
      <div class="card card-window card-body rounded-3 p-4 shadow-lg">
        <div class="flex-s-b">
          <h2 class="count mb-0 m-t-5 h1"> <?php echo $AllNullLeads; ?> </h2>
          <span class="pull-right text-grey" style="line-height:1rem;">
            <span class="fs-11">Today : </span><span class="fs-13 count"> <?php echo $AllNullLeadsToday; ?> </span><br>
            <span class="fs-11">Yesterday : </span><span class="fs-13 count"> <?php echo $AllNullLeadsYesterday; ?> </span>
          </span>
        </div>
        <p class="mb-0 fs-14 text-black">NOT INTERESTED</p>
      </div>
    </a>
  </div>
  <div class="col-md-3 col-6 mb-10px">
    <a href="<?php echo APP_URL; ?>/leads?view=junk">
      <div class="card card-window card-body rounded-3 p-4 shadow-lg">
        <div class="flex-s-b">
          <h2 class="count mb-0 m-t-5 h1"> <?php echo $AllJunkLeads; ?> </h2>
          <span class="pull-right text-grey" style="line-height:1rem;">
            <span class="fs-11">Today : </span><span class="fs-13 count"> <?php echo $AllJunkLeadsToday; ?> </span><br>
            <span class="fs-11">Yesterday : </span><span class="fs-13 count"> <?php echo $AllJunkLeadsYesterday; ?> </span>
          </span>
        </div>
        <p class="mb-0 fs-14 text-black">JUNKS</p>
      </div>
    </a>
  </div>
  <div class="col-md-3 col-6 mb-10px">
    <a href="<?php echo APP_URL; ?>/data/index.php">
      <div class="card card-window card-body rounded-3 p-4 shadow-lg">
        <div class="flex-s-b">
          <h2 class="count mb-0 m-t-5 h1"> <?php echo TOTAL("SELECT DataId FROM data WHERE DataType='DATA' and DataPersonManagedBy='$LOGIN_UserViewId'"); ?> </h2>
          <span class="pull-right text-grey" style="line-height:1rem;">
            <span class="fs-11">Today : </span><span class="fs-13 count"> <?php echo TOTAL("SELECT DataId FROM data WHERE DataType='DATA' and Date(DataPersonCreatedAt)='" . date("Y-m-d") . "' and DataPersonManagedBy='$LOGIN_UserViewId'"); ?> </span><br>
            <span class="fs-11">Yesterday : </span><span class="fs-13 count"> <?php echo TOTAL("SELECT DataId FROM data WHERE DataType='DATA' and Date(DataPersonCreatedAt)='" . date("Y-m-d", strtotime("-1 days")) . "' and DataPersonManagedBy='$LOGIN_UserViewId'"); ?> </span>
          </span>
        </div>
        <p class="mb-0 fs-14 text-black">All Data</p>
      </div>
    </a>
  </div>
  <div class="col-md-3 col-6 mb-10px">
    <a href="<?php echo APP_URL; ?>/data/data_lead.php">
      <div class="card card-window card-body rounded-3 p-4 shadow-lg">
        <div class="flex-s-b">
          <h2 class="count mb-0 m-t-5 h1"> <?php echo TOTAL("SELECT DataId FROM data WHERE DataType='LEAD' and DataPersonManagedBy='$LOGIN_UserViewId'"); ?> </h2>
          <span class="pull-right text-grey" style="line-height:1rem;">
            <span class="fs-11">Today : </span><span class="fs-13 count"> <?php echo TOTAL("SELECT DataId FROM data WHERE DataType='LEAD' and Date(DataPersonCreatedAt)='" . date("Y-m-d") . "' and DataPersonManagedBy='$LOGIN_UserViewId'"); ?> </span><br>
            <span class="fs-11">Yesterday : </span><span class="fs-13 count"> <?php echo TOTAL("SELECT DataId FROM data WHERE DataType='LEAD' and Date(DataPersonCreatedAt)='" . date("Y-m-d", strtotime("-1 days")) . "' and DataPersonManagedBy='$LOGIN_UserViewId'"); ?> </span>
          </span>
        </div>
        <p class="mb-0 fs-14 text-black">All Data Leads</p>
      </div>
    </a>
  </div>
  <div class="col-md-3 col-6 mb-10px">
    <a href="<?php echo APP_URL; ?>/data/data_lead.php?view=Follow">
      <div class="card card-window card-body rounded-3 p-4 shadow-lg">
        <div class="flex-s-b">
          <h2 class="count mb-0 m-t-5 h1"> <?php echo TOTAL("SELECT DataId FROM data WHERE DataType='LEAD' and DataPersonManagedBy='$LOGIN_UserViewId' and DataPersonStatus like '%Follow up%'"); ?> </h2>
          <span class="pull-right text-grey" style="line-height:1rem;">
            <span class="fs-11">Today : </span><span class="fs-13 count"> <?php echo TOTAL("SELECT DataId FROM data WHERE DataType='LEAD' and Date(DataPersonCreatedAt)='" . date("Y-m-d") . "' and DataPersonManagedBy='$LOGIN_UserViewId' and DataPersonStatus like '%Follow up%'"); ?> </span><br>
            <span class="fs-11">Yesterday : </span><span class="fs-13 count"> <?php echo TOTAL("SELECT DataId FROM data WHERE DataType='LEAD' and Date(DataPersonCreatedAt)='" . date("Y-m-d", strtotime("-1 days")) . "' and DataPersonManagedBy='$LOGIN_UserViewId' and DataPersonStatus like '%Follow up%'"); ?> </span>
          </span>
        </div>
        <p class="mb-0 fs-14 text-black">All Data Follow ups</p>
      </div>
    </a>
  </div>
</div>
<div class="row m-1">
  <div class="col-md-12  app-sub-heading">
    <span class="btn btn-primary bold" id="lead_activity"> <i class="fa fa-eye"></i> See Lead Activity</span>
    <span class="btn btn-default bold" id="data_activity"> <i class="fa fa-eye"></i> See Data Activity</span>
  </div>
</div>
<div class="row" id="lead_active_box">
  <div class="col-md-6">
    <a href="<?php echo APP_URL; ?>/leads/?today_followups=true">
      <h5 class="app-heading">Today's FollowUps <span class="bg-white p-1 rounded pull-right" style="font-size:0.9rem;">
          <?php
          if (LOGIN_UserType == "Admin") {
            echo TOTAL("SELECT LeadFollowUpId FROM lead_followups where DATE(LeadFollowUpDate)='" . date('Y-m-d') . "' and LeadFollowUpRemindStatus='ACTIVE' ORDER BY LeadFollowUpId DESC");
          } else {
            echo TOTAL("SELECT LeadFollowUpId FROM lead_followups where LeadFollowUpHandleBy='" . LOGIN_UserId . "' and DATE(LeadFollowUpDate)='" . date('Y-m-d') . "' and LeadFollowUpRemindStatus='ACTIVE' ORDER BY LeadFollowUpId DESC");
          } ?> Follow Ups</span>
      </h5>
    </a>
    <div class="data-display">
      <ul class="calling-list">
        <?php
        if (LOGIN_UserType == "Admin") {
          $fetclFollowUps = _DB_COMMAND_("SELECT * FROM lead_followups where DATE(LeadFollowUpDate)='" . date('Y-m-d') . "' and LeadFollowUpRemindStatus='ACTIVE' ORDER BY LeadFollowUpId DESC", true);
        } else {
          $fetclFollowUps = _DB_COMMAND_("SELECT * FROM lead_followups where LeadFollowUpHandleBy='" . LOGIN_UserId . "' and DATE(LeadFollowUpDate)='" . date('Y-m-d') . "' and LeadFollowUpRemindStatus='ACTIVE' ORDER BY LeadFollowUpId DESC", true);
        }
        if ($fetclFollowUps != null) {
          foreach ($fetclFollowUps as $F) {
            include __DIR__ . "/common/follow-ups.php";
          }
        }
        ?>
      </ul>
    </div>
    <a href="<?php echo APP_URL; ?>/leads?today_followups=true" class="btn btn-md btn-primary pull-right mt-2">
      View All Today's Follow Ups <i class='fa fa-angle-right'></i>
    </a>
  </div>

  <div class="col-md-6">
    <h5 class="app-heading">Current Activity</h5>
    <div class="data-display ">
      <ul class="calling-list pt-0 ">
        <?php
        $LOGIN_UserViewId = LOGIN_UserId;
        $fetclFollowUps = _DB_COMMAND_("SELECT LeadFollowUpRemindStatus, LeadFollowUpId, LeadFollowUpHandleBy, LeadFollowUpDescriptions, LeadFollowCurrentStatus, LeadFollowStatus, LeadFollowMainId, LeadFollowUpUpdatedAt, LeadFollowUpTime, LeadFollowUpDate FROM lead_followups where LeadFollowUpHandleBy='$LOGIN_UserViewId' ORDER BY LeadFollowUpId DESC limit 0, 10", true);
        if ($fetclFollowUps != null) {
          foreach ($fetclFollowUps as $F) {
            include __DIR__ . "/common/activity-history.php";
          }
        } else {
          NoData("No FollowUps or History Found!");
        } ?>
      </ul>
    </div>
  </div>
</div>
<div class="row hidden" id="data_active_box">
  <div class="col-md-6">
    <a href="<?php echo APP_URL; ?>/data/data_lead.php?today_followups=true">
      <h5 class="app-heading flex-s-b">Today's Data Follow Ups
        <span class="bg-white p-1 rounded pull-right" style="font-size:0.9rem;">
          <?php echo TOTAL("SELECT DataFollowUpDate FROM data_lead_followups where DATE(DataFollowUpDate)='" . date('Y-m-d') . "' and DataFollowUpRemindStatus='ACTIVE' ORDER BY DataFollowUpId DESC"); ?> Follow Ups
        </span>
      </h5>

    </a>
    <div class="data-display">
      <ul class="calling-list">
        <?php
        $fetclFollowUps = _DB_COMMAND_("SELECT DataFollowUpRemindStatus, DataFollowUpId, DataFollowUpHandleBy, DataFollowUpDescriptions, DataFollowCurrentStatus, DataFollowStatus, DataFollowMainId, DataFollowUpUpdatedAt, DataFollowUpTime, DataFollowUpDate FROM data_lead_followups where DATE(DataFollowUpDate)='" . date('Y-m-d') . "' and DataFollowUpRemindStatus='ACTIVE' ORDER BY DataFollowUpId DESC", true);
        if ($fetclFollowUps != null) {
          foreach ($fetclFollowUps as $F) {
            include __DIR__ . "/common/data_follow-ups.php";
          }
        } else {
          NoData("No Follow ups for Today!");
        }
        ?>

      </ul>
    </div>
    <a href="<?php echo APP_URL; ?>/data/data_lead.php?today_followups=true" class="btn btn-md btn-primary pull-right mt-2">
      View All Today's Data Follow Ups <i class='fa fa-angle-right'></i>
    </a>
  </div>
  <div class="col-md-6">
    <h5 class="app-heading">Data Current Activity</h5>
    <div class="data-display">
      <ul class="calling-list pt-0">
        <?php
        $fetclFollowUps = _DB_COMMAND_("SELECT DataFollowUpRemindStatus, DataFollowUpId, DataFollowUpHandleBy, DataFollowUpDescriptions, DataFollowCurrentStatus, DataFollowStatus, DataFollowMainId, DataFollowUpUpdatedAt, DataFollowUpTime, DataFollowUpDate FROM data_lead_followups ORDER BY DataFollowUpId DESC limit 0, 10", true);
        if ($fetclFollowUps != null) {
          foreach ($fetclFollowUps as $F) {
            include __DIR__ . "/common/data_activity.php";
          }
        } else {
          NoData("No Activity History Found!");
        } ?>
      </ul>
    </div>
  </div>
</div>
<script>
  function toggleActivity(boxToShow, boxToHide, activeButton, inactiveButton) {
    document.querySelector(boxToHide).classList.add("hidden");
    document.querySelector(boxToShow).classList.remove("hidden");
    document.querySelector(activeButton).classList.remove("btn-default");
    document.querySelector(activeButton).classList.add("btn-primary");
    document.querySelector(inactiveButton).classList.remove("btn-primary");
    document.querySelector(inactiveButton).classList.add("btn-default");
  }

  document.querySelector("#lead_activity").addEventListener("click", function() {
    toggleActivity("#lead_active_box", "#data_active_box", "#lead_activity", "#data_activity");
  });

  document.querySelector("#data_activity").addEventListener("click", function() {
    toggleActivity("#data_active_box", "#lead_active_box", "#data_activity", "#lead_activity");
  });
</script>