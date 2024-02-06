<?php
if (isset($_GET['view'])) {
  $view = $_GET['view'];
  if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
    $LeadSql = "SELECT DataPersonCreatedBy, DataPersonPhoneNumber, DataPersonEmailId, DataPersonStatus, DataPersonSubStatus, DataSalutations, DataPersonFullname, DataPersonManagedBy, DataPersonSource, DataPriorityLevel, DataPersonCreatedAt, DataId  FROM data WHERE DataPersonStatus LIKE '%$view%' and DataType like '%DATA%'   GROUP BY DataId ORDER by DataId DESC ";
  } else {
    $LOGIN_UserId = LOGIN_UserId;
    $LeadSql = "SELECT DataPersonCreatedBy, DataPersonPhoneNumber, DataPersonEmailId, DataPersonStatus, DataPersonSubStatus, DataSalutations, DataPersonFullname, DataPersonManagedBy, DataPersonSource, DataPriorityLevel, DataPersonCreatedAt, DataId  FROM data where DataPersonStatus LIKE '%$view%' and DataType like '%DATA%' and DataPersonManagedBy='$LOGIN_UserId'   GROUP BY DataId ORDER by DataId DESC ";
  }
} elseif (isset($_GET['search_true'])) {
  $DataPersonFullName = $_GET['DataPersonFullName'];
  $DataPersonPhoneNumber = $_GET['DataPersonPhoneNumber'];
  $DataPersonStatus = $_GET['DataPersonStatus'];
  $DataPersonSource = $_GET['DataPersonSource'];
  $DataCreatedAt = $_GET['DataCreatedAt'];
  $DataManagedBy = $_GET['DataManagedBy'];
  if ($DataManagedBy == null) {
    $Managed = "and DataPersonManagedBy like '%$DataManagedBy%' ";
  } else {
    $Managed = "and DataPersonManagedBy='$DataManagedBy' ";
  }
  if ($_GET['DataCreatedAt'] != null) {
    $date = "and Date(DataPersonCreatedAt)='$DataCreatedAt'";
  } else {
    $date = "";
  }
  if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
    $LeadSql = "SELECT * FROM data where DataPersonFullname like '%$DataPersonFullName%'  and DataPersonPhoneNumber like '%$DataPersonPhoneNumber%' and DataPersonStatus like '%$DataPersonStatus%' and DataPersonSource like '%$DataPersonSource%' and DataType like '%DATA%' $Managed $date GROUP BY DataId ORDER BY DataId DESC";
  } else {
    $LOGIN_UserId = LOGIN_UserId;
    $LeadSql = "SELECT * FROM data where DataPersonManagedBy='$LOGIN_UserId' and DataPersonFullname like '%$DataPersonFullName%'  and DataPersonPhoneNumber like '%$DataPersonPhoneNumber%' and DataPersonStatus like '%$DataPersonStatus%' and DataPersonSource like '%$DataPersonSource%' and DataType like '%DATA%'  $date GROUP BY DataId ORDER BY DataId DESC";
  }
} elseif (isset($_GET['sub_status'])) {
  $sub_status = $_GET['sub_status'];
  if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
    $LeadSql = "SELECT DataPersonCreatedBy, DataPersonSubStatus, DataPersonEmailId,  DataPersonPhoneNumber, DataPersonStatus, DataSalutations, DataPersonFullname, DataPersonManagedBy, DataPersonSource, DataPriorityLevel, DataPersonCreatedAt, DataId FROM 'data' WHERE DataPersonSubStatus like '%$sub_status%' and DataType like '%DATA%'  GROUP BY DataId ORDER by DataId DESC ";
  } else {
    $LOGIN_UserId = LOGIN_UserId;
    $LeadSql = "SELECT DataPersonCreatedBy, DataPersonSubStatus, DataPersonEmailId,  DataPersonPhoneNumber, DataPersonStatus, DataSalutations, DataPersonFullname, DataPersonManagedBy, DataPersonSource, DataPriorityLevel, DataPersonCreatedAt, DataId  FROM 'data' where DataPersonSubStatus like '%$sub_status%' and DataType like '%DATA%' and DataPersonManagedBy='$LOGIN_UserId'   GROUP BY DataId ORDER by DataId DESC ";
  }
} else {
  if (LOGIN_UserType == "Admin" || LOGIN_UserType == "Digital") {
    $LeadSql = "SELECT DataPersonCreatedBy, DataPersonSubStatus, DataPersonEmailId,  DataPersonPhoneNumber, DataPersonStatus, DataSalutations, DataPersonFullname, DataPersonManagedBy, DataPersonSource, DataPriorityLevel, DataPersonCreatedAt, DataId FROM data WHERE DataType like '%DATA%'  GROUP BY DataId ORDER by DataId DESC ";
  } else {
    $LOGIN_UserId = LOGIN_UserId;
    $LeadSql = "SELECT DataPersonCreatedBy, DataPersonSubStatus, DataPersonEmailId,  DataPersonPhoneNumber, DataPersonStatus, DataSalutations, DataPersonFullname, DataPersonManagedBy, DataPersonSource, DataPriorityLevel, DataPersonCreatedAt, DataId  FROM data where DataPersonManagedBy='$LOGIN_UserId' and DataType like '%DATA%' GROUP BY DataId ORDER by DataId DESC ";
  }
}
$TotalItems = TOTAL($LeadSql);
