<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Cinema A Entertainment Category Flat Bootstrap Responsive Website Template | Reviews :: w3layouts</title>
<link href="<?php echo base_url(); ?>assets/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="<?php echo base_url(); ?>assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<script src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Cinema Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<!-- <link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'> -->
</head>
<body>
	<!-- header-section-starts -->
	<div class="full">
			<div class="menu">
				<ul>
					<li><a href="<?php echo base_url(); ?>"><div class="hm"><i class="home1"></i><i class="home2"></i></div></a></li>
					<li><a class="active" href="<?php echo base_url(); ?>menu/coming_soon"><div class="video"><i class="videos"></i><i class="videos1"></i></div></a></li>
					<li><a href="<?php echo base_url(); ?>menu/now_playing"><div class="cat"><i class="watching"></i><i class="watching1"></i></div></a></li>
					<li><a href="<?php echo base_url(); ?>menu/voucher"><div class="bk"><i class="booking"></i><i class="booking1"></i></div></a></li>
					<li><a href="contact.html"><div class="cnt"><i class="contact"></i><i class="contact1"></i></div></a></li>
				</ul>
			</div>
		<div class="main">
		<div class="review-content">
			<div class="top-header span_top">
				<div class="logo">
					<a href="index.html"><img src="<?php echo base_url(); ?>assets/images/logo.png" alt="" /></a>
					<p>Movie Theater</p>
				</div>
				<div class="search v-search">
					<form>
						<input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}"/>
						<input type="submit" value="">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="reviews-section">
				<h3 class="head">Coming Soon</h3>
					<div class="col-md-9 reviews-grids">
					<?php 
					$now=date('Y-m-d');
					$sql= $this->db->get('daftar_film');
					foreach ($sql->result() as $row) {
					if($row->batas_tayang>=$now && $row->mulai_tayang>$now){
					echo'<div class="review">
							<div class="movie-pic">
								<a href="#"><img src="'.base_url().'assets/images/film/'.$row->kode_film.'.jpg" alt="" /></a>
							</div>

							<div class="review-info">
								<a class="span" href="single.html">'.$row->nama_film.'</a>
								<p class="dirctr">|';
					$sql2= $this->db->get_where('jadwal',array('kode_film' => $row->kode_film ));
					foreach ($sql2->result() as $row2) {
						echo $row2->waktu_tayang.' | ';
					}
					echo '</p>								
								
									<div class="clearfix"></div>
								
								<h4>Sinopsis:</h4>
								<p>'.$row->sinopsis.'</p>
							</div>
							<div class="clearfix"></div>
						</div>';
						}}?>
					
			<script type="text/javascript">
		$(window).load(function() {
			
		  $("#flexiselDemo1").flexisel({
				visibleItems: 6,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: false,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: { 
					portrait: { 
						changePoint:480,
						visibleItems: 2
					}, 
					landscape: { 
						changePoint:640,
						visibleItems: 3
					},
					tablet: { 
						changePoint:768,
						visibleItems: 3
					}
				}
			});
			});
		</script>
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>	
			
	<div class="footer">
		
		<div class="copyright">
			<p>© 2015 qonimax. All rights reserved</p>
		</div>
	</div>	
	</div>
	<div class="clearfix"></div>
	</div>
</body>
</html>