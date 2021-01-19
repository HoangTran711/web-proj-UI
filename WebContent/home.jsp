<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="navbar.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "icon" href =  
"https://media.geeksforgeeks.org/wp-content/cdn-uploads/gfg_200X200.png" 
        type = "image/x-icon"> 
<title>Home</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()+"/resource/home.css"%>">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"></script>
<link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">

</head>
<body>
	<div class="home-container">
		<div onclick="onHandleOverlay()" class="overlay"></div>
		<div class="slideshow-container">
			<div class="mySlides fade">
		 		<img src=" https://livani-react.envytheme.com/_next/static/media/main-banner1.037c44b65691964462935770ee2e8107.jpg" style="width:100%">
		  		<div class="text">
		  			<h4>Limited Time Offer!</h4>
		  			<h2>Winter-Spring!</h2>
		  			<p>Take 20% Off 'Sale Must-Haves'</p>
		  			<div class="btn-container">
		  				<button class="btn-pink">Shop Women's</button>
		  				<button class="btn-gray">Shop Mens</button>
		  			</div>
		  		</div>
			</div>
		
			<div class="mySlides fade">
		 		<img src="https://livani-react.envytheme.com/_next/static/media/main-banner2.b450957bbc5ad97ca45c9a721e2f6bae.jpg" style="width:100%">
		  		<div class="text text-2">
		  			<h4>Limited Time Offer!</h4>
		  			<h2>Winter-Spring!</h2>
		  			<p>Take 20% Off 'Sale Must-Haves'</p>
		  			<div class="btn-container">
		  				<button class="btn-pink">Shop Women's</button>
		  				<button class="btn-gray">Shop Mens</button>
		  			</div>
		  		</div>
			</div>
			<div class="mySlides fade">
		  		<img src="https://livani-react.envytheme.com/_next/static/media/main-banner3.f1172bd804136243b4ef1752767b8724.jpg" style="width:100%">
		  		<div class="text text-2 text-3">
		  			<h4>Buy Now From Livani!</h4>
		  			<h2>New Season Canvas!</h2>
		  			<p>Take 20% Off 'Sale Must-Haves'</p>
		  			<div class="btn-container">
		  				<button class="btn-pink">Shop Women's</button>
		  				<button class="btn-gray">Shop Mens</button>
		  			</div>
		  		</div>
			</div>
			<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
			<a class="next" onclick="plusSlides(1)">&#10095;</a>
			<div class="dot-container" style="text-align:center">
		  		<span class="dot" onclick="currentSlide(1)"></span> 
		  		<span class="dot" onclick="currentSlide(2)"></span> 
		  		<span class="dot" onclick="currentSlide(3)"></span> 
			</div>
		</div>
		<div class="banner-container">
			<div class="item item-1">
				<img src="https://livani-react.envytheme.com/_next/static/images/categories1-b467ebb8485559cdbc1530b3c8175d33.jpg" class="banner-img"/>
				<div class="txt-frame">
					<span>Don't Miss Today</span>
					<h2>50% OFF</h2>
				</div> 
				<button onclick="onHandleCart()" class="btn-pink">DIscover Now</button>
			</div>
			<div class="item item-2">
				<img src="https://livani-react.envytheme.com/_next/static/images/categories2-576415a29304115e08be923ddebafca5.jpg" class="banner-img"/>
				<div class="txt-frame">
					<span>Don't Miss Today</span>
					<h2>50% OFF</h2>
				</div> 
				<button class="btn-pink">DIscover Now</button>
			</div>
			<div class="item item-3">
				<img src="https://livani-react.envytheme.com/_next/static/images/categories3-d589e5d06fb3ebd48d28f804250e9371.jpg" class="banner-img"/>
				<div class="txt-frame">
					<span>Don't Miss Today</span>
					<h2>50% OFF</h2>
				</div> 
				<button class="btn-pink">DIscover Now</button>
			</div>
			<div class="item item-4">
				<img src="https://livani-react.envytheme.com/_next/static/images/categories4-4805bf91a67631aa07c7ca2c541ef131.jpg" class="banner-img"/>
				<div class="txt-frame">
					<span>Don't Miss Today</span>
					<h2>50% OFF</h2>
				</div> 
				<button class="btn-pink">DIscover Now</button>
			</div>
		</div>
		<div class='recent'>
			<p class="title-part">See Our Products</p>
			<h1>Recent Products</h1>
			<div  class="product-list">
			<c:forEach items="${products}" var="user">
				<div class='item'>
					<img class='item-img' src="${user.imgUrl}">
					<img class='img-hover' src="${user.imgUrlHover}">
					<div class='txt-frame'>
						<h2 class='item-title'>${user.name}</h2>
						<div class='container-price'>
							<div class='price'>
								<p class='old'>$${user.oldPrice}</p>
								<p class="new">$${user.price}</p>
							</div>
							<div class='five-stars'>
								<i class='fas fa-star'></i>
								<i class='fas fa-star'></i>
								<i class='fas fa-star'></i>
								<i class='fas fa-star'></i>
								<i class='fas fa-star'></i>
							</div>
							<div onclick="onAddToCart(${user.id})" class='add-to-cart'><a>Add To Cart</a></div>
						</div>
					</div>
				</div>
				
			</c:forEach>
	</div>
		</div>
		<div class="offer-area">
			<div class="offer">
				<div class="offer-inside">
					<p class="title-part">Limited Time Offer!</p>
					<h1>-40% Off</h1>
					<p class="title-cur">Get The Best Dealt</p>
					<button class="btn-pink">Discover Now</button>
				</div>
			</div>
		</div>
		<div class='recent popular-products'>
			<p class="title-part">See Our Products</p>
			<h1>Popular Products</h1>
			<div  class="product-list">
			<c:forEach items="${products}" var="user">
				<div class='item'>
					<img class='item-img' src="${user.imgUrl}">
					<img class='img-hover' src="${user.imgUrlHover}">
					<div class='txt-frame'>
						<h2 class='item-title'>${user.name}</h2>
						<div class='container-price'>
							<div class='price'>
								<p class='old'>$${user.oldPrice}</p>
								<p class="new">$${user.price}</p>
							</div>
							<div class='five-stars'>
								<i class='fas fa-star'></i>
								<i class='fas fa-star'></i>
								<i class='fas fa-star'></i>
								<i class='fas fa-star'></i>
								<i class='fas fa-star'></i>
							</div>
							<div onclick="onAddToCart(${user.id})" class='add-to-cart'><a>Add To Cart</a></div>
						</div>
					</div>
				</div>
				
			</c:forEach>
		</div>
		<div class="owl-container">
			<div id="owl-demo" class="owl-carousel owl-theme">
          
			  <div class="item" >
			  	<div class="container-icon">
			  		<i class="fas fa-phone"></i>
			  	</div>
			  	<h2>24/7 Customer Support</h2>
			  </div>
			  <div class="item">
			  	<div class="container-icon">
			  		<i class="fas fa-truck"></i>
			  	</div>
			  	<h2>Free Shipping Worldwide</h2>
			  </div>
			  <div class="item">
			  	<div class="container-icon">
			  		<i class="fas fa-undo"></i>
			  	</div>
			  	<h2>Easy Return Policy</h2>
			  </div>
			  <div class="item">
			  	<div class="container-icon">
			  		<i class="fas fa-mobile-alt"></i>
			  	</div>
			  	<h2>Track your order</h2>
			  </div>
			  <div class="item">
			  	<div class="container-icon">
			  		<i class="fas fa-user-secret"></i>
			  	</div>
			  	<h2>Secure Payment Methods</h2>
			  </div>
			  <div class="item">
			  	<div class="container-icon">
			  		<i class="fas fa-percent"></i>
			  	</div>
			  	<h2>Weekend Discount Coupon</h2>
			  	
			  </div>
			  <div class="item">
			  	<div class="container-icon">
			  		<i class="fas fa-sync-alt"></i>
			  	</div>
			  	<h2>7 Day Exchange Policy</h2>
			  </div>			 
			</div>
		</div>
		<div id="about">
		</div>
		<div id="shop-cart">
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
	</div>
	<%@ include file="loading.jsp" %>
	<script>
	$(function(){
		
		$('#about').load('About.jsp')
		$('#shop-cart').load('shop-cart.jsp')
		setTimeout(() => {
			document.getElementById("loading").style.opacity = "0";
			document.getElementById("loading").style.visibility = "hidden";
		},1000)
	})
	const api_url = "https://web-pro-74ce5-default-rtdb.firebaseio.com/.json";

	// Defining async function 
	async function getapi(url) {
	    // Storing response 
	    const response = await fetch(url);
	    // Storing data in form of JSON 
	    var data = await response.json();
	    if (response) {
	        hideloader();
	    }
	    show(data);
	}
	// Calling that async function 
	getapi(api_url);

	// Function to hide the loader 
	
	// Function to define innerHTML for HTML table 
	function show(data) {
	    let tab ='';
	    const tempData = []
	    for (let key in data) {
	        tempData.push({
	            ...data[key],
	            _id: key
	        })
	    }
	    
	    // Loop to access all rows  
	    for (let user of tempData) {
	        tab += "<div class='item'>" +
	        	"<img class='item-img' src='" + user.imgUrl + "'>" +
	        	"<img class='img-hover' src='"+ user.imgUrlHover + "'>" +
	        	"<div class='txt-frame'>" + 
	        		"<h2 class='item-title'>" + user.name + "</h2>" +
	        	 	"<div class='container-price'>"+
	        	 		"<div class='price'>" +
	        	 		"<p class='old'>"+"$"+ user.oldPrice +"</p>"+
						"<p class='new'>"+"$"+ user.price + "</p>" +  
						"</div>"+
						"<div class='five-stars'>" +
							"<i class='fas fa-star'></i>"+
							"<i class='fas fa-star'></i>"+
							"<i class='fas fa-star'></i>"+
							"<i class='fas fa-star'></i>"+
							"<i class='fas fa-star'></i>"+
						"</div>"+
						"<div onclick=onAddToCart('"+user._id +"') class='add-to-cart'><a>Add To Cart</a></div>"+
	        			"</div>" +
	        		"</div>"
	       		+ "</div>"
	    // Setting innerHTML as tab variable 
	    }
	    /* document.getElementById("product-list").innerHTML = tab;
	    document.getElementById("popular-products").innerHTML = tab; */
		} 
		var slideIndex = 1;
		showSlides(slideIndex);
		function onHandleOverlay () {
			var element = localStorage.getItem("sidebar");
			if(element === 'opened'|| !element) {
				console.log(1)
				onHandleMenu()
			} else if(element === 'closed') {
				onHandleCart()
			}
		}
		function onAddToCart (_id) {
			const presentCart = JSON.parse(localStorage.getItem('cart'))
			if (presentCart) {
				presentCart.push(_id)
				localStorage.setItem('cart', JSON.stringify(presentCart))
			} else {
				const temp = []
				temp.push(_id)
				localStorage.setItem('cart', JSON.stringify(temp))
			}
			onUpdateCart()
			getCartList()
		}
		function onUpdateCart() {
			const cartProducts  = JSON.parse(localStorage.getItem('cart'))
			if(cartProducts) {
				document.getElementById('number-products').innerHTML = cartProducts.length
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
				document.querySelector(".shop-cart").style.transform = "translateX(450px)";
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
				document.querySelector(".about").style.transform = "translateX(450px)";
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
				document.querySelector(".shop-cart").style.transform = "translateX(450px)";
			}
		}
		checkOpenedCart()
		function checkOpenedMenu () {
			var opened = localStorage.getItem("sidebar");
			console.log(localStorage)
			if(opened == 'closed' || !opened) {
			} else {
				localStorage.setItem("sidebar", "closed");
				document.querySelector(".about").style.transform = "translateX(450px)";
			}
		}
		checkOpenedMenu();
		function plusSlides(n) {
		  showSlides(slideIndex += n);
		}
		
		function currentSlide(n) {
		  showSlides(slideIndex = n);
		}
		
		function showSlides(n) {
		  var i;
		  var slides = document.getElementsByClassName("mySlides");
		  var dots = document.getElementsByClassName("dot");
		  if (n > slides.length) {slideIndex = 1}    
		  if (n < 1) {slideIndex = slides.length}
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none";  
		  }
		  for (i = 0; i < dots.length; i++) {
		      dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		}
		setTimeout(showSlides, 2000);
		$(document).ready(function() {
			 
			  $("#owl-demo").owlCarousel({
			    navigation : true
			  });
			 
			});
	</script>
	
</body>
</html>