<?php
$Dir = "../..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';


//pagevariables
$PageName = "ADD New Lead";
$PageDescription = "Manage all leads";
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title><?php echo $PageName; ?> | <?php echo APP_NAME; ?></title>
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
  <meta name="keywords" content="<?php echo APP_NAME; ?>">
  <meta name="description" content="<?php echo SECURE(SHORT_DESCRIPTION, "d"); ?>">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/14.6.4/nouislider.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/noUiSlider/14.6.4/nouislider.min.js"></script>

  <?php include $Dir . "/assets/HeaderFiles.php"; ?>
  <script type="text/javascript">
    function SidebarActive() {

      document.getElementById("leads_add").classList.add("active");
    }
    window.onload = SidebarActive;
  </script>
  <style>
    .form-group {
      margin-bottom: 0px !important;
    }
  </style>
  <style>
    /* Add some basic styling to the range slider */
    #slider-container {
      width: 80%;
    }

    #slider {
      margin-top: 20px;
      background-color: black !important;
    }
  </style>

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
          <div class="card">
            <div class="card-body">
              <div class="row">
                <div class="col-md-12">
                  <h4 class="app-heading"><?php echo $PageName; ?> <small>|
                      <?php echo $PageDescription; ?></small></h4>
                </div>
              </div>

              <div class="col-md-12">
                <div class="text-center">
                  <span class="btn btn-default m-1 bold" onclick="showElement('residential');">For Residential</span>
                  <span class="btn btn-default m-1 bold" onclick="showElement('commercial');">For Commercial</span>
                  <span class="btn btn-default m-1 bold" onclick="showElement('agriculture');">For Agriculture</span>
                  <a href="index.php" class="btn btn-warning m-1 bold">Back To All Leads</a>
                </div>
              </div>
              <div id="residential" class="hidden">
                <?php include "residentialLeadForm.php"; ?>
              </div>
              <div id="commercial" class="hidden">
                <?php include "commercialLeadForm.php"; ?>
              </div>
              <div id="agriculture" class="hidden">
                <?php include "agricultureLeadForm.php"; ?>
              </div>

            </div>
          </div>
        </div>
      </section>
    </div>
    <?php include $Dir . "/include/app/Footer.php"; ?>
  </div>
  </script>
  <?php include $Dir . "/assets/FooterFiles.php"; ?>

</body>

</html>