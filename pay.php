<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Untitled Document</title>
</head>

	<?php 
		$host = "localhost";
		$dbusername = "root";
		$dbpassword = "";
		$dbname = "project_oo";

		// Create connection
		$conn = mysqli_connect($host, $dbusername, $dbpassword, $dbname);
	
	
	if (mysqli_connect_error()){
		die('Connect Error ('. mysqli_connect_errno() .') '
			. mysqli_connect_error());
	}
	
	
		
	
	date_default_timezone_set("Asia/Bangkok");
	$date = date("Y/m/d");
	$time = date("h:i:sa");
	echo $date . "<br>";
	echo  $time . "<br>";
	

	
	
	foreach($conn->query('SELECT MAX(id_Order)
	FROM History') as $max2) {
	
		 $max = $max2['MAX(id_Order)'];
		
}
	if(empty($max)) $max = 1000;
	 $max++;
	

	$sql2 = "SELECT  * FROM Shopping_Cart";
	$qry2 = mysqli_query($conn,$sql2);
	$count = 0;
	
	$sql4 = "SELECT  * FROM NowUser";
	$qry4 = mysqli_query($conn,$sql4);
	$data4 = mysqli_fetch_array($qry4);
	
	$user = $data4['UserName'];
	
	$status = "Processing";
	$data2 = mysqli_fetch_array($qry2);
	$id = $data2['ID_product'];
		echo $id . "   <br>";
		$sql9 = "INSERT INTO History (id_Order, id_Product, status, date_Order, username_Member, time_Order)
  			values ('$max','$id','$status','$date','$user','$time')";
	//mysqli_query($conn, $sql9);
		//$sql9 .= "INSERT INTO History (id_Order, id_Product, status, date_Order, username_Member, time_Order)
  		
	
	while($data2 = mysqli_fetch_array($qry2)){
		
		$id = $data2['ID_product'];
		echo $id . "   <br>";
		$sql9 .=	",('$max','$id','$status','$date','$user','$time')";
			
		
	}
	if (mysqli_multi_query($conn, $sql9)) {
    echo "New records created successfully";
} else {
    echo "Error: " . $sql9 . "<br>" . mysqli_error($conn);
}
	
	
	
	?> <br>
	
	Thank you ~ <br>
	 <a href=javascript:history.back(1)><font face="'Montserrat', sans-serif" color= #000000 size = 2 >go back</font> </a> 
	
	
<body>
</body>
</html>