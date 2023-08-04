<?php 

include("config.php");
session_start();
extract($_POST);


$un = $_GET['un'];
$ps = $_GET['ps'];
$ppk = $_GET['ppk'];
$pvk = $_GET['pvk'];


if($con)
{
$result = array();
$sql_register = mysqli_query($con,"INSERT INTO checking VALUES ('','$un','$ps','$ppk','$pvk')");

					if($sql_register)
					{
					
					$udd=mysqli_query($con,"Select un,pvk from checking where un ='$un'");
					$rs=mysqli_fetch_array($udd);
					
					array_push($result,array("name"=>$un,"status"=>"You are registered successfully","pvk"=>$rs['pvk']));
//										array_push($result,array("name"=>$rs['un'],"status"=>"You are registered successfully"));
					echo json_encode(array("result"=>$result));
						
					}
}


 /*$donate = $_GET['donate'];
 $rname = $_GET['rname'];
 $relationship = $_GET["relationship"];
 $rcontact = $_GET["rcontact"];
 $uid = $_GET["uid"];
 $bgp = $_GET["bgp"];
 
 $dt=date("d/m/Y");


if($con)
{
$result = array();

				$sqlCheckUname = mysqli_query($con,"SELECT * FROM organreg WHERE uid LIKE '$uid'");
				$u_name_query =  mysqli_num_rows($sqlCheckUname);

				if($u_name_query > 0)
				{
						array_push($result,array("name"=>"Success","status"=>"User used"));
			echo json_encode(array("result"=>$result));
				}
				else
				{
					

					$sql_register = mysqli_query($con,"INSERT INTO organreg VALUES ('','$uid','$bgp','$donate','$dt','$rname','$relationship','$rcontact')");

					if($sql_register)
					{
					
					$udd=mysqli_query($con,"Select name from userreg where email ='$uid'");
					$rs=mysqli_fetch_array($udd);
					
					array_push($result,array("name"=>$rs['name'],"status"=>"You are registered successfully"));
					echo json_encode(array("result"=>$result));
						
					}
					else
					{
						array_push($result,array("name"=>"Success","status"=>"User used"));
			echo json_encode(array("result"=>$result));
					}
				}

}
else
{
array_push($result,array("name"=>"Success","status"=>"Connection Error"));
			echo json_encode(array("result"=>$result));
}*/

?>

