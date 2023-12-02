<?php
require __DIR__ . "/../acm/SysFileAutoLoader.php";

$checkAdminEmployementDetails = "SELECT * FROM user_employment_details where UserMainUserId='1'";
$Check =  CHECK($checkAdminEmployementDetails);
if ($Check == null) {
}
