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
    <title>Members | Gastro Trip</title>
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
								<li><a href="#"><i class="fas fa-utensils"></i> All recipies</a></li>
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
                                        <li><a href="members">Buras Inass</a></li>
										<li><a href="members">Hajji Mouad</a></li> 
										<li><a href="members">Remman Salim</a></li> 
										<li><a href="members">Sabor Oumaima</a></li> 
										
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
						
						<c:forEach items="${ clients }" var="client" varStatus="is">
								<c:if test="${client.getdescription()!='null' }">
									
									<div class="item">
                          				  <div class="col-sm-6">
                             				   <h2 style="color:green;" > <c:out value="${client.getname()} ${client.getlastname()} " /> </h2>
                              				   <p> <c:out value="${ client.getdescription() } " /></p>
                               				   
												<br>
												<p><c:out value="${ client.getemail() } " /></p>
							
                                
                           				 </div>
                            
                        			</div>


								</c:if>
   								 
						</c:forEach>
						
					</div>
				</div>
			</div>
		</div>
	</section><!--/slider-->
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
</body>