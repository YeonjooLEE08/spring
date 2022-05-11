<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
img{
	padding: 5px;
}


</style>
</head>
<body>
<div class="container">
	<div class="img">
		<img src="/resources/images/book/${bookDetail.bkImg }"  alt="..." height="120px;" width="80px;" align="left">
	</div>
	<div class="title">
		<h3>${bookDetail.title }</h3>
	</div>	
	<div class="table">
		<table>
			<tr>
				<td>저자</td>
				<td> ${bookDetail.writer }</td>
				<td>발행처</td>
				<td>${bookDetail.publisher }</td>
				<td>발행년도</td>
				<td>${bookDetail.pubDate }</td>
			</tr>
			<tr>
				<td>청구기호</td>
				<td>청구기호</td>
				<td>ISBN</td>
				<td>${bookDetail.isbn }</td>
				<td>키워드</td>
				<td>${bookDetail.keyword }</td>
			</tr>
		</table>
		<div id="content">
		${bookDetail.bkContent }
		</div>
		<div id="rcdBook">
			<input type="hidden" id="memId" value="${sessionScope.loginInfo.memId }">
			<input type="hidden" id="bookCode" value="${bookDetail.bookCode }">
			<input type="hidden" id="rcdStatus" value="${rcdInfo.rcdStatus }">
			
			<button type="button" id="recommendBook" onclick="insertRecommend();">추천 ${bookDetail.rcdCnt }</button>
		</div>
	
	</div>
	<div id = "reserveBook">	
		<form action="/book/reserve" method="post" id="insertRsv">
			<input type="hidden" name="bookCode" value="${bookDetail.bookCode }">
			<input type="hidden" name="title" value="${bookDetail.title }">
			<input type="hidden" name="isbn" value="${bookDetail.isbn }">
			<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
			<input type="hidden" name="brCnt" id="brCnt" value="${member.brCnt}">
			<input type="hidden" name="rsvCnt" id="rsvCnt" value="${member.rsvCnt}">
			<input type="hidden" name="isOd" id="isOd" value="${member.isOd}">
			
			<c:set var ="status" scope ="session" value="${bookDetail.status }"/>
			<c:set var ="bkStock" scope ="session" value="${bookDetail.bkStock }"/>
			<c:choose>
				<c:when test="${ bkStock-status > 0}">
					<c:set var ="brCnt" scope ="session" value="${member.brCnt}"/>
					<c:set var ="isOd" scope ="session" value="${member.isOd}"/>
				<%-- 	<c:choose>
						<c:when test="${ brCnt == 5 }">
							<button type = "button" onclick="limitBrCnt()">대출가능 ${bkStock-status }</button>
						</c:when>
						<c:when test="${ isOd eq 'Y' }">
							<button type = "button" class="btn btn-primary"  onclick="limitOverdue()">대출가능 ${bkStock-status }</button>
						</c:when>
						<c:otherwise> <!-- 로그인제한은 spring security 이용 하기  -->
							<button type="button" onclick="reserveBook();">대출가능 ${bkStock-status }</button>
						</c:otherwise>
					</c:choose> --%>
					<button type="button" onclick="reserveBook();">대출가능 ${bkStock-status }</button>
					
				</c:when>
				<c:otherwise>
					<button type="button">대출불가</button>
				</c:otherwise>
			</c:choose>
		</form>
		<button type="button" onclick="location.href='/book/bookListU';">목록</button>
	</div>
		

	

<script type="text/javascript" src="/resources/js/book/recommend_book.js?ver=6"></script>
<script type="text/javascript" src="/resources/js/book/reserve_book.js?ver=15"></script>
</body>
</html>