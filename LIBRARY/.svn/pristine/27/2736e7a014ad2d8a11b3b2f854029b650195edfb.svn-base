<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.club-name{
	font-size: 25px;
	font-weight: bold;
	margin-bottom: 20px;
}
.club-info{
	white-space:pre-line;
	line-height: 30px;
	margin-bottom: 20px;
}
.club-join{
	margin-bottom: 40px;
}
.club-img{
	width: 366px;
	height: 205.875px;
	border-radius: 0;
	margin-bottom: 15px;
	image-rendering: -webkit-optimize-contrast;
}
</style>
</head>
<body>
<div class="container">
	<img class="club-img" src="/resources/images/club/${club.cbAtName }">
	<div class="club-name">${club.clubName }</div>
	<div class="club-info">${club.clubInfo }</div>
	<div class="club-join">정말 가입하시겠습니까?</div>
	
	<form action="/club/clubJoin" method="post" id="clubJoinForm">
		<input type="hidden" name="clubCode" value="${club.clubCode }">
		<input type="hidden" name="clubName" value="${club.clubName }">
		<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
		<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
		<input type="hidden" name="memImage" value="${sessionScope.loginInfo.memImage }">
		
		<input type="button" class="btn btn-success" value="가입하기" onclick="clubJoin();">
		<input type="button" class="btn btn-success" value="뒤로가기" onclick="history.back();">
	</form>
</div>
<script type="text/javascript" src="/resources/js/club/club_join.js"></script>
</body>
</html>