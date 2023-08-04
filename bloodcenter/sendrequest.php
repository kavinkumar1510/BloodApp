<?php 

include("config.php");
session_start();
extract($_POST);

 
 date_default_timezone_set("Asia/Kolkata");
 $uid	 = $_GET['uname'];
 $reason = $_GET['reason'];
 $bgrp = $_GET["bgrp"];
 

if($con)
{

//$t =date();

$rdate=date("d/m/Y");

$rtime=date("H:i:s");

					$sql_register = mysqli_query($con,"INSERT INTO blood_requests VALUES ('','$uid','$reason','$bgrp','$rdate','$rtime')");

					if($sql_register)
					{
						echo "Success";
					}
					else
					{
						echo "Failed";
					}
				

}
else
{
echo "Connection Error";
}

?>

