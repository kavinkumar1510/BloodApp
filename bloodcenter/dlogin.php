<?php

include("config.php");
session_start();
extract($_POST);

 $eusername = $_GET["eusername"];
 $epassword = $_GET["epassword"];
	 if($con)
	 	{
		$result = array();
			$sqlCheckUname = mysqli_query($con,"SELECT * FROM blood_donar WHERE email='$eusername' && pwd='$epassword' && status='Accepted'");
				$u_name_query =  mysqli_num_rows($sqlCheckUname);
				if($u_name_query == 1)
				{
				$rr=mysqli_fetch_array($sqlCheckUname);
				
				array_push($result,array("name"=>$rr['dname'],"status"=>"successfully"));
//										array_push($result,array("name"=>$rs['un'],"status"=>"You are registered successfully"));
					echo json_encode(array("result"=>$result));
				
				}
				else
				{
				array_push($result,array("name"=>"","status"=>"failed"));
					echo json_encode(array("result"=>$result));
				}
 		}
	else
		{
		echo "Connection Error";
		}
	

?>

