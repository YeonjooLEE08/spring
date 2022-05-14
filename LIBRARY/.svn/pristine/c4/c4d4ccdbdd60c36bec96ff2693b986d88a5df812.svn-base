<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.clubInfo{
	text-align: left;
	margin-bottom: 20px;
}
.memListTable{
	text-align: center;
}
.subDiv{
	margin-left: 100px;
}
img{
	width: 40px;
	height : 40px;
	border-radius: 70%;
	overflow : hidden;
}
.page-item.active .page-link {
	background-color: #198754;
	border-color: #198754;
}
.page-link {
	color: #198754;
}
.page-link:hover{
	color: #198754; 
}
.table{
/*  --bs-table-striped-bg: #c7e2d1;  */
	 --bs-table-hover-bg:#ecf7f1; 
	 margin-bottom: 0;
 
}
button.img-button{
	border: none;
	background: transparent;
	font-size: 1.125rem;
}
.fas{
	color: black;
}
.keyword{
	border: none;
	border-bottom: 1px solid black;
	outline: none;
	background: transparent;
	width: 300px;
	color: black;
	font-size: 1.063rem;
	font-style: "Malgun Gothic";
}
select{
	border: none;
	outline: none;
	width: 80px;
	font-size: 1.125rem;
	font-weight: 200;
	background: transparent;
	color: black;
}
.memListT {
	border-spacing: 0 15px;
	border-collapse: separate;
	text-align: left;
}
.memListT thead tr th,
.memListT thead tr td,
.memListT tbody tr th,
.memListT tbody tr td {
	vertical-align: middle;
	border: none;
}
.memListT tbody tr {
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
}
.memListT tbody tr td {
	background: #fff;
}
.memListT tbody tr td:nth-child(1) {
	border-radius: 5px 0 0 5px;
}
.memListT tbody tr td:nth-last-child(1) {
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
.mem-name{
	margin-right: 15px;
	font-size: 14px;	
}
.board-info{
	margin-top: 40px;
	margin-bottom: 40px;
}
.dropdown-menu{
	position: absolute; 
	transform: translate3d(38px, 21px, 0px); 
	top: 0px; 
	left: 0px;
	will-change: transform;
}
.board-btn{
	margin-top: 10px;
}
.club-name{
	font-weight: bold;
	font-size: 25px;
	margin-bottom: 20px;
}
.member-count{
	font-size: 15px;
	font-weight: normal;
}
.club-intro{
	margin-bottom: 20px;
}
.club-name, .club-1{
	display: inline-block;
}
.club-name{
	margin-right: 30px;
}
</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-10 justify-content-md-end">
			<div class="row">
				<div class="col-7">
					<div class="board-info">
						<div class="club-name">${club.clubName } <span class="member-count"> ${club.clubNumberPeople} / ${club.clubHeadCnt }</span></div>
						<div>
							<div class="club-intro">${club.clubIntro}</div>
						</div>
						<div>
							<div class="club-name">모임 장소</div><div class="club-1">${club.clubPlace }</div>
						</div>
						<div>
							<div class="club-name">모임 일정</div><div class="club-1">${club.clubDate }</div>
						</div>
						<div>
							<div class="club-info"><div>${club.clubInfo }</div></div>
						</div>
						<div class="dropdown">
							멤버목록<a href="#" class="px-2" id="triggerId3" data-bs-toggle="dropdown" aria-expanded="false">
								<i class="fa fa-ellipsis-v"></i>
							</a>
							<div class="dropdown-menu" aria-labelledby="triggerId3">
								<table class="memListT table table-hover">
									<tr>
										<c:forEach items="${memList }" var="mem" >
												<td>
													<div class="user-info__img"><img src="/resources/images/member/${mem.memImage }"></div>
													<div class="mem-name">${mem.memName }</div>
												</td>
										</c:forEach>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-3">
					5월의 책 흠...왜 옆으로 안가니
					<div id="slideShow"> 
						<ul class="slides"> 
							<li><img src="image/flower.jpg" alt="">
						</ul> 
						<p class="controller"> 
							<!-- &lang: 왼쪽 방향 화살표 &rang: 오른쪽 방향 화살표 --> 
							<span class="prev">&lang;</span> 
							<span class="next">&rang;</span> 
						</p> 
					</div>
				</div>
			</div>
				<table class="board-table table table-hover table-border text-center">
				<colgroup>
					<col width="5%">
					<col width="*">
					<col width="10%">
					<col width="20%">
					<col width="10%">
					<thead>
					<tr>
						<th scope="col">No</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">날짜</th>
						<th scope="col">조회수</th>
					</tr>
					</thead>
					<tbody>
					<c:choose>
						<c:when test="${not empty boardList}">
							<c:forEach items="${boardList }" var="boardInfo" varStatus="status">
								<tr>
									<td>${clubBoardVO.totalCnt - boardInfo.rowNum + 1 }</td>
									<c:choose>
										<c:when test="${sessionScope.loginInfo.clubCode eq boardInfo.clubCode }">
											<td><a href="/club/clubBoardDetail?cbBoardNum=${boardInfo.cbBoardNum }&&clubCode=${boardInfo.clubCode}">${boardInfo.cbBoardTitle } (${boardInfo.cbCmtCount })</a></td>
										</c:when>
										<c:otherwise>
											<td><a href="" onclick="cbDetail();">${boardInfo.cbBoardTitle } (${boardInfo.cbCmtCount })</a></td>
										</c:otherwise>
									</c:choose>
									<td>${boardInfo.memName }</td>
									<td>${boardInfo.cbBoardDate }</td>
									<td>${boardInfo.cbReadCnt }</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5">
									등록된 게시글이 없습니다.
								</td>
							</tr>
						</c:otherwise>
					</c:choose>
					</tbody>
				</table>
				<div class="board-btn d-grid gap-2 d-md-flex justify-content-md-end" style="margin-bottom: 20px;">
					<c:if test="${sessionScope.loginInfo.clubCode eq club.clubCode  }">
						<button type="button" class="btn btn-success btn-sm" onclick="location.href='/club/clubBoardWrite?clubCode=${club.clubCode}';">글쓰기</button>
					</c:if>
					<c:if test="${sessionScope.loginInfo.clubAdmin eq 'Y' and sessionScope.loginInfo.clubCode eq club.clubCode}">
						<button type="button" class="btn btn-success btn-sm" onclick="location.href='/club/clubDetailUpdate?clubCode=${club.clubCode}';">수정</button>
					</c:if>
				</div>
				<div class="d-grid gap-2 d-md-flex justify-content-center">
					<nav aria-label="Page navigation example">
						<ul class="pagination pagination-sm">
							<li class="page-item <c:if test="${!clubBoardVO.prev }">disabled</c:if>">
							<a class="page-link" href="/club/clubDetail?nowPage=${clubBoardVO.beginPage - 1 }&&clubCode=${clubBoardVO.clubCode }"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<c:forEach begin="${clubBoardVO.beginPage }" end="${clubBoardVO.endPage }" var="pageIndex">
									<li class="page-item <c:if test="${clubBoardVO.nowPage eq pageIndex }">active</c:if>"><a class="page-link" 
									href="/club/clubDetail?nowPage=${pageIndex }&&clubCode=${clubBoardVO.clubCode }">${pageIndex }</a></li>
								</c:forEach>
							<li class="page-item <c:if test="${!clubBoardVO.next }">disabled</c:if>"><a class="page-link" href="/club/clubDetail?nowPage=${clubBoardVO.endPage + 1 }&&clubCode=${clubBoardVO.clubCode }"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span></a>
							</li>
						</ul>
					</nav>
				</div>
				<div class="d-grid gap-2 d-md-flex justify-content-end">
					<form action="/club/clubDetail" method="post" id="searchForm">
					<input type="hidden" value="1" id="nowPage" name="nowPage">
					<input type="hidden" name="clubCode" value="${clubBoardVO.clubCode }">
						<select id="sort" name="sort" <c:if test="${clubBoardVO.sort eq 'MEM_NAME'}">selected</c:if>>
							<option value="CB_BOARD_TITLE">제목</option>
							<option value="MEM_NAME">작성자</option>
						</select>
						<input type="text" name="keyword" maxlength="255" autocomplete="off">
						<button class="img-button" type="submit" name="click">
							<i class="fas fa-search"></i>
						</button>
					</form>
				</div>
			</div>
			<div class="col-2">
				<table class="table table-hover">
					<c:forEach items="${memList }" var="mem" >
						<tr>
							<td>
								<div class="user-info__img"><img alt="" src="/resources/images/member/${mem.memImage }" >
									${mem.memName }
									${mem.bookComplitCnt }
								</div>
							</td>
						</tr>
					</c:forEach>
				</table>
				</div>
			</div>
	</div>

<script type="text/javascript" src="/resources/js/club/club_detail.js"></script>
</body>
</html>