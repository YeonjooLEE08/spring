<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.subDiv{
	margin-left: 100px;
}
table{
	width: 700px;
	text-align: center;
	border-radius: 9px;
	margin-top: 50px;
}
th{
	background-color: #E0EDE0;
	padding: 0.75rem 2rem;
	text-transform: uppercase;
	letter-spacing: 0.1rem;
	font-size: 1rem;
}
td{
	padding: 1rem 2rem;
}
tr:nth-child(even) {
	background-color: #F1F8F1;
}
</style>
</head>
<body>
<div class="row">
	<div class="col-4">
		<div class="subDiv">
			<a href="/club/clubList">북클럽조회</a><br>
			<c:if test="${sessionScope.loginInfo.clubAdmin eq 'Y' }">
				<a href="/clubAdmin/clubAdmin?clubCode=${sessionScope.loginInfo.clubCode }">북클럽관리</a>
			</c:if> 
		</div>
	</div>
	<div class="col-5">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
		  <li class="nav-item" role="presentation">
		    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">북클럽 멤버</button>
		  </li>
		  <li class="nav-item" role="presentation">
		    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">북클럽 신청</button>
		  </li>
		</ul>

		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="home" role="tabpanel"
				aria-labelledby="home-tab">
				<table>
					<colgroup>
						<col width="10%">
						<col width="*">
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
								<td>${clubMem.memId }</td>
								<td>${clubMem.memName }</td>
								<td>	
									<c:choose>
										<c:when test="${clubMem.clubAdmin eq 'N' }">
											<button type="button" class="btn btn-outline-danger btn-sm" onclick="kick('${clubMem.memId }');">강퇴</button>
										</c:when>
										<c:otherwise>
											모임장
										</c:otherwise>
									</c:choose>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
				<table>
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
					</tbody>
				</table>
					
			</div>
			</div>
		</div>
</div>
<script type="text/javascript" src="/resources/js/club/club_manage.js?ver=7"></script>
</body>
</html>