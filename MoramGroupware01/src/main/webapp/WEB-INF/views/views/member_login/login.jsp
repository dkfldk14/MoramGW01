<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>CodePen - Random Login Form</title>

    <style>
@import url(http://fonts.googleapis.com/css?family=Exo:100,200,400);
@import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

a{
	margin-left: 50px;
	color: #fff;
}

body{
	margin: 0;
	padding: 0;
	background: #fff;

	color: #fff;
	font-family: Arial;
	font-size: 12px;
}

.body{
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	width: auto;
	height: auto;
	background-image: url('resources/assets/img/img1.jpg');
	background-size: cover;
	-webkit-filter: blur(0px);
	z-index: 0;
}

.grad{
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */
	z-index: 1;
	opacity: 0.7;
}

.header{
	position: absolute;
	top: calc(50% - 35px);
	left: calc(50% - 255px);
	z-index: 2;
}

.header div{
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 70px;
	font-weight: 200;
	margin-left: -50px;
	margin-top: -10px;
}

.header div span{
	color: #5379fa !important;
} 

.login{
	position: absolute;
	top: calc(50% - 75px);
	left: calc(50% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}

.login input[type=text]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=password]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.login input[type=button]{
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login input[type=button]:hover{
	opacity: 0.8;
}

.login input[type=button]:active{
	opacity: 0.6;
}

.login input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=button]:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}
</style>

    <script src="resources/assets/js/prefixfree.min.js"></script>

</head>

<body>

  <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div><span>Mo</span>Ram</div>
		</div>
		<br>
		<form id="form">
		<div class="login">
				<input type="text" placeholder="username" id="id" name="user"><br>
				<input type="password" placeholder="password" id="pw" name="password"><br>
				<input type="button" id="login_btn" value="Login"><br>
				<a href="/groupware/member_login/join">처음 방문이세요? 그렇다면 여기로..</a>
		</div>
		</form>
		<!-- <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script> -->
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script>
 	 $(document).ready(function() {
 		 $('#login_btn').click(function() {
			var id = $('#id').val();
			var pw = $('#pw').val();
			
			$.ajax({
				type: 'post',
				url: '/groupware/member_login/login_check',
				data: {
					userid:id,
					password:pw
				},
				success: function(res, status, xhr){
					if(res=='OK'){
						//alert('aaaaaa');
						$('#form').attr("action", "/groupware/main");
						$('#form').attr("method", "post");
						$('#form').submit();	
					}else if(res=='1'){
						alert('존재하지 않는 아이디 입니다');
					}else if(res=='NOK'){
						alert('비밀번호가 틀렸습니다');
					}
				}
			});
		    
		});
 	 });
  </script>

</body>

</html>