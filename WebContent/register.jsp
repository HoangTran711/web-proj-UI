<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
<link rel="stylesheet" href="<%=request.getContextPath() + "/resource/register.css"%>">
</head>
<body>
	<div class="login">
		<div class="login-form">
			<div class="img-container">
				<img class="header" src="<%=request.getContextPath() + "/asset/loading.gif"%>">
			</div>
			<form action="">
				<div class="login__input">
					<i class="fas fa-user icon"></i>
					<input placeholder="First name" type="text" class="name" id="firstName"/>
				</div>
				<div class="login__input">
					<i class="fas fa-user icon"></i>
					<input placeholder="Last name" type="text" class="name" id="lastName"/>	
				</div>
				<div class="login__input">
					<i class="fas fa-envelope icon"></i>
					<input placeholder="Email" type="email" class="email" id="email"/>	
				</div>
				<div class="login__input">
					<i class="fas fa-lock icon"></i>
					<input placeholder="Password" type="password" class="password" id="password">
				</div>
				<div class="login__input">
					<i class="fas fa-key icon"></i>
					<input placeholder="Confirm Password" type="password" class="password-confirm">
				</div>
			</form>
			<div class="tool-container">
				<div class="show-pass">
				<input onclick="onShowPassHandle()" type="checkbox" id="show" class="checkbox" >
				<label for="show">Show Password</label>
				</div>
				<a href="<%=request.getContextPath() + "/login.jsp"%>">Return to Log-in page ?</a>
			</div>
			<div onclick="onRegisterHandle()" class="btn btn-login">
				<a>Register</a>
				<% String val = request.getParameter("testParam"); %>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	function onShowPassHandle () {
		const ele = document.querySelector("#show").checked
		if(ele) {
			document.querySelector(".password").type="text"
			
		} else {
			document.querySelector(".password").type="password"
		}
	}
	
	async function onRegisterHandle () {
		var email = document.querySelector("#email").value
		const responseJSON = await fetch('https://web-user-f153d-default-rtdb.firebaseio.com/.json')
		const responseOb = await responseJSON.json()
		for(var key in responseOb ) {
			if(email === responseOb[key].email) {
				return document.querySelector("#email").style.borderBottom = "1px solid red"
			}
		}
		var firstName = document.querySelector("#firstName").value
		var lastName = document.querySelector("#lastName").value
		
		var password = document.querySelector("#password").value
		var confirm = document.querySelector(".password-confirm").value
		if(!firstName) {
			 return document.querySelector("#firstName").style.borderBottom = "1px solid red"
		} else {
			 document.querySelector("#firstName").style.borderBottom = "1px solid #BDBDBD"
		}
		if(!lastName) {
			return document.querySelector("#lastName").style.borderBottom = "1px solid red"
		} else {
			document.querySelector("#lastName").style.borderBottom = "1px solid #BDBDBD"
		}
		if(!email){
			return document.querySelector("#email").style.borderBottom = "1px solid red"
		} else {
			document.querySelector("#email").style.borderBottom = "1px solid #BDBDBD"
		}
		if(!password) {
			return document.querySelector("#password").style.borderBottom = "1px solid red"
		} else {
			document.querySelector("#password").style.borderBottom = "1px solid #BDBDBD"
		}
		if(confirm !== password) {
			return document.querySelector(".password-confirm").style.borderBottom = "1px solid red"
		} else {
			document.querySelector(".password-confirm").style.borderBottom = "1px solid #BDBDBD"
		}
		const data = {
			firstName,
			lastName,
			email,
			password
		}
		const responseData = await fetch('https://web-user-f153d-default-rtdb.firebaseio.com/.json', {
			headers: {
				'Content-type': 'application/json'
			},
			body: JSON.stringify(data),
			method: 'POST'
			
		})
		if(responseData) {
			location.href="<%= request.getContextPath() + "/login" %>"
		}
		
	}
	</script>
</body>
</html>