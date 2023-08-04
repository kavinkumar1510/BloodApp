<?php
session_start();
include("config.php");
extract($_POST);


 $bgrp = $_GET["bgr"];

$sql = "SELECT * FROM blood_bags where bgrp='$bgrp'  ORDER BY expdate DESC";
$r = mysqli_query($con,$sql);


$result = array();
while($res = mysqli_fetch_array($r))
{

array_push($result,array("bagno"=>$res['bagno'],"donarname"=>$res['donarname'],"recvdate"=>$res['recvdate'],"expdate"=>$res['expdate'],"charge"=>$res['charge']));
}
echo json_encode(array("result"=>$result));?>


 
