<?php 

include("config.php");
session_start();
extract($_POST);

 $id = $_GET['id'];
 $sts = $_GET['sts'];

if($con)
{

					$sql_register = mysqli_query($con,"Update  blood_donar set status='$sts' where d_id='$id'");

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

