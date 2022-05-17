<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/side.css" rel="stylesheet">
<link href="/resources/css/common/sideMenu.css?ver=3" rel="stylesheet">
</head>
<body>
<div class="sideContainer">
	<div class="side-box-div">
		<div class="menuTitle">
		북클럽
		</div>
		<ul id="nav-v1">
			
			<li class="menu-v1" id="menu-v1"><a href="/club/clubInfo">북클럽 이용안내</a></li>
			<li class="menu-v1" id="menu-v1"><a href="/club/clubList">북클럽 조회</a></li>
			<c:if test="${sessionScope.loginInfo.clubAdmin eq 'Y'}">
				<li class="menu-v1" id="menu-v1"><a href="/clubAdmin/clubAdmin?clubCode=${sessionScope.loginInfo.clubCode }">북클럽 관리</a></li>
			</c:if>
<!-- 			<li class="menu-v1" id="menu-v1-y"><a href="#">희망도서</a>
				<ul class="submenu">
					<li><a href="/book/hopeBookInfo">희망도서 신청 안내</a></li>
					<li><a href="/book/hopeBookForm">희망도서신청</a></li>
				</ul>
			</li> -->
		</ul>
		<div class="clear"></div>
	</div>
</div>
<%-- 	
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
</div> --%>
<script type="text/javascript" src="/resources/js/admin/side_menu_drop.js?ver=0"></script>
</body>
</html>