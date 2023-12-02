<?php
$Dir = "../../";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';


//pagevariables
$PageName = "Mail Settings";
$PageDescription = "Manage your application Advance Settings";
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
      document.getElementById("configs").classList.add("active");
      document.getElementById("config_mails").classList.add("active");
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
                        <div class="col-md-6 col-lg-6 col-sm-6 col-12">
                          <div class="shadow-sm p-2 rounded">
                            <form class="form row" action="<?php echo CONTROLLER("SystemController/ConfigController.php"); ?>" method="POST">
                              <?php FormPrimaryInputs(true); ?>
                              <div class="form-group form-group-2 col-md-12">
                                <h5 class="app-sub-heading">Mail Function</h5>
                                <select name="CONTROL_MAILS" onchange="enablemails()" id="mailingstatus" class="form-control " required="">
                                  <?php
                                  $mailstatus = CONTROL_MAILS;
                                  if ($mailstatus == "true") { ?>
                                    <option value="false">Disabled</option>
                                    <option value="true" selected="">Enabled</option>
                                  <?php } else { ?>
                                    <option value="false" selected="">Disabled</option>
                                    <option value="true">Enabled</option>
                                  <?php  } ?>

                                </select>
                              </div>
                              <?php if ($mailstatus == "true") {
                                $mailstatus = ""; ?>
                              <?php } else {
                                $mailstatus = "style='display:none;'";  ?>
                              <?php } ?>
                              <div id="showemailoptions" class="row p-2" <?php echo $mailstatus; ?>>
                                <div class="form-group  col-md-12">
                                  <label for="SENDER_MAIL_ID">Sender Mail-ID</label>
                                  <input type="email" name="SENDER_MAIL_ID" value="<?php echo SENDER_MAIL_ID; ?>" class="form-control  w-100">
                                </div>
                                <div class="form-group form-group-2 col-md-12 w-100">
                                  <label for="SENDER_MAIL_ID">Receiver Mail-ID</label>
                                  <input type="email" name="RECEIVER_MAIL" value="<?php echo RECEIVER_MAIL; ?>" class="form-control  w-100">
                                </div>
                                <div class="form-group form-group-2 col-md-12 w-100">
                                  <label for="SENDER_MAIL_ID">Customer Support Mail-ID</label>
                                  <input type="email" name="SUPPORT_MAIL" value="<?php echo SUPPORT_MAIL; ?>" class="form-control  w-100">
                                </div>
                                <div class="form-group form-group-2 col-md-12 w-100">
                                  <label for="SENDER_MAIL_ID">Enquiry Mail-ID</label>
                                  <input type="email" name="ENQUIRY_MAIL" value="<?php echo ENQUIRY_MAIL; ?>" class="form-control  w-100">
                                </div>
                                <div class="form-group form-group-2 col-md-12 w-100">
                                  <label for="SENDER_MAIL_ID">Admin Mail-ID</label>
                                  <input type="email" name="ADMIN_MAIL" value="<?php echo ADMIN_MAIL; ?>" class="form-control  w-100">
                                </div>
                              </div>
                              <div class="col-md-12 m-t-10 text-right">
                                <button type="Submit" name="UpdateMailConfigs" class="btn btn-md btn-primary"><i class="fa fa-check"></i> Update Details</button>
                              </div>
                            </form>
                          </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-12">
                          <div class="shadow-sm p-2 rounded">
                            <div class="row">
                              <div class="col-md-12">
                                <h5 class="app-sub-heading">SMTP Configurations</h5>
                                <p class='text-secondary'>Configure <?php echo UpperCase("Simple Mail Transfer Protocol"); ?>, for sending mails. </p>
                              </div>
                            </div>
                            <?php
                            $GetSMTP = _DB_COMMAND_("SELECT * from config_mail_sender ORDER BY config_mail_sender_id ASC limit 1", true);
                            if ($GetSMTP != null) {
                              foreach ($GetSMTP as $SMTP) { ?>
                                <form class="shadow-sm p-2 rounded" action="<?php echo CONTROLLER("SystemController/SMTPController.php"); ?>" method="POST">
                                  <?php FormPrimaryInputs(true, [
                                    "config_mail_sender_id" => $SMTP->config_mail_sender_id
                                  ]); ?>
                                  <div class="form-group">
                                    <label>SMTP Hostname *</label>
                                    <input type="text" name="config_mail_sender_host" value='<?php echo $SMTP->config_mail_sender_host; ?>' class="form-control" required>
                                  </div>
                                  <div class="form-group">
                                    <label>Username *</label>
                                    <input type="text" name="config_mail_sender_username" value='<?php echo $SMTP->config_mail_sender_username; ?>' class="form-control" required>
                                  </div>
                                  <div class="flex-s-b">
                                    <div class="form-group w-75 m-1">
                                      <label>Password *</label>
                                      <input type="text" name="config_mail_sender_password" value="<?php echo $SMTP->config_mail_sender_password; ?>" class="form-control" required>
                                    </div>
                                    <div class="form-group w-50 m-1">
                                      <label>SMTP PORT No *</label>
                                      <select name="config_mail_sender_port" class="form-control" required="">
                                        <?php echo InputOptionsWithKey([
                                          "0" => "Select Port",
                                          "25" => "25",
                                          "465" => "465",
                                          "587" => "587",
                                        ], $SMTP->config_mail_sender_port); ?>
                                      </select>
                                    </div>
                                  </div>

                                  <div class="w-100 text-right mt-2">
                                    <button class="btn btn-md btn-primary" type="submit" name="UpdateMailConfigurations">Update SMTP <i class="fa fa-check"></i></button>
                                  </div>
                                </form>
                              <?php }
                            } else { ?>
                              <form class="shadow-sm p-2 rounded" action="<?php echo CONTROLLER("SystemController/SMTPController.php"); ?>" method="POST">
                                <?php FormPrimaryInputs(true); ?>
                                <div class="form-group">
                                  <label>SMTP Hostname *</label>
                                  <input type="text" name="config_mail_sender_host" class="form-control" required>
                                </div>
                                <div class="form-group">
                                  <label>Username *</label>
                                  <input type="text" name="config_mail_sender_username" class="form-control" required>
                                </div>
                                <div class="flex-s-b">
                                  <div class="form-group w-75 m-1">
                                    <label>Password *</label>
                                    <input type="text" name="config_mail_sender_password" class="form-control" required>
                                  </div>
                                  <div class="form-group w-50 m-1">
                                    <label>SMTP PORT No *</label>
                                    <select name="config_mail_sender_port" class="form-control" required="">
                                      <?php echo InputOptionsWithKey([
                                        "0" => "Select Port",
                                        "25" => "25",
                                        "465" => "465",
                                        "587" => "587",
                                      ], "0"); ?>
                                    </select>
                                  </div>
                                </div>
                                <div class="w-100 text-right mt-2">
                                  <button class="btn btn-md btn-primary" type="submit" name="UpdateMailConfigurations">Update SMTP <i class="fa fa-check"></i></button>
                                </div>
                              </form>
                            <?php } ?>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                </div>
              </div>
              <script>
                function enablemails() {
                  var mailingstatus = document.getElementById("mailingstatus");
                  if (mailingstatus.value == "true") {
                    document.getElementById("showemailoptions").style.display = "block";
                  } else {
                    document.getElementById("showemailoptions").style.display = "none";
                  }
                }
              </script>
            </div>
          </div>
        </div>
      </section>
    </div>

    <?php include $Dir . "/include/app/Footer.php"; ?>
  </div>

  <?php include $Dir . "/assets/FooterFiles.php"; ?>

</body>

</html>