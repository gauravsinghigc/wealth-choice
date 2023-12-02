<div class="card-body">

    <div class="row">
        <div class="col-md-10">
            <h4 class="app-heading"><?php echo $PageName; ?></h4>
        </div>
        <div class="col-md-2">
            <a href="my-leaves.php" class='btn btn-sm btn-danger btn-block'>My Leaves</a>
        </div>
    </div>

    <div class="row">
        <div class="col-md-8">
            <div class="row">

                <div class="col-md-4">
                    <div class="card card-body rounded-3 p-4">
                        <div class="flex-s-b">
                            <h4 class="count mb-0 m-t-5 text-primary">
                                <?php echo TOTAL("SELECT UserLeaveId FROM user_leaves"); ?>
                            </h4>
                        </div>
                        <p class="mb-0 fs-14 text-grey">All Leaves</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card card-body rounded-3 p-4">
                        <div class="flex-s-b">
                            <h4 class="count mb-0 m-t-5 text-primary">
                                <?php echo TOTAL("SELECT UserLeaveId FROM user_leaves where UserLeaveStatus='NEW'"); ?>
                            </h4>
                        </div>
                        <p class="mb-0 fs-14 text-grey">NEW Leave Requests</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card card-body rounded-3 p-4">
                        <div class="flex-s-b">
                            <h4 class="count mb-0 m-t-5 text-primary">
                                <?php echo TOTAL("SELECT UserLeaveId FROM user_leaves where UserLeaveStatus='APPROVED'"); ?>
                            </h4>
                        </div>
                        <p class="mb-0 fs-14 text-grey">Approved Leaves</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card card-body rounded-3 p-4">
                        <div class="flex-s-b">
                            <h4 class="count mb-0 m-t-5 text-primary">
                                <?php echo TOTAL("SELECT UserLeaveId FROM user_leaves where UserLeaveStatus='REJECTED'"); ?>
                            </h4>
                        </div>
                        <p class="mb-0 fs-14 text-grey">Rejected Leaves</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card card-body rounded-3 p-4">
                        <div class="flex-s-b">
                            <h4 class="count mb-0 m-t-5 text-primary">
                                <?php echo TOTAL("SELECT UserLeaveId FROM user_leaves where UserLeaveStatus='APPROVED' AND DATE(UserLeaveFromDate)='" . date('Y-m-d') . "'"); ?>
                            </h4>
                        </div>
                        <p class="mb-0 fs-14 text-grey">Today Active Leaves</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card card-body rounded-3 p-4">
                        <div class="flex-s-b">
                            <h4 class="count mb-0 m-t-5 text-primary">
                                <?php echo TOTAL("SELECT UserLeaveId FROM user_leaves where UserLeaveStatus='APPROVED' AND DATE(UserLeaveFromDate)>='" . date('Y-m-d') . "'"); ?>
                            </h4>
                        </div>
                        <p class="mb-0 fs-14 text-grey">Upcoming Active Leaves</p>
                    </div>
                </div>
                <div class="col-md-12">
                    <hr>
                </div>

                <div class="col-md-12">
                    <h5 class="app-sub-heading">Search Leaves For</h5>
                    <form action="" class="row">
                        <div class="col-md-8 form-group">
                            <input type="search" onchange="form.submit()" placeholder="Search via name...." name="username" list="UserFullName" class='form-control ' required="">
                            <datalist id="UserFullName">
                                <?php
                                $Users = _DB_COMMAND_("SELECT * FROM users where UserStatus='1' ORDER BY UserFullName ASC", true);
                                foreach ($Users as $User) {
                                    if ($User->UserId == LOGIN_UserId) {
                                        $selected = "selected";
                                    } else {
                                        $selected = "";
                                    }
                                    echo "<option value='" . $User->UserFullName . "' $selected>" . $User->UserFullName . " @ " . $User->UserPhoneNumber . "</option>";
                                }
                                ?>
                            </datalist>
                        </div>
                        <div class="col-md-4 form-group">
                            <input type="month" name="leavemonth" onchange="form.submit()" class="form-control " value='<?php echo IfRequested("GET", "LeaveMonth", date("Y-m"), null); ?>'>
                        </div>
                    </form>
                </div>

                <div class='col-md-12'>
                    <?php
                    $start = START_FROM;
                    $listcounts = DEFAULT_RECORD_LISTING;

                    if (isset($_GET['username'])) {
                        $username = $_GET['username'];
                        $leavemonth = $_GET['leavemonth'];
                        $Month = date("m", strtotime($leavemonth));
                        $Year = date("Y", strtotime($leavemonth));
                        $ALLData = _DB_COMMAND_("SELECT * FROM user_leaves, users where user_leaves.UserMainId=users.UserId and MONTH(UserLeaveFromDate)='$Month' and YEAR(UserLeaveFromDate)='$Year' and UserFullName like '%$username%' ORDER by DATE(UserLeaveFromDate) DESC", true);
                    } else {
                        $ALLData = _DB_COMMAND_("SELECT * FROM user_leaves ORDER by DATE(UserLeaveFromDate) DESC", true);
                    }
                    if ($ALLData != null) {
                        $SerialNo = SERIAL_NO;
                        foreach ($ALLData as $Data) {
                    ?>
                            <div class='data-list od-section'>
                                <div class="u-profile">
                                    <img src="<?php echo GetUserImage($Data->UserMainId); ?>" class='img'>
                                </div>
                                <div class='od-details'>
                                    <p class="flex-s-b mb-0">
                                        <span class="w-pr-40">
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
                                            </span>
                                        </span>
                                        <span class="w-pr-50">
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
                                        <span class="w-pr-30 pt-2">
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
                                    </p>
                                </div>
                                <div class='od-action'>
                                    <?php if ($Data->UserLeaveStatus == "NEW") { ?>
                                        <form action="<?php echo CONTROLLER; ?>" method="POST">
                                            <?php FormPrimaryInputs(true, [
                                                "UserLeaveId" => $Data->UserLeaveId
                                            ]); ?>
                                            <button name="ApproveLeaveRequests" class="btn btn-xs btn-success text-white"><span class="text-white"><i class='fa fa-check'></i></span></button>
                                        </form>
                                        <form action="<?php echo CONTROLLER; ?>" method="POST">
                                            <?php FormPrimaryInputs(true, [
                                                "UserLeaveId" => $Data->UserLeaveId
                                            ]); ?>
                                            <button name="RejectLeaveRequests" class="btn btn-xs btn-danger text-white"><span class="text-white"><i class='fa fa-times'></i></span></button>
                                        </form>
                                        <?php } else {
                                        if ($Data->UserLeaveStatus == "APPROVED") { ?>
                                            <span class="btn btn-xs btn-success">APPROVED</span>
                                        <?php } elseif ($Data->UserLeaveStatus == "COMPLETED") { ?>
                                            <span class="btn btn-xs btn-primary">COMPLETED</span>
                                        <?php  } elseif ($Data->UserLeaveStatus == "ACTIVE") { ?>
                                            <span class="btn btn-xs btn-info">APPROVED</span>
                                        <?php  } else { ?>
                                            <span class="btn btn-xs btn-danger">REJECTED</span>
                                    <?php }
                                    } ?>
                                    <a onclick="Databar('update-leave-records-<?php echo $Data->UserLeaveId; ?>')" class="btn btn-xs btn-info text-white m-l-2"><span class="text-white"><i class='fa fa-eye'></i></span></a>
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
                <?php PaginationFooter(TOTAL("SELECT * FROM user_leaves ORDER by DATE(UserLeaveFromDate) DESC"), "index.php"); ?>
            </div>
        </div>

        <div class="col-md-4">
            <div class='calendar'>
                <?php echo GENERATE_CALENDAR; ?>

            </div>
        </div>

    </div>
</div>