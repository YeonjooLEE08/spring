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
<div class="row">
	<div class="col-2"></div>
	<div class="col-6">
		<table class="table table-hover text-center">
			  <thead>
			    <tr>
			      <th scope="col">No</th>
			      <th scope="col">내용</th>
			      <th scope="col">날짜</th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${msgList }" var="msg" varStatus="status">
			    <tr>
			      <th scope="row">${msgList.size() - status.index}</th>
			      <td data-bs-toggle="modal" data-bs-target="#exampleModal">${msg.msgContent }</td>
			      <td>${msg.sendDate }</td>
				    </tr>
			  </c:forEach>
			  </tbody>
		</table>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">알림 확인</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      	<table class="table">
        	<colgroup>
        		<col width="25%">
        		<col width="25%">
        		<col width="25%">
        		<col width="25%">
			    <tr>
			      <th scope="col">보낸사람</th>
			      <td>관리자</td>
			      <th scope="col">전송날짜</th>
			      <td>2022/4/5</td>
			    </tr>
			    <tr>
			      <th scope="row">내용</th>
			      <td colspan="4" style="word-break: break-all">ttoOttoOttoOttoOttoOttoOttoMarkMarkMarkMarkMarkMark</td>
			    </tr>
			</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>