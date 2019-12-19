<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
	<meta name="author" content="">
	<meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
    <title>Home | Gastro Trip</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
	<![endif]-->    
	<link rel="shortcut icon" href="images/gticon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">   
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +212 610 68 45 27</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> gtinfo@gmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								
								<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
								
								<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index"><img src="images/gtlogo.png" alt="" style="height: 50% ; width: 30%;"/></a>
						</div>
						
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<c:if test="${clientisconnected }">
									<li><a href="welcome"><i class="fas fa-cookie-bite"></i> Profile</a></li>
								</c:if>
								
								<li><a href="#recipies"><i class="fas fa-utensils"></i> All recipies</a></li>
								<li><a href="members"><i class="fas fa-cookie-bite"></i> Members</a></li>
								<li><a href="contact-us"><i class="fas fa-pencil-alt"></i> Contact</a></li>
								<li><a href="login"><i class="fa fa-lock"></i> Login</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index" class="active">Home</a></li>
								<li class="dropdown"><a href="#">Course<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="Side dish">Side dish</a></li>
										<li><a href="Main dish">Main dish</a></li> 
										<li><a href="Dessert">Dessert</a></li> 
										
                                    </ul>
								</li> 
								<li class="dropdown"><a href="#">Cuisine<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="french">French</a></li>
										<li><a href="Italian">Italian</a></li> 
										<li><a href="Spanish">Spanish</a></li>
										<li><a href="Irish">Irish</a></li>
										<li><a href="Korean">Korean</a></li>
										<li><a href="Japanese">Japanese</a></li>
										<li><a href="Mediderranean">Mediterranean</a></li>
										<li><a href="Healthy">Healthy</a></li> 
										
                                    </ul>
								</li> 
								<li class="dropdown"><a href="#">Chefs<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="members">Boushaba Mohamed</a></li>
										<li><a href="members">Youness Mouatamir</a></li> 
										<li><a href="members">Mohamed Abouchoire</a></li> 
										<li><a href="members">Ousama Ariflahe</a></li>
										
                                    </ul>
                                </li> 
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<img src="images/gastrotrip.png" class="girl img-responsive" alt="" />
									
								</div>
								<div class="col-sm-6">
									<img src="images/s1.jpg" class="girl img-responsive" alt="" />
									
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<img src="images/gastrotrip.png" class="girl img-responsive" alt="" />
									
								</div>
								<div class="col-sm-6">
									<img src="images/s2.jpg" class="girl img-responsive" alt="" />
									
								</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<img src="images/gastrotrip.png" class="girl img-responsive" alt="" />
								</div>
								<div class="col-sm-6">
									<img src="images/s3.jpg" class="girl img-responsive" alt="" />
									
								</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
	<section id="recipies">
		<div class="container" >
			<div class="row">

				<div class="col-sm-12 ">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Our Recipies</h2>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="images/recipies/irish/potato&irish cheddar rolls.jpg" alt="" />
											<h2>Potato & Irish Cheddar Rolls</h2>
											<p>Irish</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
										</div>
								</div>
								
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/irish/bacon&cabbage pies.jpg" alt="" />
										<h2>Bacon & cabbage pies</h2>
										<p>Irish</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
									
								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/irish/irish brack.jpg" alt="" />
										<h2>Irish brack</h2>
										<p><br>Irish</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/irish/roast leg of lamb.jpg" alt="" />
										<h2>Roast leg of lamb</h2>
										<p><br>Irish</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
								
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 450px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/french/barigoule of spring.jpg" alt="" />
										<h2>Barigoule of spring</h2>
										<p><br><br>French</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 450px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/french/basque braised chicken with preppers.png" alt="" />
										<h2>basque braised chicken with preppers</h2>
										<p>French</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>

								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 450px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/french/creme brulee.jpg" alt="" />
										<h2>creme brulee</h2>
										<p><br><br>French</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 450px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/french/steak diane.png" alt="" />
										<h2>steak diane</h2>
										<p><br><br>French</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
								
							</div>
						</div>
					
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 450px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/french/tarte flambé.png" alt="" />
										<h2>tarte flambé</h2>
										<p>French</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 450px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/italian/cheese grits.png" alt="" />
										<h2>cheese grits</h2>
										<p>Italian</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>

								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 450px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/italian/chicken & dumpling.jpg" alt="" />
										<h2>chicken & dumpling</h2>
										<p>Italian</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>

								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 450px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/italian/pappa al pomodoro.jpg" alt="" />
										<h2>pappa al pomodoro</h2>
										<p>Italian</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>

								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/italian/shrimp kung pao noodles.jpg" alt="" />
										<h2>shrimp kung pao noodles</h2>
										<p>Italian</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>

								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/spanish/chicken paella.jpg" alt="" />
										<h2>chicken paella</h2>
										<p><br>Spanish</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>

								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/spanish/churros.jpg" alt="" />
										<h2>churros</h2>
										<p><br>Spanish</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>

								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/spanish/gazpacho.jpg" alt="" />
										<h2>gazpacho</h2>
										<p><br>Spanish</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>

								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/spanish/patatas bravas.jpg" alt="" />
										<h2>patatas bravas</h2>
										<p><br>Spanish</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>

								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/spanish/stuffed mussels.jpg" alt="" />
										<h2>stuffed mussels</h2>
										<p><br>Spanish</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>

								</div>
								
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/korean/Bok choy seasoned with soybean paste.jpg" alt="" />
										<h2>Bok choy seasoned with soybean paste</h2>
										<p>Korean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/korean/bulgogi.jpg" alt="" />
										<h2>Bulgogi</h2>
										<p><br>Korean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/korean/Hotteok - Korean Sweet Dessert Pancake.jpg" alt="" />
										<h2>Hotteok </h2>
										<p>Korean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/korean/jajangmyeon.jpg" alt="" />
										<h2>Jajangmyeon</h2>
										<p>Korean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/korean/japchae.jpg" alt="" />
										<h2>Japchae</h2>
										<p>Korean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/korean/kimchi jigae.jpg" alt="" />
										<h2>Kimchi jigae</h2>
										<p>Korean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/korean/Songpyeon for Chuseok.jpg" alt="" />
										<h2>Songpyeon for Chuseok</h2>
										<p>Korean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/korean/Spicy fish stew.jpg" alt="" />
										<h2>Spicy fish stew</h2>
										<p><br>Korean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/korean/Try Bingsu (Korean Shaved Ice).jpg" alt="" />
										<h2>Bingsu (Korean Shaved Ice)</h2>
										<p>Korean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/japanese/Gyudon.jpg" alt="" />
										<h2>Gyudon</h2>
										<p><br>Japanese</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/japanese/Wafu Pasta.jpg" alt="" />
										<h2>Wafu Pasta</h2>
										<p><br>Japanese</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/japanese/Yaki Udon.jpg" alt="" />
										<h2>Yaki Udon</h2>
										<p><br>Japanese</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/mediterranean/Easy-Moroccan-Chickpea-Stew_.jpg" alt="" />
										<h2>Easy Moroccan Chickpea Stew</h2>
										<p>Mediterranean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 550px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/mediterranean/Greek Butter Crescents.jpg" alt="" />
										<h2>Greek Butter Crescents</h2>
										<p>Mediterranean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 500px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/mediterranean/Mediterranean Chicken Orzo Soup.jpg" alt="" />
										<h2>Mediterranean Chicken Orzo Soup</h2>
										<p><br>Mediterranean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 500px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/mediterranean/Mediterranean Shrimp Orzo Salad.jpg" alt="" />
										<h2>Mediterranean Shrimp Orzo Salad</h2>
										<p><br>Mediterranean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 500px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/mediterranean/Mediterranean chicken tray bake.jpg" alt="" />
										<h2>Mediterranean chicken tray bake</h2>
										<p><br>Mediterranean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 500px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/mediterranean/Mediterranean-Artichoke-and-Red-Pepper-Roll-Ups.jpg" alt="" />
										<h2>Mediterranean Artichoke and Red Pepper Roll Ups</h2>
										<p>Mediterranean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 500px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/mediterranean/Mediterranean-Chicken.jpg" alt="" />
										<h2>Mediterranean Chicken</h2>
										<p>Mediterranean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 500px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/mediterranean/Mediterranean-Hummus-Nachos.jpg" alt="" />
										<h2>Mediterranean Hummus Nachos</h2>
										<p>Mediterranean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 500px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/mediterranean/Saucy Mediterranean Chicken with Rice.jpg" alt="" />
										<h2>Saucy Mediterranean Chicken with Rice</h2>
										<p>Mediterranean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 500px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/mediterranean/Slow-Cooked-Moroccan-Chicken.jpg" alt="" />
										<h2>Slow Cooked Moroccan Chicken</h2>
										<p>Mediterranean</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 350px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/healthy/avocado egg salad.jpg" alt="" />
										<h2>avocado egg salad</h2>
										<p><br>Healthy</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 350px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/healthy/avocado smoothie.jpg" alt="" />
										<h2>avocado smoothie</h2>
										<p><br>Healthy</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 350px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/healthy/banana almond shaker.jpg" alt="" />
										<h2>banana almond shaker</h2>
										<p>Healthy</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 350px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/healthy/banana oatmeal.jpg" alt="" />
										<h2>banana oatmeal</h2>
										<p><br>Healthy</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 350px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/healthy/cheddar avocado burger.jpg" alt="" />
										<h2>cheddar avocado burger</h2>
										<p>Healthy</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 350px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/healthy/lentil burgers with avocado.jpg" alt="" />
										<h2>lentil burgers with avocado</h2>
										<p>Healthy</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 350px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/healthy/protein pancakes.jpg" alt="" />
										<h2>protein pancakes</h2>
										<p><br>Healthy</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="product-image-wrapper" style="height: 350px;">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/recipies/healthy/salmon burger.jpg" alt="" />
										<h2>salmon burger</h2>
										<p><br>Healthy</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fas fa-carrot"></i>Taste me</a>
									</div>
								</div>
							</div>
						</div>
						
					</div><!--features_items-->
	
				</div>
			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<img src="images/gtbyd.png" alt=""  style="height: 150%; width: 150%;"/>
						</div>
					</div>
					
					<div class="col-sm-3" style="float: right;">
						<div class="address">
							<img src="images/home/map.png" alt="" style="padding-top: 40px"/>
							<p style="color: black; padding-top: 40px">Avenue de France Agdal Rabat MOROCCO</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2019 GASTRO TRIP Inc. All rights reserved.</p>
				
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	

  
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>