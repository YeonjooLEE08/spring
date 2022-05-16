<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/side.css" rel="stylesheet">
</head>
<body>
<div class="container">
<div class="side-box">
	<div class="side-box-div">
		<table>
			<tr>
				<td><a href="#">북클럽</a></td>
			</tr>
			<tr>
				<td><a href='/club/clubInfo'>북클럽 이용안내</a></td>
			</tr>
			
			<tr>
				<td><a href="/club/clubList">북클럽 조회</a></td>
			</tr>
			<c:if test="${sessionScope.loginInfo.clubAdmin eq 'Y'}">
				<tr>
					<td><a href="/clubAdmin/clubAdmin?clubCode=${sessionScope.loginInfo.clubCode }">북클럽 관리</a></td>
				</tr>
			</c:if>
		</table>
	</div>
</div>
</div>
<script type="text/javascript" src="/resources/js/member/my_page.js?ver=0"></script>
</body>
</html>