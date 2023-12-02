<?php
$CheckODs = CHECK("SELECT ODFormStatus, OdTeamLeaderId, OdFormId FROM od_forms where ODFormStatus='NEW' and OdTeamLeaderId='" . LOGIN_UserId . "' ORDER by OdFormId DESC");
if ($CheckODs != null) {
  if (isset($_GET['hide_od_pop'])) {
    $_SESSION['hide_od_pop'] = "none";
    $displayOD = "none";
  } else {
    if (isset($_SESSION['hide_od_pop'])) {
      $displayOD = $_SESSION['hide_od_pop'];
    } else {
      $displayOD = "block";
    }
  }
?>
  <section class="follow-up-reminder" style="display:<?php echo $displayOD; ?>;">
    <div class="reminder-box w-100">
      <div class="container">
        <div class="card p-2" style="background-color: #fff5ed !important;">
          <div class="row">
            <div class='col-md-12'>
              <h5 class='app-heading'>OD Requests</h5>
            </div>
            <div style="height:30em !important;overflow-y:scroll;width:100%;">
              <?php
              $ALLData = _DB_COMMAND_("SELECT OdRequestDate, OdBriefReason, ODFormStatus, OdTeamLeaderId, OdFormId, OdMainUserId,  OdPermissionTimeFrom, OdPermissionTimeTo   FROM od_forms where ODFormStatus='NEW' and OdTeamLeaderId='" . LOGIN_UserId . "' ORDER by OdFormId DESC", true);
              if ($ALLData != null) {
                $SerialNo = SERIAL_NO;
                foreach ($ALLData as $Data) {
                  $ODStatus = ODStatus($Data->ODFormStatus);
              ?>
                  <div class='data-list od-section <?php echo $ODStatus; ?>'>
                    <div class="u-profile">
                      <img src="<?php echo GetUserImage($Data->OdMainUserId); ?>" class='img'>
                    </div>
                    <div class='od-details'>
                      <p class="flex-s-b mb-0">
                        <span class="w-pr-50">
                          <span class="bold h6"><?php echo GET_DATA("users", "UserFullName", "UserId='" . $Data->OdMainUserId . "'"); ?></span>
                          <br>
                          <span class="small">
                            <span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpJoinedId", "UserMainUserId='" . $Data->OdMainUserId . "'"); ?></span>
                            (<span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpGroupName", "UserMainUserId='" . $Data->OdMainUserId . "'"); ?></span>)
                            <br>
                            <span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpType", "UserMainUserId='" . $Data->OdMainUserId . "'"); ?></span> -
                            <span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpLocations", "UserMainUserId='" . $Data->OdMainUserId . "'"); ?></span>
                          </span>
                        </span>
                        <span class="w-pr-50">
                          <span class='text-gray'>OD Date & Time</span><br>
                          <span class="bold">
                            <i class="fa fa-calendar text-danger"></i> <?php echo DATE_FORMATES("d M, Y", $Data->OdRequestDate); ?><br>
                            <i class="fa fa-clock text-warning"></i> <?php echo DATE_FORMATES("h:i A", $Data->OdPermissionTimeFrom); ?> to
                            <?php echo DATE_FORMATES("h:i A", $Data->OdPermissionTimeTo); ?>
                          </span>
                        </span>
                        <span class="w-pr-75">
                          <span class='text-gray'>Reason </span><br>
                          <span class="bold">
                            <?php echo SECURE($Data->OdBriefReason, "d"); ?>
                          </span>
                        </span>
                      </p>
                    </div>
                    <div class='od-action'>
                      <form>
                        <button type='button' onclick="Databar('Update_<?php echo $Data->OdFormId; ?>')" class="btn btn-xs btn-info text-white"><span class="text-white"><i class='fa fa-eye'></i></span></button>
                      </form>
                      <?php
                      if ($Data->ODFormStatus == "NEW") { ?>
                        <form action='<?php echo CONTROLLER; ?>' method="POST">
                          <?php FormPrimaryInputs(true, [
                            "OdFormId" => $Data->OdFormId,
                            "Status" => "APPROVED",
                          ]); ?>
                          <button type="submit" name='UpdateODRequestStatus' class="btn btn-xs btn-success text-white"><span class="text-white"><i class='fa fa-check'></i></span></button>
                        </form>
                        <form action='<?php echo CONTROLLER; ?>' method="POST">
                          <?php FormPrimaryInputs(true, [
                            "OdFormId" => $Data->OdFormId,
                            "Status" => "REJECTED",
                          ]); ?>
                          <button type="submit" name='UpdateODRequestStatus' class="btn btn-xs btn-danger text-white"><span class="text-white"><i class='fa fa-times'></i></span></button>
                        </form>
                      <?php } else {
                      ?>
                        <form>
                          <button type='button' class="btn btn-xs <?php echo $ODStatus; ?> text-white"><?php echo $Data->ODFormStatus; ?></button>
                        </form>
                      <?php
                      } ?>
                    </div>
                  </div>
              <?php
                  include $Dir . "/include/forms/Update-OD-Request.php";
                }
              } else {
                NoData("No OD Found!");
                $ALLData = [];
              }
              ?>
            </div>
            <div class='col-md-12 mt-4 text-center'>
              <a href="?hide_od_pop=false" class="btn btn-danger btn-sm" style="border-radius:2rem !important;"><i class='fa fa-times'></i> Hide Window </a>
            </div>

            <!-- birthday animations -->
          </div>
        </div>
      </div>
    </div>
  </section>
<?php }
?>