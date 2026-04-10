<div class="row">
	<div class="box box-solid">
	  	<div class="box-header with-border">
	    	<h3 class="box-title"><b>Today Promotion</b></h3>
	  	</div>
	  	<div class="box-body">
	  		<ul id="trending">
	  		<?php
	  			$now = date('Y-m-d');
	  			$conn = $pdo->open();

	  			$stmt = $conn->prepare("SELECT * FROM products WHERE date_view=:now ORDER BY counter DESC LIMIT 10");
	  			$stmt->execute(['now'=>$now]);
	  			foreach($stmt as $row){
	  				echo "<li><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></li>";
	  			}

	  			$pdo->close();
	  		?>
	    	<ul>
	  	</div>
	</div>
</div>

<div class="row">
	<div class="box box-solid">
	  	<div class="box-header with-border">
	    	<h3 class="box-title"><b>Become a Membership</b></h3>
	  	</div>
	  	<div class="box-body">
	    	<p>Get free updates on the latest products and discounts, straight to your inbox.</p>
	    	<form method="POST" action="process_subscription.php">
		    	<div class="input-group">
	                <input type="text" class="form-control" name="email" placeholder="Enter your email">
	                <span class="input-group-btn">
	                    <button type="button" class="btn btn-info btn-flat"><i class="fa fa-envelope"></i> Subscribe</button>
	                </span>
	            </div>
		    </form>
	  	</div>
	</div>
</div>

<div class="row">
	<div class='box box-solid'>
	  	<div class='box-header with-border'>
	    	<h3 class='box-title'><b>Find out more on our Social Media</b></h3>
	  	</div>
	  	<div class='box-body'>
	    	<a class="btn btn-social-icon btn-facebook" href="https://www.facebook.com/LotussMalaysia"><i class="fa fa-facebook"></i></a>
	    	<a class="btn btn-social-icon btn-youtube" href="https://www.youtube.com/c/LotussMalaysia"><i class="fa fa-youtube-play" style="font-size:33px;color:red"></i></a>
	    	<a class="btn btn-social-icon btn-instagram" href="https://www.instagram.com/lotussmalaysia/"><i class="fa fa-instagram"></i></a>
	    	<a class="btn btn-social-icon btn-google" href="https://corp.lotuss.com.my/"><i class="fa fa-google-plus"></i></a>
	  	</div>
	</div>
</div>
