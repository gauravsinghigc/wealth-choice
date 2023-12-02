<?php
$Dir = "../../";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';


//pagevariables
$PageName = "Location Configurations";
$PageDescription = "Manage System Profile, address, logo";
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
      document.getElementById("config_hr").classList.add("active");
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
                    <div class="col-md-3">
                      <h4 class="app-heading">System Settings</h4>
                      <?php include "common.php"; ?>
                    </div>

                    <div class="col-md-9">
                      <h4 class="app-heading"><?php echo $PageName; ?></h4>

                      <div class="row">
                        <div class="col-md-12">
                          <div class="shadow-sm p-1">
                            <div class="flex-s-b">
                              <h5 class="mb-0 p-1">Office Locations</h5>
                              <a href="#" onclick="Databar('AddNewLocations')" class="btn btn-xs btn-danger"><i class='fa fa-plus'></i> Locations</a>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <?php
                        $AllLocations = _DB_COMMAND_("SELECT * FROM config_locations ORDER BY config_location_id DESC", true);
                        if ($AllLocations != null) {
                          foreach ($AllLocations as $Location) {
                        ?>
                            <div class="col-md-6">
                              <form class="row shadow-sm" action="<?php echo CONTROLLER("SystemController/ConfigController.php"); ?>" method="POST">
                                <?php FormPrimaryInputs(true, [
                                  "config_location_id" => $Location->config_location_id
                                ]); ?>
                                <div class="col-md-12">
                                  <div class="row">
                                    <div class="form-group col-md-6">
                                      <label>Location Name</label>
                                      <input type="text" required name="config_location_name" value='<?php echo $Location->config_location_name; ?>' class="form-control">
                                    </div>

                                    <div class="form-group col-md-6">
                                      <label>Location Status</label>
                                      <select class="form-control " name='config_location_status' required>
                                        <?php echo InputOptionsWithKey(['1' => 'Active', '0' => "Inactive"], $Location->config_location_status); ?>
                                      </select>
                                    </div>

                                    <div class="form-group col-md-6">
                                      <label>Location Latitude</label>
                                      <input type="text" placeholder="28.XXXXXXXX" value='<?php echo $Location->config_location_Latitude; ?>' required name="config_location_Latitude" class="form-control">
                                    </div>

                                    <div class="form-group col-md-6">
                                      <label>Location Longitude</label>
                                      <input type="text" placeholder="77.XXXXXXXXX" value='<?php echo $Location->config_location_Longitude; ?>' required name="config_location_Longitude" class="form-control">
                                    </div>

                                    <div class="form-group col-md-12">
                                      <label>Location Address </label>
                                      <textarea name="config_location_address" class="form-control" rows="5"><?php echo SECURE($Location->config_location_address, "d"); ?></textarea>
                                    </div>

                                  </div>
                                </div>

                                <div class="col-md-12 text-right">
                                  <button type="submit" name="UpdateOfficeLocations" class="btn btn-sm btn-success"><i class="fa fa-check"></i> Update Details</button>
                                </div>
                              </form>
                            </div>
                        <?php
                          }
                        } else {
                          NoData("No locations found!");
                        } ?>
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
    include $Dir . "/include/forms/Add-New-Office-Locations.php";
    include $Dir . "/include/app/Footer.php"; ?>
  </div>

  <?php include $Dir . "/assets/FooterFiles.php"; ?>

</body>

</html>