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
<!-- /////////////////////////////// ADMIN //////////////////////////////////// -->
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

			<button type="button" id="recommendBook" onclick="insertRecommend();">추천 ${bookDetail.rcdCnt }</button>
		</div>
		<div id="rsvBook">
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
		</div>
	</div>
	<div id = "manageBook">	
		<input type="hidden" name="bookCode" value="${bookDetail.bookCode }">
		<button type="button" id="modifyBook" onclick="modifyBk();">수정</button>
		<button type="button" data-toggle="modal" data-target="#deleteBook" onclick="showModal();">삭제</button>
	</div>
</div>

<!--삭제 확인  Modal -->
<div class="modal fade" id="deleteBook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
  	<input type="hidden" id="originBookCode" value="">
    <div class="modal-content">
      <div class="modal-body">
      	삭제하시겠습니까?
			          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" id="closeModalBtn" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" onclick="deleteBk();">삭제</button>
      </div>
    </div>
  </div>
 </div>


<script type="text/javascript" src="/resources/js/book/admin_manageBook.js?ver=6"></script>
<!-- <script type="text/javascript" src="/resources/js/book/recommend_book.js?ver=5"></script>
<script type="text/javascript" src="/resources/js/book/reserve_book.js?ver=13"></script> -->
</body>
</html>