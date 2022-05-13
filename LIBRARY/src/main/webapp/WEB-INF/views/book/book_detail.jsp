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

.detail .detailBtn{
	padding-top:10px;
	text-align:right;
}

</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 자료검색 > 소장자료검색 > 도서상세보기</div>
      <div class="tit">도서상세보기</div>
   </div>
   <div class="bkDetail">
		<div class="title">
			${bookDetail.title }
		</div>

		<div class="imgT">
			<table>
				<tr>
					<td class="img"><img src="/resources/images/book/${bookDetail.bkImg }"  alt="..." height="267px" width="200px" align="left"></td>
				</tr>
				<tr>
					<td>
						<div id="detailBtn">
							<button type="button" class="btn btn-success btn-sm justify-content-md-end" id="recommendBook" onclick="insertRecommend();">추천 ${bookDetail.rcdCnt }</button>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="infoT">
			<table>
				<tr>
					<td class="tit">저자</td>
					<td> ${bookDetail.writer }</td>
				</tr>
				<tr>
					<td class="tit">발행처</td>
					<td>${bookDetail.publisher }</td>
				</tr>
				<tr>
					<td class="tit">발행년도</td>
					<td >${bookDetail.pubDate }</td>
				</tr>
				<tr>
					<td class="tit">ISBN</td>
					<td >${bookDetail.isbn }</td>
				</tr>
				<tr>
					<td class="tit">키워드</td>
					<td >${bookDetail.keyword }</td>
				</tr>
				<tr>
					<td class="tit">글내용</td>
				</tr>
				<tr>
					<td rowspan="2" colspan="2" class="info">${bookDetail.bkContent }</td>
				</tr>
			</table>
		</div>
			<div id="rcdBook">
				<input type="hidden" id="memId" value="${sessionScope.loginInfo.memId }">
				<input type="hidden" id="bookCode" value="${bookDetail.bookCode }">
				<input type="hidden" id="rcdStatus" value="${rcdInfo.rcdStatus }">
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
					<div id="detailBtn">
						<button type="button" class="btn btn-success btn-sm justify-content-md-end" id="recommendBook" onclick="insertRecommend();">추천 ${bookDetail.rcdCnt }</button>
						<c:choose>
							<c:when test="${ bkStock-status > 0}">
								<c:set var ="brCnt" scope ="session" value="${member.brCnt}"/>
								<c:set var ="isOd" scope ="session" value="${member.isOd}"/>
								
								<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="reserveBook();">대출가능 ${bkStock-status }</button>
								
							</c:when>
							<c:otherwise>
								<button class="btn btn-success btn-sm justify-content-md-end" type="button">대출불가</button>
							</c:otherwise>
						</c:choose>
						<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="location.href='/book/bookListU';">목록</button>
					</div>				
				</form>
			</div>
		</div>
	</div>
</div>		

	

<script type="text/javascript" src="/resources/js/book/recommend_book.js?ver=6"></script>
<script type="text/javascript" src="/resources/js/book/reserve_book.js?ver=18"></script>
</body>
</html>