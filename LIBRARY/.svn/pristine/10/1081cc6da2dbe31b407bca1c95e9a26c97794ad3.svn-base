<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/club/club_manage.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<div class="subTit" >
		<div class="line_map">홈 > 북클럽 > 북클럽 관리</div>
		<h2>북클럽 관리</h2>
	</div>
<div class="row">
	<div class="col-8">
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
					<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					  <button class="btn btn-success btn-sm me-md-2" type="button" onclick="location.href='/club/clubDetail?clubCode=${sessionScope.loginInfo.clubCode}';">북클럽 이동</button>
					  <button class="btn btn-danger btn-sm me-md-2" type="button" onclick="deleteClub('${sessionScope.loginInfo.clubCode}', '${clubMem.memId }');">북클럽 삭제</button>
					</div>
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
										<td>
											<div class="user-info__img">
												<img src="/resources/images/member/${apply.memImage }">${apply.memId }
											</div>
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
<script type="text/javascript" src="/resources/js/club/club_manage.js?ver=9"></script>
</body>
</html>