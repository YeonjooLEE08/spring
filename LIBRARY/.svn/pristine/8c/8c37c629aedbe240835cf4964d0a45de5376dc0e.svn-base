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
<link href="/resources/css/book/statusBar.css" rel="stylesheet">
<style type="text/css">
.btnDiv{

	padding-top:10px;
	text-align:right;
}
</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 관리자메뉴 > 희망도서신청조회</div>
      <div class="tit">희망도서신청조회</div>
   </div>

<div class="statusBar">
	<form action="/book/hopeBookListStatus" method="post" id="searchBook">
	<!-- 검색구분 선택 -->
		<select name="searchSub">
			<option value="all" >전체</option>
			<option value="0">신청중</option>
			<option value="1">처리중</option>
			<option value="2">소장중</option>
		</select>
		<button type="submit" class="btn btn-success">적용</button>
	</form>
	</div>
	<form action="/book/updateHopeBook" method="post" id="updateHopeBook">
	<table class="table table-hover table-border text-center">
			<thead>
				<tr>
					<td><input id="allCheck" class ="form-check-input" type="checkbox" onclick="allChk(this);"/></td>
					<td>No</td>
					<td>회원아이디</td>
					<td>제목</td>
					<td>저자</td>
					<td>출판사</td>
					<td>신청일</td>
					<td>상태</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${hbBook }" var="hpBook">
					<tr>
						<td><input name="RowCheck" class="form-check-input chk" type="checkbox" value="${hpBook.hopeCode}" /></td>
						<td>${hpBook.rowNum }</td>
						<td>${hpBook.memId }</td>
						<td>${hpBook.title }</td>
						<td>${hpBook.writer }</td>
						<td>${hpBook.publisher }</td>
						<td>${hpBook.hopeDate }</td>
						<td>
							<select name="status" id="status">
								<c:choose>
									<c:when test="${hpBook.status eq 0}">
										<option value="0" selected>승인대기</option>
										<option value="1" >처리중</option>
										<option value="2" >소장중</option>
										<option value="3" >거절</option>
									</c:when>
									<c:when test="${hpBook.status eq 1 }">
										<option value="1" selected>처리중</option>
										<option value="2" >소장중</option>	
										<option value="3" >거절</option>
									</c:when>
									<c:when test="${hpBook.status eq 2 }">
										<option value="2" selected>소장중</option>
									</c:when>
									<c:otherwise>
										<option value="3" selected>거절</option>
									</c:otherwise>
								</c:choose>
							</select>
	 				</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="btnDiv">
			<button type="button" onclick="updateChecked();" class="btn btn-success">변경하기</button>
		</div>
	</form>
</div>
<script type="text/javascript" src="/resources/js/book/admin_hpList.js?ver=3"></script>
</body>
</html>