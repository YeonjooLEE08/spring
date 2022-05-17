<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.table {
	border-spacing: 0 15px;
	border-collapse: separate;
	text-align: left;
	border: none;
}
.table thead tr th,
.table thead tr td,
.table tbody tr th,
.table tbody tr td {
	vertical-align: middle;
	border: none;
}
.table tbody tr {
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
}
.table tbody tr td {
	background: #fff;
}
.table tbody tr td:nth-child(1) {
	border-radius: 5px 0 0 5px;
}
.table tbody tr td:nth-last-child(1) {
	border-radius: 0 5px 5px 0;
}
.user-info {
	display: flex;
	align-items: center;
}
.borrow-info{
	font-size: 16px;
	font-style: italic;
	font-weight: bold;
	text-decoration:underline;
}
.member-info{
	margin-bottom: 50px;
	font-size: 20px;
	font-weight: bold;
}
</style>
</head>
<body>
<div class="container row">
	<div class="col-2"></div>
	<div class="col-10">
		<div class="row">
			<div class="col-8">
				<div class="member-info">📝${borrowVO.memId }님</div>
				<div class="borrow-info col-8">
					대여정보
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-8">
				<table class="table table-striped text-center">
				  <thead>
				    <tr>
				      <th scope="col">No</th>
				      <th scope="col">책이름</th>
				      <th scope="col">상태</th>
				      <th scope="col">대여일</th>
				      <th scope="col">반납예정일</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:choose>
				  		<c:when test="${not empty borrowList }">
						  	<c:forEach items="${borrowList }" var="borrow" varStatus="status">
							    <tr>
							      <th scope="row">${status.index + 1 }</th>
							      <td><a href="/book/bookDetail?bookCode=${borrow.bookCode }">${borrow.title }</a></td>
							      <c:choose>
							      	<c:when test="${borrow.status eq 1 }">
								      <td style="color:red;">연체중</td>
							      	</c:when>
							      	<c:otherwise>
								      <td>대여중</td>
								     </c:otherwise>
							      </c:choose>
							      <td>${borrow.brDate }</td>
							      <td>${borrow.rtDate }</td>
							    </tr>
						  	</c:forEach>
				  		</c:when>
				  		<c:otherwise> 
				  			<tr>
			  					<td colspan="5">
				  					대여중인 책이 없습니다.
				  				</td>
				  			</tr>
				  		</c:otherwise>
				  	</c:choose>
				  </tbody>
				</table>
				<div>
					<c:if test="${not empty limitDate }">
						* ${borrowVO.memId }님의 대여일은 <span style="color: red;">${limitDate }</span>까지 제한되어 있습니다.
					</c:if>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-8"><hr></div>
		</div>
		<div class="row">
			<div class="borrow-info col-5" style="margin-top: 10px;">
				예약정보
			</div>
			<div class="col-8">
				<table class="table table-striped text-center">
				<colgroup>
					<col width="5%">
					<col width="*">
					<col width="20%">
					<col width="20%">
				  <thead>
				    <tr>
				      <th scope="col">No</th>
				      <th scope="col">책이름</th>
				      <th scope="col">상태</th>
				      <th scope="col">예약신청일</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:choose>
				  		<c:when test="${not empty reserveList }">
						  	<c:forEach items="${reserveList }" var="reserve" varStatus="status">
							    <tr>
							      <th scope="row">${status.index + 1 }</th>
							      <td><a href="/book/bookDetail?bookCode=${reserve.bookCode }">${reserve.title }</a></td>
							      <td>예약중</td>
							      <td>${reserve.rsvDate }</td>
							    </tr>
						  	</c:forEach>
				  		</c:when>
				  		<c:otherwise>
				  			<tr>
			  					<td colspan="4">
				  					예약중인 책이 없습니다.
				  				</td>
				  			</tr>
				  		</c:otherwise>
				  	</c:choose>
				  </tbody>
				</table>
			</div>
		</div>
		<div class="col-8 d-grid gap-2 d-md-flex justify-content-md-end">
			<button type="button" class="btn btn-success" onclick="history.back();">목록</button>
		</div>
	</div>
</div>
</body>
</html>