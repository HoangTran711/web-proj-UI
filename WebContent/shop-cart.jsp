<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()+"/resource/shop-cart.css"%>">
</head>
<body>
	<div class="shop-cart">
		<div class='header'>
			<h2>My Cart</h2>
		</div>
		<ul class="cart-list" id="cart-list">
		</ul>
		<button onclick="onHandleProceed()" class="btn-pink btn-cart">
			Proceed to checkout
		</button>
		<button onclick="onHandleViewing()" class="btn-gray btn-cart">
			Viewing Shopping Cart
		</button>
	</div>
	<script>
	function onHandleViewing () {
		location.href = "<%=request.getContextPath()+ "/cart"%>"
	}
	function onHandleProceed () {
		location.href="<%=request.getContextPath()+"/checkout.jsp"%>"
	}
	function getCartList() {
		const products = []
		
		const productsId = JSON.parse(localStorage.getItem('cart'))
		if(productsId) { 
			let tab ='';
			productsId.map(async(id,index) => {
				const res = await fetch('http://localhost:3000/get-product/'+id)
				const item = await res.json()
				
				tab += "<li class='item-cart'>"+ "<i onclick='onDeleteProduct("+item[0].id+")' class='fas fa-times'></i>" + "<img src='"+item[0].imgUrl+"'/>"+ "<div class='txt-frame'>" + "<h3>" + item[0].name + "</h3>" +"<div class='total'>"+"<span class='quantity'>1 x</span>" +"<span class='name'>" + item[0].price +"$" + "</span>"+"</div>" +"</div>" + "</li>"
				
				if(index === (productsId.length -1)) {
					document.getElementById("cart-list").innerHTML = tab
				}
			})
			
			
		}
		
	}
	function onUpdateCart() {
		const cartProducts  = JSON.parse(localStorage.getItem('cart'))
		if(cartProducts) {
			document.getElementById('number-products').innerHTML = cartProducts.length
		}
	}
	function onDeleteProduct (id) {
		const productID = JSON.parse(localStorage.getItem('cart'))
		const temp = productID.filter(product => product !== id)
		localStorage.setItem('cart',JSON.stringify(temp))
		getCartList()
		onUpdateCart()
	}
	
	getCartList()
	</script>
</body>

</html>