g<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<form action="/board/searchNt" method="post" id="SearchNt">
		<!-- 검색구분 선택 -->
			<select name="searchSub">
				<option value="NT_TITLE">제목</option>
				<option value="NT_CONTENT">내용</option>
				<option value="all">제목+내용</option>
			</select>
			<input type="text" name="searchTxt">
			<input type="submit" value="검색">
	</form>
	
	<table>
		<thead>
			<tr>
				<td>No</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ntBoardList }" var="ntBoardInfo" >
			<tr>
					<td>${ntBoardInfo.rowNum}</td>
					<td><a href="/board/ntBoardDetail?ntCode=${ntBoardInfo.ntCode }">${ntBoardInfo.ntTitle }</a></td>
					<td>${ntBoardInfo.memName }</td>
					<td>${ntBoardInfo.ntCreateDate}</td>
					<td>${ntBoardInfo.ntRdCnt}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<c:if test="${sessionScope.loginInfo.isAdmin eq 'Y' }" >
			<button type="button" onclick="location.href='/board/ntBoardWrite';">글쓰기</button>
		</c:if>

		
	</div>
	
</div>
</body>
</html>