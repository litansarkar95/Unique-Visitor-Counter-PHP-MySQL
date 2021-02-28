<?php
$conn=mysqli_connect("localhost","root","","themindspeaks");

 $date=date("Y-m-d");
$userIP=$_SERVER['REMOTE_ADDR'];
$query="SELECT * FROM unique_visitors where date='$date' ";
$result=mysqli_query($conn,$query);
if($result->num_rows==0){
   
 $insertQuery="insert into unique_visitors(date,ip) values('$date','$userIP')";
 mysqli_query($conn,$insertQuery);
 
}else{
   $row=$result->fetch_assoc(); 
   if(!preg_match('/'.$userIP.'/i',$row['ip'])){
       $newIP="$row[ip]$userIP";
       $updateQuery="UPDATE unique_visitors set ip='$newIP' , views=views+1 where date='$date' ";
       mysqli_query($conn,$updateQuery);
   } 
}

?>
