<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check out</title>
<link rel="stylesheet" href="<%=request.getContextPath()+"/resource/about-us.css"%>">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()+"/resource/checkout.css"%>">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>  
<script>
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
				document.getElementById("subtotal").innerHTML ="<td>" + '$' + subtotal + "</td>"
				document.getElementById("total").innerHTML = "<td>" + '$' + total + "</td>"
			}
		})
		
		
	}
	
}
getCartList()
</script>
</head>
<body>
	<div onclick="onHandleOverlay()" class="overlay"></div>
	<div id="about">
	</div>
	<div id="shop-cart">
	</div>
	<section class="bar-top">
        <div class="name-main"> 
            <h2>Checkout</h2>
        </div>
        <div class="">
            <ul>
                <li class="btn-home"><a  href="<%=request.getContextPath()+"/home"%>">Home</a></li>
                <li class="btn-products"><a href="#">Checkout</a></li>
            </ul>
        </div>
    </section>
    <section class="body-container">
        <div class="billing-detail">
            <div class="heading-container">
                <h3>Billing Details</h3>
            </div>
            <div class="box-divice">
                <div class="billing-pro">
                    <div class="first-name">
                        <div class="billing-label">First name</div>
                        <input type="text" class="billing-input" id="first-name" name="first-name">
                    </div>
                </div>
                <div class="billing-pro">
                    <div class="last-name">
                        <div class="billing-label">Last name</div>
                        <input type="text" class="billing-input" id="last-name" name="last-name">
                    </div>
                </div>
            </div>
            <div class="billing-pro">
                <div class="company-name">
                    <div class="billing-label">company name</div>
                    <input type="text" class="billing-input" id="company" name="company-name">
                </div>
            </div>
            <div class="billing-pro">
                <div class="address">
                    <div class="billing-label">address</div>
                    <input type="text" class="billing-input" id="address" name="address">
                </div>
            </div>
            <div class="billing-pro">
                <div class="city">
                    <div class="billing-label">Town/city</div>
                    <input type="text" id="city" class="billing-input" name="city">
                </div>
            </div>
            <div class="box-divice">
                <div class="billing-pro">
                    <div class="country">
                        <div class="billing-label">state/country</div>
                        <input type="text" id="country" class="billing-input" name="country">
                    </div>
                </div>
                <div class="billing-pro">
                    <div class="zip">
                        <div class="billing-label">postcode/zip</div>
                        <input type="text" id="postcode" class="billing-input" name="zip">
                    </div>
                </div>
            </div>
            <div class="box-divice">
                <div class="billing-pro">
                    <div class="email">
                        <div class="billing-label">email address</div>
                        <input type="email" id="email" class="billing-input" name="email">
                    </div>
                </div>
                <div class="billing-pro">
                    <div class="phone">
                        <div class="billing-label">phone</div>
                        <input id="phone" type="tel" class="billing-input" name="phone">
                    </div>
                </div>
            </div>
        </div>
        <div class="order">
            <div class="heading-container">
                <h3>Your Order</h3>
            </div>
        
            <table>
                <tr>
                    <th>Product Name</th>
                    <th>Total</th>
                </tr>
                <tr>
                    <td>Cart Subtotal</td>
                    <td id="subtotal">$0</td>
                </tr>
                <tr>
                    <td>Shipping</td>
                    <td>$100</td>
                </tr>
                <tr>
                    <td>Order Total</td>
                    <td id="total">$0.00</td>
                </tr>
            </table>
            <div class="direct-order">
                <div class="direct-input">
                    <input checked type="radio" id="radio" />
                    <label for="radio">Direct Order</label>
                </div>
                <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.</p>
                <div onclick="onHandlePlaceHolder()" class="default-btn">
                    <a>Place Order</a>
                </div>
            </div>
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
		$('#shop-cart').load('shop-cart.jsp')
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
    function onHandlePlaceHolder () {
		const productsId = JSON.parse(localStorage.getItem('cart'))
		let productId= ''
		if(productsId) { 
			let subtotal = 0;
			
			productsId.map(async(id,index) => {
				const res = await fetch('http://localhost:3000/get-product/'+id)
				const item = await res.json()
				subtotal += parseInt(item[0].price)
				productId += id + ','
				if(index === (productsId.length -1)) {
					let total = subtotal + 100
					let firstName = document.getElementById("first-name").value;
			    	let lastName = document.getElementById("last-name").value;
			    	let company = document.getElementById("company").value;
			    	let address = document.getElementById("address").value;
			    	let city = document.getElementById("city").value;
			    	let country = document.getElementById("country").value;
			    	let postcode = document.getElementById("postcode").value;
			    	let email = document.getElementById("email").value;
			    	let phone = document.getElementById("phone").value;
			    	location.href = "<%=request.getContextPath()+"/checkout?"%>"+ "firstName=" + firstName + "&lastName=" + lastName + "&company=" + company + "&address=" + address + "&city=" + city + "&country=" + country + "&postcode="+postcode + "&email=" + email + "&phone=" + phone + "&amount="+total+"&products="+productId
			    	
				}
			})
			
			
		}
    	
    }
	</script>
</body>
</html>