<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.modalBody tr,td{
	margin:0 auto;
	padding: 3px;
}
</style>
</head>
<body>
<h2>대여예약목록창</h2>

<table>
		<thead>
			<tr>
				<td>코드</td>
				<td>회원아이디</td>
				<td>제목</td>
				<td>ISBN</td>
				<td>예약일</td>
				<td>대여</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${adminReserve }" var="reserve">
				<tr>
					<td>${reserve.rsvCode }</td>
					<td>${reserve.memId }</td>
					<td><a href="/book/bookDetail?bookCode=${reserve.bookCode}">${reserve.title }</a></td>
					<td>${reserve.isbn }</td>
					<td>${reserve.rsvDate }</td>
					<td><button type="button" data-toggle="modal" data-target="#insertBorrow" class="btn btn-primary" onclick="showModal(this);">대여</button></td>
 				</tr> 
			</c:forEach>
		</tbody>
	</table>


<div class="modal fade" id="insertBorrow" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<form action="/book/borrowBook" id="borrow">
	  <input type="hidden" id="originMemId" value="">
	  <input type="hidden" id="originIsbn" value="">
	  <input type="hidden" id="originRtDate" value="${borrow.rtDate }">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="myModalLabel">대여 입력 정보 </h5>
	      </div>
	      <div class="modal-body">
	      	<table>
	      		<tr>
	      			<td>아이디 </td>
	      			<td><input type="text" id="memId" name="memId"></td>
	      			<td>ISBN</td>
	      			<td><input type="text" id="isbn" name="isbn"></td>
	      		</tr>
	      	</table>
	          
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" id="closeModalBtn" data-dismiss="modal">닫기</button>
	        <button type="button" class="btn btn-primary" onclick="insertBorrow();">대여</button>
	      </div>
	    </div>
	  </div>
  </form>
 </div>

<!--알림 전송 Modal -->
<div class="messageModal modal fade" id="messageModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="/admin/sendMessage" method="post" id="sendMsg">
          <div class="mb-3">
            <label for="recipient-name" class="col-form-label">회원 ID :</label>
            <input type="text" class="form-control" id="get-name" name="getId" readonly>
          </div>
          <div class="mb-3">
            <label for="message-text" class="col-form-label">내용 :</label>
            <textarea class="form-control" id="message-content" rows="7" name="msgContent" style="resize: none;" onkeyup="byteCheck(this, '500');"></textarea>
            <div style="text-align: right;"><span id="byteInfo">0</span> /500bytes</div>
          <div class="mb-3 justify-content-md-end">
           <button type="button" class="btn btn-secondary justify-content-md-end" data-bs-dismiss="modal">닫기</button>
           <button type="button" class="btn btn-success justify-content-md-end" onclick="sendMsg();">메세지 전송</button>
          </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>

<script type="text/javascript" src="/resources/js/book/admin_rsvList.js?ver=48"></script>
</body>
</html>