<?php
session_start();
include("config.php");
extract($_POST);

$email=$_REQUEST['email'];

$sql = "SELECT * FROM blood_donar where email='$email'";
$r = mysqli_query($con,$sql);


$result = array();
while($res = mysqli_fetch_array($r))
{

array_push($result,array("dname"=>$res['dname'],"did"=>$res['d_id'],"gen"=>$res['gender'],"dob"=>$res['dob'],"email"=>$res['email'],"contact"=>$res['contact'],"adr"=>$res['address'],"bgp"=>$res['bgroup']));
}
echo json_encode(array("result"=>$result));
?>


 