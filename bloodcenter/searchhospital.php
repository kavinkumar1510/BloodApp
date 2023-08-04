<?php

include("config.php");


  $source = $_GET["source"];
 
	 if($con)
	 	{
		
		$qry=mysqli_query($con,"delete from hospitalregister1");
		
			$sqlCheckUname = mysqli_query($con,"SELECT * FROM hospitalregister WHERE place='$source'");
				$u_name_query =  mysqli_num_rows($sqlCheckUname);
				if($u_name_query >0)
				{
				//echo "Success";
				while($row=mysqli_fetch_array($sqlCheckUname)){
				$bunkname=$row['hospitalname'];
				$place=$row['place'];
				$address=$row['contact'];
				$too=$row['specialties'];
				$quan=$row['exp'];
						$pid=$row['id'];
					
				
				
				
			
$qry2=mysqli_query($con,"insert into hospitalregister1 values('$pid','$bunkname','$place','$address','$too','$quan')");

				
				}
			echo "Allowed";
		
				
				
				
				}
				else
				{
				echo "failed";
				}
				
				
 		}
	else
		{
		echo "Connection Error";
		}
	

?>