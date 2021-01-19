
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="navbar.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()+"/resource/home-filter.css"%>">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="<%=request.getContextPath()+"/resource/about-us.css"%>">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>   
</head>
<body>
	<div onclick="onHandleOverlay()" class="overlay"></div>
	<div id="about">
	</div>
	<div id="shop-cart">
	</div>
    <section class="bar-top">
        <div class="name-main"> 
            <h2>Men's</h2>
        </div>
        <div class="">
            <ul>
                <li class="btn-home"><a href="<%=request.getContextPath() + "/home"%>">Home</a></li>
                <li class="btn-products"><a href="#">Products</a></li>
            </ul>
        </div>
    </section>
    <section class="banner-container">
        <div class="banner">
            <div class="picture-banner">
                <img src="https://livani-react.envytheme.com/_next/static/images/categories1-b467ebb8485559cdbc1530b3c8175d33.jpg" alt="picture1">
            </div>
            <div class="content-banner">
                <Span>Don't Miss Today</Span>
                <h2>50% OFF</h2>
            </div>
            <a href="#" class="default-btn">Discover Now</a>
            
        </div>
        <div class="banner">
            <div class="picture-banner">
                <img src="https://livani-react.envytheme.com/_next/static/images/categories2-576415a29304115e08be923ddebafca5.jpg" alt="picture2">
            </div>
            <div class="content-banner">
                <Span style="color:  #f53f85;">New Collection</Span>
                <h2 style="color: black;">Need Now</h2>
            </div>
            <a href="#" class="default-btn">Discover Now</a>
        </div>
        <div class="banner">
            <div class="picture-banner">
                <img src="https://livani-react.envytheme.com/_next/static/images/categories3-d589e5d06fb3ebd48d28f804250e9371.jpg" alt="picture3">
            </div>
            <div class="content-banner">
                <Span style="color: #f53f85;">You Looks</Span>
                <h2 style="color: black;">Must haves</h2>
            </div>
            <a href="#" class="default-btn">Discover Now</a>
        </div>
        <div class="banner">
            <div class="picture-banner">
                <img src="https://livani-react.envytheme.com/_next/static/images/categories4-4805bf91a67631aa07c7ca2c541ef131.jpg" alt="picture4">
            </div>
            <div class="content-banner">
                <Span>Take 20% OFF</Span>
                <h2>Winter Spring</h2>
            </div>
            <a href="#" class="default-btn">Discover Now</a>
        </div>
    </section>
    <section class="products">
    	
        <div class="products-filter">
        <span class="Coming">Left sidebar coming soon!</span>
            <div class="filter-area" >
                <div class="filter-list">
                    <h3>Current Selection</h3>
                    
                    <div class="selection-list">
                        <ul>
                            <li>
                                <i class="fas fa-times-circle"></i> 
                                <span>44</span>
                            </li>
                            <li>
                                <i class="fas fa-times-circle"></i> 
                                <span>XI</span>
                            </li>
                            <li>
                                <i class="fas fa-times-circle"></i> 
                                <span>Clothing</span>
                            </li>
                            <li>
                                <i class="fas fa-times-circle"></i> 
                                <span>Shoes</span>
                            </li>
                            <li>
                                <i class="fas fa-times-circle"></i> 
                                <span>44</span>
                            </li>          
                        </ul>
                    </div>
                    <a href="#" class="delete-filter-choiced">
                        <i class="far fa-trash-alt"></i>
                        <span>Clear All</span>
                    </a>
                </div>
                <div class="filter-list">
                    <h3>Colections</h3>
                    <div class="radio-check">
                        <input type="radio" name="Colections" value="men" id="men">
                        <label for="men">Men's</label>
                    </div>
                    <div class="radio-check">
                        <input type="radio" name="Colections" value="women" id="women">
                        <label for="women">Women's</label>
                    </div>
                    <div class="radio-check">
                        <input type="radio" name="Colections" value="clothing" id="clothing">
                        <label for="clothing">Clothing</label>
                    </div>
                    <div class="radio-check">
                        <input type="radio" name="Colections" value="shoes" id="shoes">
                        <label for="shoes">Shoes</label>
                    </div>
                    <div class="radio-check">
                        <input type="radio" name="Colections" value="accessories" id="accessories">
                        <label for="accessories">Accessories</label>
                    </div>
                </div>
                <div class="filter-list">
                    <h3>Price</h3>
                    <div class="price-input">
                        <input type="text" name="price">
                    </div>
                </div>
                <div class="filter-list">
                    <h3>Size</h3>
                    <ul class="size-list">
                        <li>20</li>
                        <li>20</li>
                        <li style="background-color:#f53f85;color: white;">20</li>
                        <li>20</li>
                        <li>20</li>
                        <li>20</li>
                        <li>20</li>
                    </ul>
                </div>
                <div class="filter-list">
                    <h3>Color</h3>
                    <div class="color-list">
                        <div class="color red"></div>
                        <div styles="" class="color yellow"></div>
                        <div class="color green"></div>
                        <div class="color blue"></div>
                        <div class="color orange"></div>
                        <div class="color pink "></div>
                    </div>
                </div>
                <div class="filter-list">
                    <h3>Brands</h3>
                    <div class="check-box">
                        <input type="checkbox" name="gucci" id="">
                        <label for="">Gucci</label>
                    </div>
                    <div class="check-box">
                        <input type="checkbox" name="virgil" id="">
                        <label for="">Virgil Abloh</label>
                    </div>
                    <div class="check-box">
                        <input type="checkbox" name="balenciaga" id="">
                        <label for="">Balenciaga</label>
                    </div>
                    <div class="check-box">
                        <input type="checkbox" name="moncler" id="">
                        <label for="">Moncler</label>
                    </div>
                    <div class="check-box">
                        <input type="checkbox" name="fendi" id="">
                        <label for="">Fendi</label>
                    </div>
                    <div class="check-box">
                        <input type="checkbox" name="versace" id="">
                        <label for="">Versace</label>
                    </div>
                </div>
            </div>
        </div>
        <div id="product-list" class="product-list" >
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
			setTimeout(() => {
				document.getElementById("loading").style.opacity = "0";
				document.getElementById("loading").style.visibility = "hidden";
			},1000)
			$('#about').load('About.jsp')
			$('#shop-cart').load('shop-cart.jsp')
		})
		console.log(1)
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