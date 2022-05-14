<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
</head>
<body>
<div class="container">
   <div class="subTit">
      <div class="line_map">홈 > 마이페이지 > 대여도서조회</div>
      <div class="tit">대여도서조회</div>
   </div>

<input type="hidden" id="memId" value="${sessionScope.loginInfo.memId}">
		<table class="table table-hover table-border text-center">
		<thead>
			<tr>
				<td>No</td>
				<td>제목</td>
				<td>ISBN</td>
				<td>예약일</td>
				<td>반납예정일</td>
				<td>상태</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userBorrow }" var="borrow">
				<tr>
					<td>${borrow.rowNum }</td>
					<td><a href="/book/bookDetail?bookCode=${borrow.bookCode }&memId=${sessionScope.loginInfo.memId}">${borrow.title }</a></td>
					<td>${borrow.isbn }</td>
					<td>${borrow.brDate }</td>
					<td>${borrow.rtDate }</td>
					<td><c:choose>
						<c:when test="${borrow.status eq 0}" ><div style="color:red">대여중</div></c:when>
						<c:when test="${borrow.status eq 1 }">연체</c:when>
						<c:otherwise>반납완료</c:otherwise>	
					</c:choose></td>
					<td><input type="hidden" id="bookCode" value="${borrow.bookCode }"></td>
 				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<script type="text/javascript" src="/resources/js/book/detail_book.js?ver=15"></script>
</body>
</html>