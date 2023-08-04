<?php

include("config.php");
session_start();
extract($_POST);

 $eusername = $_GET["eusername"];
 $epassword = $_GET["epassword"];
	 if($con)
	 	{
			$sqlCheckUname = mysqli_query($con,"SELECT * FROM admin WHERE uname ='$eusername' && pwd ='$epassword'");
				$u_name_query =  mysqli_num_rows($sqlCheckUname);
				if($u_name_query == 1)
				{
				echo "Success";
				}
				else
				{
				echo "login failed";
				}
 		}
	else
		{
		echo "Connection Error";
		}
	

?>

