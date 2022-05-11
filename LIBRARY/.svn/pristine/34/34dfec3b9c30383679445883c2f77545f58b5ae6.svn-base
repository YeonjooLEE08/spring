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
<div id="cancleRsv">
	<input type="hidden" id="memId" value="${sessionScope.loginInfo.memId }">
	<table>
	
		<thead>
			<tr>
				<td>No</td>
				<td>제목</td>
				<td>ISBN</td>
				<td>예약일</td>
				<td>상태</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userReserve }" var="reserve">
				<tr>
					<td>${reserve.rowNum }</td>
					<td><a href="/book/bookDetail?bookCode=${reserve.bookCode}">${reserve.title }</a></td>
					<td>${reserve.isbn }</td>
					<td>${reserve.rsvDate }</td>
					<td><button type="button" data-toggle="modal" data-target="#cancleReserve" onclick="showModal(this);">예약취소</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>


<!-- 확인용 모달  -->
<div class="modal fade" id="cancleReserve" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
 <input type="hidden" id="originIsbn" value="">
 <input type="hidden" id="originMemId" value="">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
      예약 취소하시겠습니까?
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" id="closeModalBtn" data-dismiss="modal">닫기</button>
        <button type="button" class="btn btn-primary" onclick="cancleRsv();">예약취소</button>
      </div>
    </div>
  </div>
 </div>
	
<script type="text/javascript" src="/resources/js/book/reserve_book.js?ver=7"></script>	
</body>
</html>