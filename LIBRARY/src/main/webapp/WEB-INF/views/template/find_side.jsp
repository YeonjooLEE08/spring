<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.find-container{
		background-color: #efefef;
		width: 300px;
	}
	.sideBodyDiv{
	width: 100%;
	
	} 
</style>
</head>
<body>
<div class="find-container">
	<div onclick="location.href='/member/findId';">
		아이디 찾기
	</div>
	<div onclick="location.href='/member/findPwd';">
		비밀번호 찾기
	</div>
</div>
</body>
</html>