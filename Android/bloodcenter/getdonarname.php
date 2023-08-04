<?php
session_start();
include("config.php");
extract($_POST);

$dt=$_REQUEST['bgrp'];

$sql = "SELECT * FROM blood_donar where bgroup='$dt'";
$r = mysqli_query($con,$sql);


$result = array();
while($res = mysqli_fetch_array($r))
{
array_push($result,array("dname"=>$res['dname'],"did"=>$res['d_id']));
}
echo json_encode(array("result"=>$result));
?>


 