<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nav.css">
<link rel="stylesheet" href="/viewport_mini_web/resources/css/login.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>LOGIN</title>

</head>

<body>
	<%@ include file="/WEB-INF/views/common/nav.jsp"%>
	<div class="wrapper">
		<div class="container container-md">
			<div class="sign-in-container">
				<!-- 로그인!!!!!!!!!!!! -->
				<form method="post" id="idform" action="${pageContext.request.contextPath}/login" class="" novalidate>
					<h1 class="logintitle">
						<b>Sign in</b>
					</h1>

					<input type="text" placeholder="Email" id="uemail" name="uemail" class="logininput mb-4"> <small class="error-message" id="idError"></small> <input type="password" placeholder="Password" id="upassword" name="upassword" class="logininput mb-4"> <small class="error-message" id="pwError"></small>

					<div class="login-remember mb-4 mt-3">
						<input type="checkbox" name="login-remember" id="login-rememberbox"> 
						<label for="login-remember">
						Remember ID
						</label>
					</div>

					<div class="width: 300px mb-3 ">
						<button type="submit" class="form_btn_login justify-content-center align-content-center">LOGIN</button>
					</div>


					<div class="width: 300px mb-3 ">
						<button type="button" class="form_btn_signup justify-content-center align-content-center" onclick="location.href='signup'">SIGN UP</button>
					</div>

					<div class="kakaologin mt-3">
						<img src="/viewport_mini_web/resources/image/kakaotalkcircle.png" class="height: 30px width:30px;">
					</div>


					<div class="forgot row mt-5 mb-5">
						<div class="col text-center">
							<a href="#" class="forgotpassword"><b>Forgot Password?</b></a>
						</div>
					</div>
				</form>
			</div>



			<!-- 옆으로 -->

			<div class="overlay-container">
				<div class="overlay-left">
					<h2>V I E W P O R T</h2>
					<p>To keep connected with us, please login with your personal info</p>
					<button id="signIn" class="overlay_btn">Sign In</button>
				</div>
				<div class="overlay-right">
					<h2>V I E W P O R T</h2>
					<button id="seeMore" class="overlay_btn">SEE MORE?</button>
				</div>
			</div>
		</div>
	</div>
	<!-- <script src = "/viewport_mini_web/resources/js//login.js"></script> -->
</body>
</html>