<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.nav-link{
	color: #198754;
	width: 200px;
	height: 50px;
}
.nav-link:hover{
	color: #198754;
}
.nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
	color: #495057;
}
@import url("https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap");
body {
	background: #f9f9f9;
}

.table {
	border-spacing: 0 15px;
	border-collapse: separate;
	text-align: left;
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
.user-info__img img {
	margin-right: 15px;
	height: 45px;
	width: 45px;
	border-radius: 45px;
	border: 3px solid #fff;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.active-circle {
	height: 10px;
	width: 10px;
	border-radius: 10px;
	margin-right: 5px;
}
h6{
	display: block;
}
ul{
	margin-top: 20px;
}
</style>
</head>
<body>
<div class="container">
		<div class="subDiv">
			<a href="/club/clubList">북클럽조회</a>
			<c:if test="${sessionScope.loginInfo.clubAdmin eq 'Y' }">
				<a href="/clubAdmin/clubAdmin?clubCode=${sessionScope.loginInfo.clubCode }">북클럽관리</a>
			</c:if> 
		</div>
<div class="row">
	<div class="col-6">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
		  <li class="nav-item" role="presentation">
		    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">북클럽 멤버조회</button>
		  </li>
		  <li class="nav-item" role="presentation">
		    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">북클럽 신청조회</button>
		  </li>
		</ul>

		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="home" role="tabpanel"
				aria-labelledby="home-tab">
				<div class="main-content">
					<table class="table table-hover text-center">
						<colgroup>
							<col width="15%">
							<col width="*">
							<col width="25%">
							<col width="25%">
						<thead>
							<tr>
								<th scope="col">No</th>
								<th scope="col">아이디</th>
								<th scope="col">이름</th>
								<th scope="col">강퇴</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${clubMemList }" var="clubMem"
								varStatus="status">
								<tr>
									<td>${status.index + 1 }</td>
									<td><div class="user-info__img"><img src="/resources/images/member/${clubMem.memImage }">${clubMem.memId }</div>
									</td>
									<td>${clubMem.memName }</td>
									<td>	
										<c:choose>
											<c:when test="${clubMem.clubAdmin eq 'N' }">
												<button type="button" class="btn btn-outline-danger btn-sm" onclick="kick('${clubMem.memId }');">강퇴</button>
											</c:when>
											<c:otherwise>
												클럽장
											</c:otherwise>
										</c:choose>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
				<table class="table table-hover text-center">
					<colgroup>
						<col width="10%">
						<col width="*">
					<thead>
						<tr>
							<th scope="col">No</th>
							<th scope="col">아이디</th>
							<th scope="col">이름</th>
							<th scope="col">신청</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${not empty applyList}">
								<c:forEach items="${applyList }" var="apply" varStatus="status">
									<tr>
										<td>${status.index + 1 }</td>
										<td>${apply.memId }</td>
										<td>${apply.memName }</td>
										<td>
											<button type="button" class="btn btn-outline-success btn-sm" onclick="acceptance('${apply.clubCode}', '${apply.memId }');">수락</button>
											<button type="button" class="btn btn-outline-danger btn-sm" onclick="rejection('${apply.memId}');">거절</button>
										</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<td colspan="4">신청한 회원이 없습니다.</td>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/js/club/club_manage.js?ver=7"></script>
</body>
</html>