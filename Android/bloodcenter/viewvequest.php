<?php
session_start();
include("config.php");
extract($_POST);




$sql = "SELECT blood_requests.reason as reason,blood_requests.bgrp as bg,blood_requests.rdate as rdate,blood_requests.rtime as rtime,userreg.name as name,userreg.contact as contact FROM `blood_requests` JOIN userreg WHERE blood_requests.uid=userreg.email ORDER BY blood_requests.rdate && blood_requests.rtime DESC";
$r = mysqli_query($con,$sql);


$result = array();
while($res = mysqli_fetch_array($r))
{

array_push($result,array("bg"=>$res['bg'],"reason"=>$res['reason'],"rdate"=>$res['rdate'],"rtime"=>$res['rtime'],"contact"=>$res['contact'],"name"=>$res['name']));
}
echo json_encode(array("result"=>$result));?>


 
