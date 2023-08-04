<?php

include("config.php");


 $email = $_GET["ename"];



$sql3=mysqli_query($con,"SELECT * FROM bloodavailable where hospitalname ='$email'");
$avg=0;
if($sql3){
while($res=mysqli_fetch_array($sql3)){


 $tem[]=array("fname"=>$res['id'],"fcount"=>$res['hospitalname'],"stax"=>$res['bloodgroup'],"ptype"=>$res['bloodbage'],"grade2"=>$res['hospitalname'],"grade3"=>$res['bloodgroup']
 
);
 $json = json_encode($tem);
}





} else{
echo "no datafund";
}
 echo $json;
 ?>
