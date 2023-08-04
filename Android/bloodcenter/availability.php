<?php
session_start();
include("config.php");
extract($_POST);


$sql = "SELECT bgrp, COUNT(*) FROM blood_bags GROUP BY bgrp ";
$r = mysqli_query($con,$sql);


$result = array();
while($res = mysqli_fetch_array($r))
{

array_push($result,array("bgrp"=>$res['bgrp'],"count"=>$res['COUNT(*)']));
}
echo json_encode(array("result"=>$result));?>


 
