<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About us</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
<link rel="stylesheet" href="<%=request.getContextPath()+"/resource/about-us.css"%>">
</head>
<body>

	<div onclick="onHandleOverlay()" class="overlay"></div>
	<div id="about">
	</div>
	<div id="shop-cart">
	</div>
	<div class="about-us">
		<div class="header">
			<h1>About us</h1>
			<div class="link-container">
				<a href="<%=request.getContextPath() + "/home" %>" class="item1">Home</a>
				<a href="#" class="active">About Us</a>
			</div>
		</div>
		<div class="section1">
			<div class="img-container">
				<img src="https://livani-react.envytheme.com/_next/static/images/about1-a718ab6bf0ecaa2f6fedc3ae7a3edb1d.jpg" class="image image0" />
				<img src="https://livani-react.envytheme.com/_next/static/images/about2-32ea26a602527d3279241f69a211bf07.jpg" class="image image1"/>
			</div>
			<div class="txt-frame">
				<span>About Us</span>
				<h1>Linava Trusted Online Shopping Site in the World</h1>
				<h3>Linava.com offers you flexible and responsive shopping experience.</h3>
				<p><b>Linava</b> is an eCommerce website which features millions of products, i.e. clothes, shoes, bags, electronic items and much more, with all at incredible prices.</p>
				<p>One of the most popular on the web is shopping. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
				<div class="heading-secondary">
					<i class="fas fa-globe-europe"></i>
					<h3>Ships to more than 10 countries and regions</h3>
				</div>
				<p>We provide customers with a hassle-free and worry-free international shopping experience from buying to delivery.</p>
			</div>
		</div>
	</div>
	<div class="footer">
			<div class="instagram-container">
				<div class="item item-1">
					<img src="https://livani-react.envytheme.com/_next/static/images/insta1-0042285234e1e56409cb5f01e56a584c.jpg" alt="hinh anh">
					<i class="fab fa-instagram"></i>
				</div>
				<div class="item item-2">
					<img src="https://livani-react.envytheme.com/_next/static/images/insta4-9d7ddbf34ce03c4f9c12f543f0fa1a57.jpg" >
					<i class="fab fa-instagram"></i>
				</div>
				<div class="item item-3">
					<img src="https://livani-react.envytheme.com/_next/static/images/insta3-41106b40806c997a7f6c26db7d1a3955.jpg" >
					<i class="fab fa-instagram"></i>
				</div>
				<div class="item item-4">
					<img src="https://livani-react.envytheme.com/_next/static/images/insta4-9d7ddbf34ce03c4f9c12f543f0fa1a57.jpg" >
					<i class="fab fa-instagram"></i>
				</div>
				<div class="item item-5">
					<img src="https://livani-react.envytheme.com/_next/static/images/insta5-78a5109229d118d173247ceca4867ea5.jpg" >
					<i class="fab fa-instagram"></i>
				</div>
				<div class="item item-6">
					<img src="https://livani-react.envytheme.com/_next/static/images/insta6-a7e97921a2a81d6835ac186e600065a4.jpg" >
					<i class="fab fa-instagram"></i>
				</div>
				<div class="item item-1">
					<img src="https://livani-react.envytheme.com/_next/static/images/insta1-0042285234e1e56409cb5f01e56a584c.jpg" alt="hinh anh">
					<i class="fab fa-instagram"></i>
				</div>
				<div class="item item-2">
					<img src="https://livani-react.envytheme.com/_next/static/images/insta4-9d7ddbf34ce03c4f9c12f543f0fa1a57.jpg" >
					<i class="fab fa-instagram"></i>
				</div>
		</div>
		<%@ include file="footer.jsp" %>
		<%@ include file="loading.jsp" %>
		<script>
		$(function(){
			$('#about').load('About.jsp')
			$('#shop-cart').load('shop-cart.jsp');
			setTimeout(() => {
				document.getElementById("loading").style.opacity = "0";
				document.getElementById("loading").style.visibility = "hidden";
			},1000)
		})
		function onHandleOverlay () {
			var element = localStorage.getItem("sidebar");
			if(element === 'opened'|| !element) {
				console.log(1)
				onHandleMenu()
			} else if(element === 'closed') {
				onHandleCart()
			}
		}
		function onHandleCart() {
			var opened = localStorage.getItem("shop-cart");
			if(opened == 'closed' || !opened) {
				localStorage.setItem("shop-cart", "opened");
				document.querySelector(".shop-cart").style.transform = "translateX(0px)";
				document.querySelector(".overlay").style.opacity = 1;
				document.querySelector(".overlay").style.visibility = 'visible';
				
			} else {
				localStorage.setItem("shop-cart", "closed");
				document.querySelector(".shop-cart").style.transform = "translateX(600px)";
				document.querySelector(".overlay").style.opacity = 0;
				document.querySelector(".overlay").style.visibility = 'hidden';
			}
		}
		function onHandleMenu() {
			var opened = localStorage.getItem("sidebar");
			if(opened == 'closed' || !opened) {
				localStorage.setItem("sidebar", "opened");
				document.querySelector(".about").style.transform = "translateX(0px)";
				document.querySelector(".overlay").style.opacity = 1;
				document.querySelector(".overlay").style.visibility = 'visible';
				
			} else {
				localStorage.setItem("sidebar", "closed");
				document.querySelector(".about").style.transform = "translateX(600px)";
				document.querySelector(".overlay").style.opacity = 0;
				document.querySelector(".overlay").style.visibility = 'hidden';
			}
		}
		function checkOpenedCart () {
			var opened = localStorage.getItem("shop-cart");
			console.log(localStorage)
			if(opened == 'closed' || !opened) {
			} else {
				localStorage.setItem("shop-cart", "closed");
				document.querySelector(".shop-cart").style.transform = "translateX(600px)";
			}
		}
		checkOpenedCart()
		function checkOpenedMenu () {
			var opened = localStorage.getItem("sidebar");
			console.log(localStorage)
			if(opened == 'closed' || !opened) {
			} else {
				localStorage.setItem("sidebar", "closed");
				document.querySelector(".about").style.transform = "translateX(600px)";
			}
		}
		checkOpenedMenu();
		</script>
</body>
</html>