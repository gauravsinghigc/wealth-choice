<?php
require __DIR__ . "/../acm/SysFileAutoLoader.php";

$CurrentDate = date("Y-m-d");
$FetchAtt = _DB_COMMAND_("SELECT * FROM user_attandance_check_in where DATE(check_in_date_time)<'$CurrentDate'", true);
if ($FetchAtt != null) {
  foreach ($FetchAtt as $FATD) {
    $CheckDateTime = date("Y-m-d", strtotime($FATD->check_in_date_time));
    $ReqUserId = $FATD->check_in_main_user_id;
    $CheckPunchOUT = CHECK("SELECT * FROM user_attandance_check_out where check_out_main_user_id='$ReqUserId' and DATE(check_out_date_time)='$CheckDateTime'");
    if ($CheckPunchOUT == null) {
      $PunchOutDateTime = "$CheckDateTime " . OFFICE_END_TIME;
      $PunchOutDateTime = date("Y-m-d h:i:s A", strtotime($PunchOutDateTime));
      $Response = INSERT("user_attandance_check_out", [
        "check_out_main_user_id" => $FATD->check_in_main_user_id,
        "check_out_location_longitude" => "",
        "check_out_location_latitude" => "",
        "check_out_date_time" => $PunchOutDateTime,
        "check_out_ip_address" => IP_ADDRESS,
        "check_out_device_info" => SECURE(SYSTEM_INFO, "d"),
        "check_out_created_at" => CURRENT_DATE_TIME,
        "check_out_created_by" => $FATD->check_in_main_user_id,
        "check_out_status" => "true",
        "check_out_distance" => "0",
        "check_out_time_status" => "true",
        "check_out_main_check_in_id" => $FATD->check_in_id,
      ]);
    }
  }
}
