<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
<link href="/resources/css/book/bookList.css" rel="stylesheet">
<style type="text/css">
img{
	padding: 5px;
}


</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 자료검색 > 소장자료검색 > 도서상세보기</div>
      <div class="tit">도서상세보기</div>
   </div>
   <div class="bookDetail">
		<div class="title">
			${bookDetail.title }
		</div>

		<div class="info">
			<table>
				<tr>
					<td rowspan="8" class="img"><img src="/resources/images/book/${bookDetail.bkImg }"  alt="..." height="270px;" width="180px;" align="left"></td>
					<td>저자</td>
					<td> ${bookDetail.writer }</td>
				</tr>
				<tr>
					<td >발행처</td>
					<td colspan="2">${bookDetail.publisher }</td>
				</tr>
				<tr>
					<td>발행년도</td>
					<td colspan="2">${bookDetail.pubDate }</td>
				</tr>
				<tr>
					<td>ISBN</td>
					<td colspan="2">${bookDetail.isbn }</td>
				</tr>
				<tr>
					<td>키워드</td>
					<td colspan="2">${bookDetail.keyword }</td>
				</tr>
				<tr><td></td><td><td colspan="2"></tr>
				<tr><td></td><td><td colspan="2"></tr>
				<tr><td></td><td><td colspan="2"></tr>
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
				<input type="hidden" name="isbn" id="isbn" value="${bookDetail.isbn }">
				<input type="hidden" name="memId" id="memId" value="${sessionScope.loginInfo.memId }">
				<input type="hidden" name="brCnt" id="brCnt" value="${member.brCnt}">
				<input type="hidden" name="rsvCnt" id="rsvCnt" value="${member.rsvCnt}">
				<input type="hidden" name="isOd" id="isOd" value="${member.isOd}">
				
				<c:set var ="status" scope ="session" value="${bookDetail.status }"/>
				<c:set var ="bkStock" scope ="session" value="${bookDetail.bkStock }"/>
				<c:choose>
					<c:when test="${ bkStock-status > 0}">
						<c:set var ="brCnt" scope ="session" value="${member.brCnt}"/>
						<c:set var ="isOd" scope ="session" value="${member.isOd}"/>
				
						<button type="button" onclick="reserveBook();">대출가능 ${bkStock-status }</button>
						
					</c:when>
					<c:otherwise>
						<button type="button">대출불가</button>
					</c:otherwise>
				</c:choose>
			</form>
			<button type="button" onclick="location.href='/book/bookListU';">목록</button>
		</div>
	</div>
</div>		

	

<script type="text/javascript" src="/resources/js/book/recommend_book.js?ver=6"></script>
<script type="text/javascript" src="/resources/js/book/reserve_book.js?ver=18"></script>
</body>
</html>