<?php 

include("config.php");
session_start();
extract($_POST);

 $ename = $_GET['ename'];
 $eemail = $_GET['eemail'];
 $econtact = $_GET["econtact"];
 $gender = $_GET["gender"];
 
 
 $edob = $_GET["edob"];
 $eaddress = $_GET["eaddress"];

 $epassword = $_GET["epassword"];

if($con)
{

				$sqlCheckUname = mysqli_query($con,"SELECT * FROM userreg WHERE email LIKE '$eemail'");
				$u_name_query =  mysqli_num_rows($sqlCheckUname);

				if($u_name_query > 0)
				{
					echo "User name allready used type another one";
				}
				else
				{
					

					$sql_register = mysqli_query($con,"INSERT INTO userreg VALUES ('','$ename','$gender','$edob','$econtact','$eemail','$eaddress','$epassword')");

					if($sql_register)
					{
						echo "You are registered successfully";
					}
					else
					{
						echo "Failed to register you account";
					}
				}

}
else
{
echo "Connection Error";
}

?>

