<?php
session_start();
include("config.php");
extract($_POST);

//$dt=$_REQUEST['bgrp'];

$sql = "SELECT * FROM blood_donar where status='Available'";
$r = mysqli_query($con,$sql);


$result = array();
while($res = mysqli_fetch_array($r))
{
array_push($result,array("dname"=>$res['dname'],"did"=>$res['d_id'],"gen"=>$res['gender'],"dob"=>$res['dob'],"email"=>$res['email'],"contact"=>$res['contact'],"adr"=>$res['address'],"bgp"=>$res['bgroup']));
}
echo json_encode(array("result"=>$result));
?>


 