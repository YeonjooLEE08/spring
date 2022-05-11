<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<tr>
			<td>${ntBoard.ntCode }</td>
			<td>${ntBoard.ntTitle }</td>
		</tr>
		<tr>
			<td>${ntBoard.memName}</td>
			<td>${ntBoard.ntCreateDate}</td>
		</tr>
		<tr>
			<td>${ntBoard.ntContent}</td>
		</tr>
		
		<c:if test="${sessionScope.loginInfo.isAdmin eq 'Y' }" >
			<input type="button" value="수정" onclick="location.href='updateNtBoardForm?ntCode=${ntBoard.ntCode}';">
		</c:if>
		<c:if test="${sessionScope.loginInfo.isAdmin eq 'Y' }" >
			<input type="button" value="삭제" onclick="location.href='deleteNtBoardDetail?ntCode=${ntBoard.ntCode}';">
		</c:if>
		
	</table>
</body>
</html>