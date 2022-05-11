<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	margin-top: 20px;
}
</style>
</head>
<body>
<div class="row justify-content-center">
	<div class="col-2"></div>
	<div class="col-8">
		<div class="row">
			<div class="col-8">
				${borrowVO.memId }님의 대여정보
			</div>
		</div>
		<div class="row">
			<div class="col-8">
				<table class="table table-striped table-hover text-center">
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
			<div class="col-5" style="margin-top: 20px;">
				${borrowVO.memId }님의 예약정보
			</div>
			<div class="col-8">
				<table class="table table-striped table-hover text-center">
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