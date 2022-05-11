<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/book/hopeBookListStatus" method="post" id="searchBook">
	<!-- 검색구분 선택 -->
	<label for="select">현재 신청 상태</label>
		<select name="searchSub">
			<option value="all" >전체</option>
			<option value="0">승인대기</option>
			<option value="1">처리중</option>
			<option value="2">소장중</option>
		</select>
		<input type="submit" value="적용">
	</form>
	<table>
			<thead>
				<tr>
					<td><input id="allCheck" type="checkbox" onclick="allChk(this);"/></td>
					<td>No</td>
					<td>회원아이디</td>
					<td>제목</td>
					<td>저자</td>
					<td>출판사</td>
					<td>신청일</td>
					<td>상태</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${hbBook }" var="hpBook">
					<tr>
						<td><input name="Rowcheck" type="checkbox" value="${hpBook.hopeCode}" }/></td>
						<td>${hpBook.rowNum }</td>
						<td>${hpBook.memId }</td>
						<td>${hpBook.title }</td>
						<td>${hpBook.writer }</td>
						<td>${hpBook.publisher }</td>
						<td>${hpBook.hopeDate }</td>
						<td><c:choose>
							<c:when test="${hpBook.status eq 0}">승인대기</c:when>
							<c:when test="${hpBook.status eq 1 }">처리중</c:when>
							<c:otherwise>소장중</c:otherwise>	
						</c:choose></td>
	 				</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>