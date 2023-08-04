<?php 

include("config.php");
session_start();
extract($_POST);

 $bagno = $_GET['bagno'];
 $donarid = $_GET['donarid'];
 $donarname = $_GET["donarname"];
 $recvdate = $_GET["recvdate"];
 
 
 $expdate = $_GET["expdate"];
 $charge = $_GET["charge"];

 $bgrp = $_GET["bgrp"];

if($con)
{

					$sql_register = mysqli_query($con,"INSERT INTO blood_bags VALUES ('','$bagno','$donarid','$donarname','$recvdate','$expdate','$charge','$bgrp')");

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

