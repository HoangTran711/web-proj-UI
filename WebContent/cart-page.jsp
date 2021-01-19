<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()+"/resource/cart-page.css"%>">
<meta name='viewport' content='width=device-width, initial-scale=1'>
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
    <section class="bar-top">
        <div class="name-main"> 
            <h2>Cart</h2>
        </div>
        <div class="">
            <ul>
                <li class="btn-home"><a href="<%=request.getContextPath()+ "/home" %>">Home</a></li>
                <li class="btn-cart"><a href="#">Cart</a></li>
            </ul>
        </div>
    </section>  
    <section class="product-list">
        <div class="properties">
            <table id="cart-table">
            </table>
        </div>
    </section>
    <section class="sumary">
        <div class="btn-shopping">
            <a href="#" class="optional-btn">CONTINUE SHOPPING</a>
        </div>
        <div class="cart-total">
            <h3>Cart Totals</h3>
            <ul>
                <li>
                    <span class="label">Subtotal</span>
                    <span id="subtotal"></span>
                </li>
                <li>
                    <span class="label">Shipping </span>
                    <span>$100</span>
                </li>
                <li class="final-price">
                    <span class="label">Total </span>
                    <span id="total"></span>
                </li>
            </ul> 
            <a href="<%=request.getContextPath()+"/checkout.jsp"%>" class="default-btn">PROCEED TO CHECKOUT</a>
        </div>
    </section>
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
	function getCartList() {
		const products = []
		
		const productsId = JSON.parse(localStorage.getItem('cart'))
		
		if(productsId) { 
			let tab ='<tr><th class="t-product">PRODUCTS</th><th class="t-name">NAME</th><th class="t-unitprice">UNIT PRICE</th><th class="t-quantity">QUANTITY</th><th class="t-total">TOTAL</th></tr>';
			let subtotal = 0;
			productsId.map(async(id,index) => {
				const res = await fetch('http://localhost:3000/get-product/'+id)
				const item = await res.json()
				subtotal += parseInt(item[0].price)
				tab += "<tr>" + "<td><img src="+ item[0].imgUrl +"></td>" + "<td>" + item[0].name + "</td>" + "<td>$" + item[0].price + "</td>" + "<td>1</td>" + "<td>$" + item[0].price + "</td>" + "</tr>"
				
				if(index === (productsId.length -1)) {
					let total = subtotal + 100
					document.getElementById("cart-table").innerHTML = tab
					document.getElementById("subtotal").innerHTML ='$'+subtotal
					document.getElementById("total").innerHTML = '$' + total
				}
			})
			
			
		}
		
	}
	getCartList()
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