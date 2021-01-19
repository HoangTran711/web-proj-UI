<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
<link rel="stylesheet" href="<%=request.getContextPath()+"/resource/navbar.css"%>">
</head>
<body>
	<div class="navbar">
		<a href="<%=request.getContextPath() + "/home"%>"><img src="<%=request.getContextPath() + "/asset/lsb.png"%>" class="nav-logo"></a>
		
		<ul class="nav-list">
			<!-- <li class="item">
				<span>Home</span>
				<i class="fas fa-chevron-down"></i>
				<ul class="dropdown-menu">
					<li class="item"><a class="item-link" href="#">Home 3</a></li>
					<li class="item"><a class="item-link" href="#">Home 3</a></li>
					<li class="item"><a class="item-link" href="#">Home 3</a></li>
					<li class="item"><a class="item-link" href="#">Home 3</a></li>
				</ul>
			</li> -->
			<li class="item">
				<span>Shop</span>
				<i class="fas fa-chevron-down"></i>
				<ul class="dropdown-menu">
					<li class="item"><a class="item-link"  href="<%=request.getContextPath() + "/products?type=Men"%>">Men's</a></li>
					<li class="item"><a class="item-link"  href="<%=request.getContextPath() + "/products?type=Women"%>">Women's</a></li>
					<li class="item"><a class="item-link" href="<%=request.getContextPath() + "/products?type=Pant"%>">Pant</a></li>
					<li class="item"><a class="item-link" href="<%=request.getContextPath() + "/products?type=TShirt"%>">T-Shirt</a></li>
				</ul>
			</li>
			<li class="item">
				<span>Pages</span>
				<i class="fas fa-chevron-down"></i>
				<ul class="dropdown-menu">
					<li class="item"><a class="item-link" href="<%=request.getContextPath()+"/about-us.jsp"%>">About Us</a></li>
					<li class="item"><a class="item-link" href="<%=request.getContextPath()+"/login"%>">Login</a></li>
					<li class="item"><a class="item-link" href="<%=request.getContextPath()+"/coming.jsp"%>" >Coming Soon</a></li>
					<li class="item"><a class="item-link" href="<%=request.getContextPath()+"/register"%>">Register</a></li>
				</ul>
			</li>
			<li class="item">
				<span><a href="<%=request.getContextPath() + "/products?type=Women"%>">Women's</a></span>
			</li>
			<li class="item">
				<span><a href="<%=request.getContextPath() + "/products?type=Men"%>">Men's</a></span>
			</li>
		</ul>
		<div class="nav-icon">
			<i class="fas fa-search icon"></i>
			<div onclick="onHandleCart()" class="shop-cart-container icon">
				<i class="fas fa-shopping-cart"></i>
				<div class="ab-top">
					<span id="number-products">0</span>
				</div>
			</div>
			<i onclick="onHandleMenu()" class="fas fa-bars icon"></i>
		</div>
		
	</div>
	<script type="text/javascript">
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
	function onUpdateCart() {
		const cartProducts  = JSON.parse(localStorage.getItem('cart'))
		if(cartProducts) {
			document.getElementById('number-products').innerHTML = cartProducts.length
		}
	} 
	onUpdateCart()
	function onHandleMenu() {
		var opened = localStorage.getItem("sidebar");
		console.log(localStorage)
		if(opened == 'closed' || !opened) {
			localStorage.setItem("sidebar", "opened");
			document.querySelector(".about").style.transform = "translateX(0px)";
		} else {
			localStorage.setItem("sidebar", "closed");
			document.querySelector(".about").style.transform = "translateX(450px)";
		}
	}
	</script>
</body>
</html>