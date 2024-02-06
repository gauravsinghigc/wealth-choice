<?php
$Dir = "../..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';
//pagevariables
$PageName = "All Data";
$PageDescription = "Manage all Data";
// $btntext = "Add New Leads";
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

    .rotate-button {
      margin-top: 2.5rem !important;
      /* Ensures inline rotation */
      transform: rotate(270deg);
      /* Rotate by 90 degrees */
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
                    <div class="col-sm-6 col-12">
                      <?php if (isset($_GET['type'])) {
                        $ListHeading = "All " . ucfirst(str_replace("_", " ", $_GET['type']))  . "";
                      } elseif (isset($_GET['view'])) {
                        $ListHeading = "All " . $_GET['view'];
                      } elseif (isset($_GET['sub_status'])) {
                        $ListHeading = "All " . $_GET['sub_status'];
                      } else {
                        $ListHeading = "All Data";
                      } ?>
                      <a href="index.php" class="flex-s-b btn btn-sm btn-primary btn-block">
                        <span class="bold">
                          <?php echo $ListHeading; ?>
                        </span>
                        <?php
                        if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
                          $loginuser = "";
                        } else {
                          $loginuser = " and DataPersonManagedBy='" . LOGIN_UserId . "'";
                        }
                        ?>
                        <span class="bold fs-15"> Total <?php echo TOTAL("SELECT DataId FROM data where DataType like '%DATA%' $loginuser  GROUP BY DataId"); ?></span>
                      </a>
                    </div>
                    <div class="col-sm-6 col-12">
                      <a href="data_lead.php" class="flex-s-b btn btn-sm btn-default btn-block">
                        <span class="">
                          All Data Lead
                        </span>
                        <span class="">Total <?php
                                              if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
                                                $loginuser = "";
                                              } else {
                                                $loginuser = " and DataPersonManagedBy='" . LOGIN_UserId . "'";
                                              }
                                              echo TOTAL("SELECT DataId FROM data where DataType like '%LEAD%' $loginuser  GROUP BY DataId");
                                              ?></span>
                      </a>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="flex-s-b mb-4">
                        <div class="flex-s-b align-items-center">
                          <h3 class="bold m-1">
                            <?php echo $ListHeading; ?>
                          </h3>
                        </div>
                        <div class="text-right">
                          <div>
                            <span class=" btn btn-xs btn-default cursor-default mr-1"><i class="fa fa-flag text-success" aria-hidden="true"></i> HIGH</span>
                            <span class=" btn btn-xs btn-default cursor-default mr-1"><i class="fa fa-flag text-info" aria-hidden="true"></i> MEDIUM</span>
                            <span class=" btn btn-xs btn-default cursor-default mr-1"><i class="fa fa-flag text-warning" aria-hidden="true"></i> LOW</span>
                            <span class=" btn btn-xs btn-default cursor-default mr-1"><i class="fa fa-comments text-info" aria-hidden="true"></i> Add Feedback</span><br>
                          </div>
                          <div class="mt-2">
                            <span class=" btn btn-xs btn-default cursor-default mr-1"><i class="fa fa-circle fs-10 text-gray" aria-hidden="true"></i> Total Data <b><?php echo TOTAL("SELECT DataId FROM data GROUP BY DataId"); ?></b></span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 mt-2 bg-light">
                      <div class=" data-list flex-s-b new-bg-light shadow-lg">
                        <div class="w-pr-5">
                          <span class="bold">Sr. No</span>
                        </div>
                        <div class="w-pr-25">
                          <span class="bold">Name</span>
                        </div>
                        <div class="w-pr-15 ">
                          <span class="bold">Phone</span>
                        </div>
                        <div class="w-pr-10 text-left">
                          <span class="bold">Data Stage</span>
                        </div>
                        <div class="w-pr-10 text-left">
                          <span class="bold">Source</span>
                        </div>
                        <div class="w-pr-10 text-left">
                          <span class="bold">Created At</span>
                        </div>
                        <div class="w-pr-10 text-left">
                          <span class="bold">Managed By</span>
                        </div>
                        <div class="w-pr-15 text-center">
                          <span class="bold">Action</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-12  ">
                      <form class="flex-s-b w-100">
                        <input type="text" hidden name="search_true">
                        <div class="w-pr-25">
                          <input type="text" onchange="form.submit()" name="DataPersonFullName" list="DataPersonFullname" class="w-100 custom-input form-control" value="<?php echo IfRequested("GET", "DataPersonFullName", "", false); ?>" placeholder="Enter Full Name">
                          <?php SUGGEST("data", "DataPersonFullname", "ASC"); ?>
                        </div>
                        <div class="w-pr-15 ">
                          <input type="text" onchange="form.submit()" name="DataPersonPhoneNumber" list="DataPersonPhoneNumber" pattern="0-9" class="w-100 custom-input text-center form-control" placeholder="Phone Number" value="<?php echo IfRequested("GET", "DataPersonPhoneNumber", "", false); ?>">
                          <?php SUGGEST("data", "DataPersonPhoneNumber", "ASC"); ?>
                        </div>
                        <div class="w-pr-11">
                          <select name="DataPersonStatus" onchange="form.submit()" id="" class="w-100 custom-option form-control">
                            <option value="">Select Status</option>
                            <?php
                            if ($_GET["DataPersonStatus"] == "FRESH DATA") {
                              $selected = "selected";
                            } else {
                              $selected = "";
                            } ?>
                            <option value="FRESH DATA" <?php echo $selected; ?>>FRESH DATA</option>
                            <?php CONFIG_VALUES("LEAD_STAGES", $_GET["DataPersonStatus"]); ?>

                          </select>
                        </div>
                        <div class="w-pr-10 ">
                          <input type="text" onchange="form.submit()" name="DataPersonSource" list="DataPersonSource" class="w-100 custom-input text-center form-control" placeholder="Source" value="<?php echo IfRequested("GET", "DataPersonSource", "", false); ?>">
                          <?php SUGGEST("data", "DataPersonSource", "ASC"); ?>
                        </div>
                        <div class="w-pr-10">
                          <input type="date" onchange="form.submit()" id="datechange" onclick="changeInputType()" name="DataCreatedAt" class="w-100 custom-input" placeholder="Created Date" value="<?php echo IfRequested("GET", "DataCreatedAt", "", false); ?>">

                        </div>
                        <div class="w-pr-13">
                          <?php if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") { ?>
                            <select name="DataManagedBy" onchange="form.submit()" id="" class="w-100 custom-option form-control">
                              <option value="">All Users</option>
                              <?php
                              $Users = _DB_COMMAND_("SELECT * FROM users ORDER BY UserFullName ASC", true);
                              foreach ($Users as $User) {
                                if ($User->UserId == $_GET['DataManagedBy']) {
                                  $selected = "selected";
                                } else {
                                  $selected = "";
                                }
                                echo "<option value='" . $User->UserId . "' $selected>" . $User->UserFullName . "</option>";
                              }
                              ?>
                            </select>
                          <?php } else { ?>
                            <input type="text" name="DataManagedBy" hidden readonly value="<?php echo LOGIN_UserId; ?>">
                          <?php } ?>
                        </div>
                        <div class="w-pr-12 text-center">
                          <span class="btn btn-xs btn-warning w-100">More Filter</span>
                        </div>

                      </form>
                      <hr class="m-0 p-0 new-hr">
                    </div>
                  </div>
                  <?php if (isset($_GET['search_true'])) {
                  ?>
                    <div class="row">
                      <div class="col-md-12 mb-2 shadow-sm p-2">
                        <h6 class="mb-2"><i class="fa fa-filter text-warning"></i> Filter Applied</h6>
                        <p class="fs-11">
                          <span>
                            <span class="text-grey">Person Name :</span>
                            <span class="bold"><?php echo IfRequested("GET", "DataPersonFullName", "All", false);  ?></span>
                          </span>
                          <span>
                            <span class="text-grey">Phone Number :</span>
                            <span class="bold"><?php echo IfRequested("GET", "DataPersonPhoneNumber", "All", false);  ?></span>
                          </span>
                          <span>
                            <span class="text-grey">Data Status :</span>
                            <span class="bold"><?php echo IfRequested("GET", "DataPersonStatus", "All", false);  ?></span>
                          </span>
                          <span>
                            <span class="text-grey">Source :</span>
                            <span class="bold"><?php echo IfRequested("GET", "DataPersonSource", "All", false);  ?></span>
                          </span>
                          <span>
                            <span class="text-grey">Created At :</span>
                            <span class="bold"><?php echo IfRequested("GET", "DataCreatedAt", "All", false);  ?></span>
                          </span>
                          <span>
                            <span class="text-grey">Managed By :</span>
                            <span class="bold"><?php $userid = IfRequested("GET", "DataManagedBy", "All", false);
                                                echo FETCH("SELECT UserFullName FROM users where UserId='$userid'", "UserFullName") ?></span>
                          </span>
                        </p>
                        <a href="index.php" class="btn btn-xs btn-danger fs-11 pull-right" style="margin-top:-5.3em !important;">Clear Filter <i class="fa fa-times"></i></a>
                      </div>
                    </div>
                  <?php }
                  ?>
                  <div class="row">
                    <?php
                    $listcounts = 10;
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
                    //$GetLeads = _DB_COMMAND_($LeadSql . " LIMIT $start, $listcounts", true); 
                    ?>
                    <div class="col-md-12" id="lead-content">
                      <center>
                        <i class="fa fa-spinner fa-spin h1 text-center"></i> <br>Loding Details........ <br>
                      </center>
                    </div>
                    <?php PaginationFooter($TotalItems, "index.php"); ?>
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
    $(document).ready(function() {
      $.ajax({
        url: "FetchAllData.php",
        type: "POST",
        data: {
          view_page: "<?php echo $page; ?>",
          Lead_Sql: "<?php echo $LeadSql; ?>",
          TotalLeads: "<?php echo $TotalItems; ?>",
          ListCount: "<?php echo $listcounts; ?>",
        },
        success: function(data) {
          $('#lead-content').html(data);
        }
      })
    });
  </script>
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

    function changeInputType() {
      var input = document.getElementById('datechange');
      input.type = 'date';
      input.removeEventListener('click', function() {
        changeInputType();
      });
    }
  </script>
  <?php include $Dir . "/assets/FooterFiles.php"; ?>
</body>

</html>