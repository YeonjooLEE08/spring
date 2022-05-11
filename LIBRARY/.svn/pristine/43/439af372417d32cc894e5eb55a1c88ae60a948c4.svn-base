<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div{
	text-align: center;
}
</style>
</head>
<body>
<div>모임명 : ${club.clubName }</div>
<div>모임소개 : ${club.clubIntro }</div>
<div>정말 가입하시겠습니까?</div>

<form action="/club/clubJoin" method="post" id="clubJoinForm">
	<input type="hidden" name="clubCode" value="${club.clubCode }">
	<input type="hidden" name="clubName" value="${club.clubName }">
	<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
	<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
	
	<input type="button" class="btn btn-success" value="가입하기" onclick="clubJoin();">
	<input type="button" class="btn btn-success" value="뒤로가기" onclick="history.back();">
</form>
<script type="text/javascript" src="/resources/js/club/club_join.js"></script>
</body>
</html>