<?php 

include("config.php");
session_start();
extract($_POST);


$dname = $_GET['ename'];
$gender = $_GET['gender'];
$dob = $_GET['edob'];
$email = $_GET['eemail'];
$contact = $_GET['econtact'];
$address = $_GET['eaddress'];
$bgroup = $_GET['bgrp'];
$pwd = $_GET['pwd'];



if($con)
{

$sql = mysqli_query($con,"Select * from blood_donar where email='$email'");

$count=mysqli_num_rows($sql);
if($count > 0)
{
echo "Used";
}
else{
	$sql_register = mysqli_query($con,"INSERT INTO blood_donar VALUES ('','$dname','$gender','$dob','$email','$contact','$address','$bgroup','Available','$pwd')");

					if($sql_register)
					{
					echo "Success";
						
					}
					else
					{
					echo "";
					}
	}
}
?>

