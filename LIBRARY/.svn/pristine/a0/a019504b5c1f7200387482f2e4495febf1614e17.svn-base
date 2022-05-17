<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/button01.css" rel="stylesheet">
<style type="text/css">
	.loginForm-box{
		width: 49%;
   		height: 31rem;
		margin: 4rem auto;
		padding-top: 8.5rem;
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
		left: 46.5%;
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
		margin-bottom: 3rem;
		font-size: 1rem;
	}
	.findBox a:hover{
		border-bottom:2px solid #246350;
	}
	
	



</style>
</head>
<body>
<div class="nonSide-container">
	<div class="loginTitle">LOGIN</div>
	<div class="loginForm-box">
		<form action="" method="post" id="loginForm">
			<input type="text" name="memId" placeholder="아이디 입력">
			<input type="password" name="memPwd" placeholder="비밀번호 입력">
			<div class="wrapper">
				<button type="button" onclick="login();"><span>로그인</span></button>
			</div>
			<span class="loginChk"></span>
		</form>
		<div class="findBox">
			<a href="/member/findId">
			아이디 찾기</a>&nbsp;&nbsp;
			<a href="/member/findPwd">
			비밀번호 찾기
			</a>
		</div>
		
	</div>
</div>
<script type="text/javascript" src="/resources/js/member/login_form.js?ver=8"></script>
</body>
</html>