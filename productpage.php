<!doctype html>
<?php

$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "project_oo";

// Create connection
$conn = new mysqli ($host, $dbusername, $dbpassword, $dbname);
	
	
if (mysqli_connect_error()){
  die('Connect Error ('. mysqli_connect_errno() .') '
    . mysqli_connect_error());
}

	$proid2 = $_GET['proId'];

	$sql3 = "SELECT * FROM Product where id_Product = '$proid2';";
	$qry = mysqli_query($conn,$sql3);

	$data3 = mysqli_fetch_array($qry);
	//echo $data3['nameProduct'];

$sql4 = "SELECT  * FROM NowUser";
	$qry4 = mysqli_query($conn,$sql4);
	$data4 = mysqli_fetch_array($qry4);
	
	$user = $data4['UserName'];

	$sql2 = "SELECT  * FROM Member WHERE username = '".$user."'";
	$qry2 = mysqli_query($conn,$sql2);
	$id2 = 0;
	
	$data2 = mysqli_fetch_array($qry2);
	$point = $data2['point'];

?>
<html>
<head>
<meta charset="UTF-8">
<title>eCommerce template By Adobe Dreamweaver CC</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="eCommerceAssets/styles/eCommerceStyle.css" rel="stylesheet" type="text/css">
<!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.-->
<script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/montserrat:n4:default;source-sans-pro:n2:default.js" type="text/javascript"></script>
</head>

<body>
<div id="mainWrapper">
  <header> 
    <!-- This is the header content. It contains Logo and links -->
    <a href = "shopping.php"><div id="logo"> <!-- <img src="logoImage.png" alt="sample logo"> --> 
      <!-- Company Logo text --> HelloWorld</div></a>
       <div id="headerLinks">
		<a href="index.php" title="Login/Register">Log Out</a>
		<a href="history.php" title="History">History</a>
		<a href="favorite.php" title="Favorites">Favorites</a>
		<a href="cart.php" title="Cart">Cart</a>
	  <font size="2"><?php  echo "&nbsp&nbsp&nbsp&nbsp&nbsp".$user.",  &nbsp Point : ".$point ?></font>
	</div>
  </header>
 
  <section id="offer"> 
    <!-- The offer section displays a banner text for promotions -->
    <h2>New Shopping Online !!</h2>
    <p>REALLY AWESOME DISCOUNTS </p>
  </section>
  <div id="content">
    <section class="sidebar"> 
      <!-- This adds a sidebar with 1 searchbox,2 menusets, each with 4 links -->
		<form method="post" action="search.php">
      <input type="text"  id="search" name="search" placeholder="Search Name Product">
		
			<button >
					<font face="'Montserrat', sans-serif" color= #919191 size = 3 > Search </font>
			</button>
			
		</form>
     
      <div id="menubar">
        <nav class="menu">
          <h2><!-- Title for menuset 1 --> Category</h2>
          <hr>
          <ul>
             <?php
			  $sql1 = "SELECT * FROM Category;";
	
		$qry1 = mysqli_query($conn,$sql1);
	  	//$data2 = mysqli_fetch_array($qry);
		
		while($data1 = mysqli_fetch_array($qry1)){
			  ?>
            <!-- List of links under menuset 1 -->
            <li><a href="category.php?nameC=<? echo $data1['id_Category']; ?> "><? echo $data1['name_Category'] ?></a></li>
            
			  <?php } ?>
          </ul>
        </nav>
       
      </div>
    </section>
   
	  <section class="mainContent">
	    <div class="productRow">
		   
          <p><img src="eCommerceAssets/images/<?php echo $data3['img_product'] ?>" width="400" height="396" alt=""/> 
            <br>
            <font face="'Montserrat', sans-serif" color= #919191 size = 10 ><?php echo $data3['nameProduct']?></font> <br>
            <font face="'Montserrat', sans-serif" color= #919191 size = 2 >ID : <?php echo $data3['id_Product']?></font> <br>
            <font face="'Montserrat', sans-serif" color= #919191 size = 2 >Category : <?php echo $data3['type'];
				
				$type = $data3['type'];
				  	$sql4 = "SELECT * FROM Category where id_Category = '$type';";
				  	$qry4 = mysqli_query($conn,$sql4);
				  
				  	$typeName =  mysqli_fetch_array($qry4);
				  
					echo $typeName['name_Category'];
				
				
				?></font> <br>
            <font face="'Montserrat', sans-serif" color= #919191 size = 2 >Count : <?php echo $data3['countProduct'];?></font> <br>
            <font face="'Montserrat', sans-serif" color= #919191 size = 2 >Description : </font> <br>
            <font face="'Montserrat', sans-serif" color= #919191 size = 2 ><?php echo $data3['description']?></font> <br>
            <br>
          <font face="'Montserrat', sans-serif" color= #919191 size = 4 >Price : <?php echo $data3['price']?></font> </p>
          <p>&nbsp;</p>
          <p><br>
            
            <article class="productInfo2">
              <a href="cart.php?id=<?php echo $data3['id_Product']?>"><input type="button" name="button" value="Add to Cart" class="CartButton"></a>
				
				<a href="favorite.php?id=<?php echo $data3['id_Product']?>"><input type="button" name="button" value="Favorite" class="favoButton"></a>
				
					<br>
				
             
            </article>
			
			<?php
			$sql2 = "SELECT * FROM Product;";
	
		$qry = mysqli_query($conn,$sql2);
	  	//$data2 = mysqli_fetch_array($qry);
				for ($x =0 ; $x <  rand(0,10) ; $x++) {
					$data2 = mysqli_fetch_array($qry);
				}
		for ($x = 0; $x < 3; $x++) {
			
			$data2 = mysqli_fetch_array($qry)
			?>
			<article class="productInfo"><!-- Each individual product description -->
          <div><img alt="sample" src="eCommerceAssets/images/<?php echo $data2['img_product'];?>"></div>
          <p class="price"><?php echo $data2['price'];?> Baht</p>
          <p class="productContent"><?php echo $data2['nameProduct'];?> </p>
          <a href="productpage.php?proId=<?php echo $data2['id_Product'];?>"><input type="button" name="button" value="Buy" class="buyButton"></a>
        </article>
			<?php } ?>
			
		
			
          </p>
        </div>
		  
		  <a href=javascript:history.back(1)><font face="'Montserrat', sans-serif" color= #919191 size = 2 >go back</font> </a> 
			 <br><br>
				   
		     		 
		  
			 
	 
	
    </section>
  </div>
  <footer> 
    <p>
		  <font face="'Montserrat', sans-serif" color= #ea576b size = 3 ><b><u>Exclusive Deals and Offers!</u></b>Subscribe and be the first to get great deals!</font> 
		
	  </p>
      <form method="post" action="subscribe.php">
        <input type="text"  id="search2" name="email" placeholder="E-mail">
        <button > <font face="'Montserrat', sans-serif" color= #919191 size = 1 > Sign Me up </font> </button>
		  
      </form>
  </footer>
</div>
</body>
</html>
