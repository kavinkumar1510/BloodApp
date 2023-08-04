<?php 

include("config.php");


$sql3=mysqli_query($con,"SELECT * FROM hospitalregister1
");

if($sql3){
while($res=mysqli_fetch_array($sql3)){


 $tem[]=array("pname"=>$res['hospitalname'],"pimg"=>$res['place'],"ptype"=>$res['contact'],"pcategory"=>$res['specialties'],"pprice"=>$res['exp'],
"stax"=>$res['exp'],"pid"=>$res['id']);
 echo $json1 = json_encode($tem);
}
 }


else {
 echo "0 results";
}

 echo $json1;

?>
	
						
					