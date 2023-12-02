<?php
if (LOGIN_UserType == "HR" ||  LOGIN_UserType == "Admin") {
  $CheckLeaves = CHECK("SELECT UserLeaveStatus, UserLeaveFromDate FROM user_leaves where UserLeaveStatus='NEW' ORDER by DATE(UserLeaveFromDate) DESC");
  if ($CheckLeaves != null) {
    if (isset($_GET['hide_Leave_pop'])) {
      $_SESSION['hide_Leave_pop'] = "none";
      $displayLeave = "none";
    } else {
      if (isset($_SESSION['hide_Leave_pop'])) {
        $displayLeave = $_SESSION['hide_Leave_pop'];
      } else {
        $displayLeave = "block";
      }
    }
?>
    <section class="follow-up-reminder" id='LeaveRequestFormHide' style="display:<?php echo $displayLeave; ?>;">
      <div class="reminder-box w-100">
        <div class="container">
          <div class="card p-2" style="background-color: #fff5ed !important;">
            <div class="row">
              <div class='col-md-12'>
                <h5 class='app-heading'>Leave Requests</h5>
              </div>
              <div style="height:30em !important;overflow-y:scroll;width:100%;">
                <?php
                $start = START_FROM;
                $listcounts = DEFAULT_RECORD_LISTING;

                $ALLData = _DB_COMMAND_("SELECT UserLeaveId, UserLeaveStatus, UserLeaveFromDate, UserMainId, UserLeaveFromDate, UserLeaveToDate, UserLeaveReJoinDate, UserLeaveReason  FROM user_leaves where UserLeaveStatus='NEW' ORDER by DATE(UserLeaveFromDate) DESC", true);
                if ($ALLData != null) {
                  $SerialNo = SERIAL_NO;
                  foreach ($ALLData as $Data) {
                ?>
                    <div class='data-list od-section'>
                      <div class='od-details'>
                        <p class="flex-s-b mb-0">
                          <span class="w-pr-25">
                            <b class="bold h6"><?php echo GET_DATA("users", "UserFullName", "UserId='" . $Data->UserMainId . "'"); ?></b><br>
                            <span class="bold text-secondary"><?php echo GET_DATA("users", "UserPhoneNumber", "UserId='" . $Data->UserMainId . "'"); ?></span>
                            <br>
                            <span class="small">
                              <span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpJoinedId", "UserMainUserId='" . $Data->UserMainId . "'"); ?></span>
                              (<span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpGroupName", "UserMainUserId='" . $Data->UserMainId . "'"); ?></span>)
                              <br>
                              <span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpType", "UserMainUserId='" . $Data->UserMainId . "'"); ?></span>
                              -
                              <span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpLocations", "UserMainUserId='" . $Data->UserMainId . "'"); ?></span>
                              <br>
                            </span>
                          </span>
                          <span class="w-pr-25">
                            <span class='text-gray'>Leave Period</span><br>
                            <span class="bold">
                              <i class="fa fa-calendar text-danger"></i>
                              <?php echo DATE_FORMATES("d M, Y", $Data->UserLeaveFromDate); ?>
                              -
                              <?php echo DATE_FORMATES("d M, Y", $Data->UserLeaveToDate); ?>
                            </span><br>
                            <span><i class="fa fa-calendar-day text-success"></i>
                              <?php echo DaysBetweenDates($Data->UserLeaveFromDate, $Data->UserLeaveToDate); ?>
                              days
                            </span><br>
                            <span><i class="fa fa-refresh text-warning"></i>
                              <span class="text-secondary">Re-Join :</span>
                              <?php echo DATE_FORMATES("d M, Y", $Data->UserLeaveReJoinDate); ?>
                            </span>
                          </span>
                          <span class="w-pr-25 pt-2">
                            <br>
                            <span class='members'>
                              <span class="p-2 mt-2">
                                <span class='member-count'><i class='fa fa-eye'></i></span>
                              </span>
                              <span class='record-list'>
                                <span class='list text-black'>
                                  <?php echo SECURE($Data->UserLeaveReason, "d"); ?>
                                </span>
                              </span>
                            </span>
                          </span>
                          <span class="w-pr-25 pt-1">
                            <span><b>Reporting Manager</b><br>
                              <?php
                              $RPID = FETCH("SELECT * FROM user_employment_details where UserMainUserId='" . $Data->UserMainId . "'", "UserEmpReportingMember");
                              echo UserDetails($RPID); ?>
                            </span>
                          </span>
                        </p>
                      </div>
                      <div class='od-action'>
                        <?php if ($Data->UserLeaveStatus == "NEW") { ?>
                          <form action="<?php echo CONTROLLER; ?>" method="POST">
                            <?php FormPrimaryInputs(true, [
                              "UserLeaveId" => $Data->UserLeaveId
                            ]); ?>
                            <button name="ApproveLeaveRequests" class="btn btn-xs btn-success text-white">
                              <span class="text-white">
                                <i class='fa fa-check'></i>
                              </span>
                            </button>
                          </form>
                          <form action="<?php echo CONTROLLER; ?>" method="POST">
                            <?php FormPrimaryInputs(true, [
                              "UserLeaveId" => $Data->UserLeaveId
                            ]); ?>
                            <button name="RejectLeaveRequests" class="btn btn-xs btn-danger text-white">
                              <span class="text-white">
                                <i class='fa fa-times'></i>
                              </span>
                            </button>
                          </form>
                          <?php } else {
                          if ($Data->UserLeaveStatus == "APPROVED") { ?>
                            <span class="btn btn-xs btn-success">APPROVED</span>
                          <?php } else { ?>
                            <span class="btn btn-xs btn-danger">REJECTED</span>
                        <?php }
                        } ?>
                        <a onclick="Databar('update-leave-records-<?php echo $Data->UserLeaveId; ?>')" class="btn btn-xs btn-info text-white m-l-2">
                          <span class="text-white">
                            <i class='fa fa-eye'></i>
                          </span>
                        </a>
                      </div>
                    </div>
                <?php
                    include $Dir . "/include/forms/Update-Leave-Details.php";
                  }
                } else {
                  NoData("No leave Found!");
                }
                ?>
              </div>
              <div class='col-md-12 mt-4 text-center'>
                <a href="?hide_Leave_pop=false" onclick="Databar('LeaveRequestFormHide')" class="btn btn-danger btn-sm" style="border-radius:2rem !important;"><i class='fa fa-times'></i> Hide Window </a>
              </div>

              <!-- birthday animations -->
            </div>
          </div>
        </div>
      </div>
    </section>
<?php }
}
?>