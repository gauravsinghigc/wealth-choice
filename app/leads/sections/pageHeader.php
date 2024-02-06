<?php
if (isset($_GET['view'])) {
  $view = $_GET['view'];
  if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
    $LeadSql = "SELECT *  FROM leads WHERE LeadPersonStatus LIKE '%$view%'   GROUP BY LeadsId ORDER by LeadsId DESC ";
  } else {
    $LOGIN_UserId = LOGIN_UserId;
    $LeadSql = "SELECT * FROM leads where LeadPersonStatus LIKE '%$view%' and LeadPersonManagedBy='$LOGIN_UserId'   GROUP BY LeadsId ORDER by LeadsId DESC ";
  }
} elseif (isset($_GET['search_true'])) {
  $LeadPersonFullName = $_GET['LeadPersonFullName'];
  $LeadPersonPhoneNumber = $_GET['LeadPersonPhoneNumber'];
  $LeadPersonStatus = $_GET['LeadPersonStatus'];
  $LeadPersonSource = $_GET['LeadPersonSource'];
  $LeadType = $_GET['LeadType'];
  $LeadManagedBy = $_GET['LeadManagedBy'];
  if ($LeadManagedBy == null) {
    $Managed = "and LeadPersonManagedBy like '%$LeadManagedBy%' ";
  } else {
    $Managed = "and LeadPersonManagedBy='$LeadManagedBy' ";
  }

  if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
    $LeadSql = "SELECT * FROM leads where LeadPersonFullname like '%$LeadPersonFullName%'  and LeadPersonPhoneNumber like '%$LeadPersonPhoneNumber%' and LeadPersonStatus like '%$LeadPersonStatus%' and LeadPersonSource like '%$LeadPersonSource%' and LeadType like '%$LeadType%' $Managed  GROUP BY LeadsId ORDER BY LeadsId DESC";
  } else {
    $LOGIN_UserId = LOGIN_UserId;
    $LeadSql = "SELECT * FROM leads where LeadPersonManagedBy='$LOGIN_UserId' and LeadPersonFullname like '%$LeadPersonFullName%'  and LeadPersonPhoneNumber like '%$LeadPersonPhoneNumber%' and LeadPersonStatus like '%$LeadPersonStatus%' and LeadPersonSource like '%$LeadPersonSource%' and LeadType like '%$LeadType%'  GROUP BY LeadsId ORDER BY LeadsId DESC";
  }
} elseif (isset($_GET['sub_status'])) {
  $sub_status = $_GET['sub_status'];
  if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
    $LeadSql = "SELECT * FROM leads WHERE LeadPersonSubStatus like '%$sub_status%'  GROUP BY LeadsId ORDER by LeadsId DESC ";
  } else {
    $LOGIN_UserId = LOGIN_UserId;
    $LeadSql = "SELECT *  FROM leads where LeadPersonSubStatus like '%$sub_status%' and LeadPersonManagedBy='$LOGIN_UserId'   GROUP BY LeadsId ORDER by LeadsId DESC ";
  }
} else {
  if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
    $LeadSql = "SELECT * FROM leads   GROUP BY LeadsId ORDER by LeadsId DESC ";
  } else {
    $LOGIN_UserId = LOGIN_UserId;
    $LeadSql = "SELECT * FROM leads where LeadPersonManagedBy='$LOGIN_UserId'  GROUP BY LeadsId ORDER by LeadsId DESC ";
  }
}
$TotalItems = TOTAL($LeadSql);
