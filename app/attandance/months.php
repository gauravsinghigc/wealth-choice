<?php

//required files
$Dir = "../..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';



//page variables
$PageName = "Month Attandance @ ";

if (isset($_GET['date'])) {
  $PageName .= DATE_FORMATES("M, Y", $_GET['date']);
} else {
  $PageName .= DATE_FORMATES("M, Y", date('Y-m-d'));
}
if (isset($_GET['month'])) {
  $VIEW_FOR_MONTH = $_GET['month'];
} else {
  $VIEW_FOR_MONTH = date('Y-m');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo $PageName; ?> | <?php echo APP_NAME; ?></title>
  <?php include $Dir . '/assets/HeaderFiles.php'; ?>
</head>

<body class="hold-transition sidebar-mini">
  <div class="wrapper">
    <?php  ?>
    <?php
    include $Dir . "/include/app/Header.php";
    include $Dir . "/include/sidebar/get-side-menus.php";
    include $Dir . "/include/app/Loader.php"; ?>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="card card-primary">
            <div class="card-body">
              <div class="row">
                <?php include "common/top-menus.php"; ?>
              </div>

              <div class="row">
                <div class="col-md-4">
                  <h4 class="app-heading mb-2"><?php echo $PageName; ?></h4>
                  <div class="form">
                    <form>
                      <input type='search' onchange="form.submit()" name='UserId' value='<?php echo IfRequested("GET", "UserId", '', false); ?>' placeholder="Search Users..." class="form-control" oninput='SearchData("searching", "data-records")' id='searching'>
                    </form>
                  </div>
                  <form class='data-display'>
                    <?php
                    $AllUsers = _DB_COMMAND_("SELECT UserId, UserFullName, UserPhoneNumber, UserEmailId FROM users where UserStatus='1' ORDER BY UserFullName ASC", true);
                    if ($AllUsers == null) {
                      NoData("No Users found!");
                    } else {
                      foreach ($AllUsers as $User) {
                        if (isset($_GET['ReqUserId'])) {
                          if ($_GET['ReqUserId'] == $User->UserId) {
                            $Checked = 'checked';
                          } else {
                            $Checked = "";
                          }
                        } else {
                          $Checked = "";
                        }
                    ?>
                        <label for="UserId_<?php echo $User->UserId; ?>" class='data-list data-records m-b-3'>
                          <div class="flex-s-b">
                            <div class="w-pr-20">
                              <img src="<?php echo GetUserImage($User->UserId); ?>" class="img-fluid">
                            </div>
                            <div class="text-left w-pr-80 p-1">
                              <p>
                                <span class="h6 mt-0"><?php echo $User->UserFullName; ?></span><br>
                                <span class="text-gray small">
                                  <span><?php echo $User->UserPhoneNumber; ?></span><br>
                                  <span><?php echo $User->UserEmailId; ?></span><br>
                                  <span>
                                    <span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpJoinedId", "UserMainUserId='" . $User->UserId . "'"); ?></span>
                                    (<span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpGroupName", "UserMainUserId='" . $User->UserId  . "'"); ?></span>)
                                    |
                                    <span class="text-gray"><?php echo GET_DATA("user_employment_details", "UserEmpType", "UserMainUserId='" . $User->UserId  . "'"); ?></span>
                                    -
                                    <span class="text-gray"><?php echo UserLocation($User->UserId); ?></span>
                                  </span>
                                </span>
                                <input required='' <?php echo $Checked; ?> onchange="form.submit()" type="radio" id="UserId_<?php echo $User->UserId; ?>" name="ReqUserId" class="pull-right" value='<?php echo $User->UserId; ?>'>
                              </p>
                            </div>
                          </div>
                        </label>
                    <?php
                      }
                    } ?>
                  </form>
                </div>

                <div class='col-md-8'>
                  <h4 class='app-heading'>User Monthly Attandance Record</h4>
                  <?php if (isset($_GET['ReqUserId'])) {
                    $RequestingUserId = $_GET['ReqUserId'];
                  ?>
                    <div class='flex-s-b'>
                      <div class='w-pr-10'>
                        <img src='<?php echo GetUserImage($RequestingUserId); ?>' class='img-fluid'>
                      </div>
                      <div class='w-pr-70 text-left'>
                        <div class='p-1'>
                          <?php echo UserDetails($RequestingUserId); ?>
                        </div>
                      </div>
                      <div class="w-pr-30 text-right">
                        <a href="<?php echo APP_URL; ?>/payroll/?ReqUserId=<?php echo IfRequested("GET", "ReqUserId", "0", false); ?>" class='btn btn-sm btn-success'><i class='fa fa-inr'></i> View Salary & Payroll</a>
                      </div>
                    </div>

                    <div class='row'>
                      <div class='col-md-12'>
                        <div class='flex-s-b attandance-widget'>
                          <div class='p-2'>
                            <h2 class='mb-0 presents'>
                              <?php
                              $Presents = UserShortLeaves($VIEW_FOR_MONTH, $RequestingUserId) + UserMeetings($VIEW_FOR_MONTH, $RequestingUserId) + UserHalfDay($VIEW_FOR_MONTH, $RequestingUserId) + UserLateRecords($VIEW_FOR_MONTH, $RequestingUserId) + UserPresents($VIEW_FOR_MONTH, $RequestingUserId);
                              echo $Presents;
                              ?>
                            </h2>
                            <p class='text-secondary mt-0 text-uppercase'>Net Presents</p>
                          </div>
                          <div class='p-2'>
                            <h2 class='mb-0 presents'>
                              <?php
                              $Presents = UserPresents($VIEW_FOR_MONTH, $RequestingUserId);
                              echo $Presents;
                              ?>
                            </h2>
                            <p class='text-secondary mt-0 text-uppercase'>Presents</p>
                          </div>
                          <div class='p-2'>
                            <h2 class='mb-0 absants'>
                              <?php
                              $Absants = UserAbsants($VIEW_FOR_MONTH, $RequestingUserId);
                              echo $Absants;
                              ?>
                            </h2>
                            <p class='text-secondary mt-0 text-uppercase'>Absants</p>
                          </div>
                          <div class='p-2'>
                            <h2 class='mb-0 late'>
                              <?php
                              $Late = UserLateRecords($VIEW_FOR_MONTH, $RequestingUserId);
                              echo $Late; ?>
                            </h2>
                            <p class='text-secondary mt-0 text-uppercase'>Late</p>
                          </div>
                          <div class='p-2'>
                            <h2 class='mb-0 half-day'>
                              <?php
                              $Late = UserHalfDay($VIEW_FOR_MONTH, $RequestingUserId);
                              echo $Late; ?>
                            </h2>
                            <p class='text-secondary mt-0 text-uppercase'>HALF Day</p>
                          </div>
                          <div class='p-2'>
                            <h2 class='mb-0 leaves'>
                              <?php
                              $Leaves = UserLeaves($VIEW_FOR_MONTH, $RequestingUserId);
                              echo $Leaves;
                              ?>
                            </h2>
                            <p class='text-secondary text-uppercase mb-0'>Leaves</p>
                          </div>
                          <div class='p-2'>
                            <h2 class='mb-0 shortLeaves'>
                              <?php
                              $ShortLeaves = UserShortLeaves($VIEW_FOR_MONTH, $RequestingUserId);
                              echo $ShortLeaves;
                              ?>
                            </h2>
                            <p class='text-secondary text-uppercase mb-0'>Short Leaves</p>
                          </div>
                          <div class='p-2'>
                            <h2 class="mb-0 meetings">
                              <?php echo $Meetings = UserMeetings($VIEW_FOR_MONTH, $RequestingUserId); ?>
                            </h2>
                            <p class='text-secondary text-uppercase mb-0'>ODs</p>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class='row'>
                      <div class='col-md-12 mt-2'>
                        <div class='calendar'>
                          <?php
                          // Define the month and year
                          if (isset($_GET['month'])) {
                            $months = date("m", strtotime($_GET['month']));
                            $years = date("Y", strtotime($_GET['month']));
                          } else {
                            $months = date("m");
                            $years = date("Y");
                          }
                          $month = $months;
                          $year = $years;
                          $timestamp = mktime(0, 0, 0, $month, 1);

                          // Format the timestamp to retrieve the month name using date()
                          $month_name = date('F', $timestamp);

                          // Get the number of days in the month
                          $days_in_month = cal_days_in_month(CAL_GREGORIAN, $month, $year);

                          // Get the first day of the month
                          $first_day = date('N', strtotime("$year-$month-01"));

                          // Create an array of month names
                          $month_names = [
                            1 => 'January', 2 => 'February', 3 => 'March', 4 => 'April',
                            5 => 'May', 6 => 'June', 7 => 'July', 8 => 'August',
                            9 => 'September', 10 => 'October', 11 => 'November', 12 => 'December'
                          ];
                          $inputmonthyear = "$year-$months";
                          $inputmonthyear = date("Y-m", strtotime($inputmonthyear));
                          ?>
                          <div class="flex-s-b">
                            <div>
                              <h2><?php echo $month_name; ?>, <?php echo date('Y', strtotime($year)); ?></h2>
                            </div>
                            <div>
                              <form>
                                <input type='hidden' name='ReqUserId' class="form-control" value='<?php echo IfRequested("GET", "ReqUserId", $RequestingUserId, false); ?>'>
                                <input type='month' onchange="form.submit()" value='<?php echo IfRequested("GET", 'month', $inputmonthyear, false); ?>' name='month' class='form-control'>
                              </form>
                            </div>
                          </div>
                          <?php
                          // Display the calendar table
                          echo "<table class='w-100 attandance-days'>";
                          echo "<tr>";
                          echo "<th>Sun</th>";
                          echo "<th>Mon</th>";
                          echo "<th>Tue</th>";
                          echo "<th>Wed</th>";
                          echo "<th>Thu</th>";
                          echo "<th>Fri</th>";
                          echo "<th>Sat</th>";
                          echo "</tr>";

                          // Display the calendar days
                          echo "<tr>";

                          // Add empty cells for the days before the first day of the month
                          for ($i = 0; $i < $first_day; $i++) {
                            echo "<td></td>";
                          }

                          // Display the days of the month
                          $day = 1;
                          while ($day <= $days_in_month) {
                            $RunningDates = "$year-$month-$day";

                            //check presance
                            $SqlForPresentRecord = "SELECT * FROM user_attandance_check_in, user_attandance_check_out where user_attandance_check_in.check_in_id=user_attandance_check_out.check_out_main_check_in_id and user_attandance_check_in.check_in_main_user_id=user_attandance_check_out.check_out_main_user_id and check_in_main_user_id='$RequestingUserId' and DATE(check_in_date_time)='$RunningDates' and check_in_status='true' and check_in_time_status='true' and DATE(check_out_date_time)='$RunningDates' and check_out_status='true' and check_out_time_status='true'";
                            if (CHECK($SqlForPresentRecord) != null) {
                              $dateStatus = "presents2";
                            } else {

                              //check absants
                              $SqlForAbsantsRecord = "SELECT * FROM user_attandance_check_in where check_in_main_user_id='$RequestingUserId' and check_in_time_status='ABSANT' and DATE(check_in_date_time)='$RunningDates'";
                              if (CHECK($SqlForAbsantsRecord) != null) {
                                $dateStatus = "absants2";
                              } else {

                                //check late
                                $SqlForLateRecord = "SELECT * FROM user_attandance_check_in where check_in_main_user_id='$RequestingUserId' and DATE(check_in_date_time)='$RunningDates' and check_in_status='true' and check_in_time_status='LATE'";
                                if (CHECK($SqlForLateRecord) != null) {
                                  $dateStatus = "late2";
                                } else {

                                  //check for half day
                                  $SqlForHalfDayRecord = "SELECT * FROM user_attandance_check_in where check_in_main_user_id='$RequestingUserId' and DATE(check_in_date_time)='$RunningDates' and check_in_status='true' and check_in_time_status='HALF'";
                                  if (CHECK($SqlForHalfDayRecord) != null) {
                                    $dateStatus = "half-day-2";
                                  } else {

                                    //check leaves
                                    $CheckLeavesSql = "SELECT * FROM user_attandance_check_in WHERE check_in_main_user_id='$RequestingUserId' and DATE(check_in_date_time)='$RunningDates' and check_in_time_status like '%LEAVE%'";
                                    if (CHECK($CheckLeavesSql) != null) {
                                      $dateStatus = "leaves2";
                                    } else {

                                      //check meetings
                                      $CheckMeetingsSql = "SELECT * FROM user_attandance_check_in WHERE check_in_main_user_id='$RequestingUserId' and DATE(check_in_date_time)='$RunningDates' and check_in_time_status='OD'";
                                      if (CHECK($CheckMeetingsSql) != null) {
                                        $dateStatus = "meetings2";
                                      } else {

                                        //check holidays
                                        $ChechHolidays = CHECK("SELECT * FROM config_holidays where DATE(ConfigHolidayFromDate)='$RunningDates'");
                                        if ($ChechHolidays != null) {
                                          $dateStatus = "holidays";
                                        } else {

                                          //short leaves
                                          $CheckLeavesSql = "SELECT * FROM user_attandance_check_in WHERE check_in_main_user_id='$RequestingUserId' and DATE(check_in_date_time)='$RunningDates' and check_in_time_status like '%SHORT%'";
                                          if (CHECK($CheckLeavesSql) != null) {
                                            $dateStatus = "shortLeaves2";
                                          } else {
                                            $dateStatus = "";
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }

                            echo "<td><span class='$dateStatus'>{$day}</span></td>";

                            // Start a new row every 7 days (Sunday)
                            if (($day + $first_day) % 7 == 0) {
                              echo "</tr><tr>";
                            }

                            $day++;
                          }

                          // Add empty cells for the days after the last day of the month
                          while (($day + $first_day - 1) % 7 != 0) {
                            echo "<td></td>";
                            $day++;
                          }

                          echo "</tr>";
                          echo "</table>";

                          if (isset($_GET['month'])) {
                            echo "<a href='months.php?ReqUserId=$RequestingUserId' class='btn btn-xs mt-3 btn-danger'><i class='fa fa-calendar'></i> View Current Month</a>";
                          }
                          ?>
                          <p class='mt-3 text-right'><i class='fa fa-circle'></i> is for holidays</p>
                        </div>
                      </div>

                    </div>
                  <?php
                  } else {
                    NoData("<h3>Please select user first!</h3><p class='text-secondary'>monthly attandance record will be displayed accordingly!</p>");
                  } ?>
                </div>
              </div>

            </div>
            <!--End page content-->
          </div>
        </div>
      </section>
    </div>

    <?php include $Dir . "/include/app/Footer.php"; ?>
  </div>

  <?php include $Dir . "/assets/FooterFiles.php"; ?>

</body>

</html>