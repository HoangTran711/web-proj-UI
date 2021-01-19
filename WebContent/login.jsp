<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="//use.fontawesome.com/releases/v5.0.7/css/all.css">
<link rel="stylesheet" href="<%=request.getContextPath() + "/resource/login.css"%>">
</head>
<body>
	<div class="login">
		<div class="login-form">
			<div class="img-container">
				<img class="header" src="<%=request.getContextPath() + "/asset/loading.gif"%>">
			</div>
			<div class="login__input">
				<i class="fas fa-user icon"></i>
				<input placeholder="Email" type="email" class="email" id="email"/>	
			</div>
			<div class="login__input">
				<i class="fas fa-key icon"></i>
				<input placeholder="Password" type="password" class="password" id="password">
			</div>
			<div class="tool-container">
				<div class="show-pass">
				<input onclick="onShowPassHandle()" type="checkbox" id="show" class="checkbox" >
				<label for="show">Show Password</label>
				</div>
				<a href="<%= request.getContextPath() + "/register.jsp" %>" >You haven't had account yet ?</a>
			</div>
			<div onclick="onLoginHandle()" class="btn btn-login">
				<a>Login</a>
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
		async function onLoginHandle () {
			const res = await fetch('https://web-user-f153d-default-rtdb.firebaseio.com/.json')
			const dataObject = await res.json()
			const data =[]
			for(var key in dataObject) {
				data.push(dataObject[key])
			}
			
			var email = document.getElementById('email').value
			var password = document.getElementById('password').value
			const account = data.filter(account => email === account.email)
			if(account.length !== 0) {
				document.querySelector("#email").style.borderBottom = "1px solid #BDBDBD"
				if( password === account[0].password) {
					console.log('isLogin')
					document.querySelector("#password").style.borderBottom = "1px solid #BDBDBD"
					localStorage.setItem('account', JSON.stringify(account[0]))
					return location.href='<%=request.getContextPath()+ "/home"%>'
				}
				if(password !== account[0].password) {
					document.querySelector("#password").style.borderBottom = "1px solid red"
					document.getElementById('password').value =''
				} else {
					document.querySelector("#password").style.borderBottom = "1px solid #BDBDBD"
				}
			} else {
				document.querySelector("#email").style.borderBottom = "1px solid red"
					document.querySelector("#password").style.borderBottom = "1px solid red"
					document.getElementById('email').value = ''
					document.getElementById('password').value =''
			}
		}
	</script>
</body>
</html>