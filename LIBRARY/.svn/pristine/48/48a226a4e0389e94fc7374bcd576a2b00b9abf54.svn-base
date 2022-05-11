<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.loginForm-box{
		width: 60%;
		height: 100%;
		margin: 4rem auto;
		padding-top: 4.5rem;
		border: 5px solid #FAF1CF;
		border-radius: 20px;
	}
	.loginTitle{
		color: #EDDFC2;
		font-weight: bold;
		font-size: 1.5rem;
		display: inline-block;
		padding: 1rem;
		background-color: white;
		position: relative;
		left: 46%;
		top: 100px;
	}
	.loginForm-box input[type="text"], .loginForm-box input[type="password"]{
		display: block;
		margin: 5px auto;
		width: 60%;
		height: 3rem;
		border: none;
		border-bottom: 1px solid black;		
	}
	.loginForm-box input[type="text"], .loginForm-box input[type="password"]:hover {
		outline: none;
	}
	
	
	.findBox{
		text-align: center;
		margin-bottom: 2rem;
		font-size: 0.8rem;
		color: #d4d4d4;
	}
	
	button{
		background: none;
		border: 0;
		box-sizing: border-box;
		width: 200px;
	  	height: 40px;
		margin: 2rem auto;
		display: block;
		padding: 0.7rem 1.7rem;
		box-shadow: inset 0 0 0 2px #02475E;
		color: #02475E;
		font-size: inherit;
		font-weight: 700;
		
		position: relative;
		vertical-align: middle;
		
		} 
	.wrapper button{
	  line-height: 20px;
	  font-size: 18px;
	  color: #246350;
	  text-align: center;
	  position: relative;
	  transition: all .35s;
	}
	
	.wrapper button span{
	  position: relative;
	  z-index: 2;
	}
	
	.wrapper button:after{
	  position: absolute;
	  content: "";
	  top: 0;
	  left: 0;
	  width: 0;
	  height: 100%;
	  background:  #246350;
	  transition: all .35s;
	}
	
	.wrapper button:hover{
	  color: #ffffff;
	}
	
	.wrapper button:hover:after{
	  width: 100%;
	}



</style>
</head>
<body>
<div class="container">
	<div class="loginTitle">LOGIN</div>
	<div class="loginForm-box">
		<form action="" method="post">
			<input type="text" name="memId" placeholder="아이디 입력">
			<input type="password" name="memPwd" placeholder="비밀번호 입력">
			<div class="wrapper">
				<button type="button" onclick="login();"><span>로그인</span></button>
			</div>
			<span class="loginChk"></span>
		</form>
		<div class="findBox">
			<a href="/member/findId">
			아이디 찾기
			</a> 
			<a href="/member/findPwd">
			비밀번호 찾기
			</a>
		</div>
		
	</div>
</div>
<script type="text/javascript" src="/resources/js/member/login_form.js?ver=7"></script>
</body>
</html>