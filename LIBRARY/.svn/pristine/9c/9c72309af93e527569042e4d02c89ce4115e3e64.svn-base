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
<div class="pageName">
	나의 북클럽
</div>
<c:if test="${not empty sessionScope.loginInfo }">
<div class="row">
	<div class="col-8">
	
		<c:choose>
			<c:when test="${not empty myBookClubApply}">
				<table class="table" style="text-align: center;">
				  <thead>
				    <tr>
				      <th scope="col">클럽명</th>
				      <th scope="col">신청날짜</th>
				      <th scope="col">상태</th>
				      <th scope="col">신청취소</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <td>${myBookClubApply.clubName }</td>
				      <td>${myBookClubApply.clubApplyDate}</td>
				      <td>승낙대기중…</td>
				      <td>
				      	<button type="button" class="btn btn-outline-danger btn-sm" onclick="applyCancel('${myBookClubApply.memId}');">취소</button>
				      </td>
				    </tr>
				  </tbody>
				</table>
			</c:when>
			<c:otherwise>
				<table class="table table-bordered" style="text-align: center;">
				  <thead>
				    <tr>
				      <th scope="col">클럽명</th>
				      <th scope="col">인원</th>
				      <th scope="col">이동</th>
				    </tr>
				  </thead>
				  <tbody>
		  			<c:choose>
						<c:when test="${not empty sessionScope.loginInfo.clubCode }">
				 		   <tr>
						      <td><a>${myBookClub.clubName }</a></td>
						      <td>${myBookClub.clubNumberPeople } / ${myBookClub.clubHeadCnt } </td>
						      <td><button type="button" class="btn btn-success btn-sm" onclick="location.href='/club/clubDetail?clubCode=${myBookClub.clubCode}';">이동하기</button> </td>
						    </tr>
						</c:when>
						<c:otherwise>
							  <tr>
							      <td colspan="3">가입된 북클럽이 없습니다.</td>
						    </tr>
						</c:otherwise>
					</c:choose>
				  </tbody>
				</table>
			</c:otherwise>
		</c:choose>
	</div>
</div>
</c:if>
<script type="text/javascript" src="/resources/js/member/my_book_club.js"></script>
</body>
</html>