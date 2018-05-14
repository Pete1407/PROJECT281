<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Untitled Document</title>
</head>
<?php
	
	$amount = $_POST['amount'];
	$discount = $_POST['discount'];
	$point = $_POST['point'];
	
	
	


$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "project_oo";

$conn = new mysqli ($host, $dbusername, $dbpassword, $dbname);
	
	
		$sql = "INSERT INTO Promotion ( amount,  discount , point)
  			values ('$amount','$discount','$point')";
		  	//echo "<script type = 'text/javascript'>window.open(\"sign_in.html\",\"_self\")</script>";;
			//$a = "in";
		    if ($conn->query($sql)){
	  			//echo "window.open(\"login.html\",\"_self\");";
	  			echo "Add Promotion";
				?><br><a href=javascript:history.back(1)>go back</a> <?php
			}else{
    			echo "Error: ". $sql ."
				". $conn->error;
  			}
	
	
	
	
	?>
	
	
	
	
<body>
</body>
</html>