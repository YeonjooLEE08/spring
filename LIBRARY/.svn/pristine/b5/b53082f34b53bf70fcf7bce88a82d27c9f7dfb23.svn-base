<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	text-align: center;
	width: 800px;
}
.boardDiv table{
	border: 1px solid black;
	border-collapse: collapse;
	width: 800px;
	margin-top: 10px;
	text-align: center;
	margin-bottom: 30px;
}
.boardDiv table td{
	border: 1px solid black;
}
.clubInfo{
	text-align: left;
	margin-bottom: 20px;
}
.memListTable{
	text-align: center;
}
table{
	width: 800px;
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
</style>
</head>
<body>
<div class="row">
	<div class="col-2">

	</div>
	<div class="col-10">
		<div class="row">
			<div class="col-8">
					<table class="table table-hover">
						<tr>
							<c:forEach items="${memList }" var="mem" >
									<td>
										<img alt="" src="/resources/images/member/${mem.memImage }" >
										${mem.memName }
							</c:forEach>
						</tr>
					</table>
							모임명 : ${club.clubName } <br>
							모임 인원수 : ${club.clubHeadCnt }<br>
							모임장 : ${club.memName }<br>
							모임소개 : ${club.clubIntro }
				</div>
			<div class="col-2">
				<table class="table table-hover">
					<c:forEach items="${memList }" var="mem" >
						<tr>
							<td>
								<img alt="" src="/resources/images/member/${mem.memImage }" >
								${mem.memName }
								${mem.bookComplitCnt }
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-8">
				<div class="d-grid gap-2 d-md-flex justify-content-md-end" style="margin-bottom: 20px;">
						<c:if test="${sessionScope.loginInfo.clubCode eq club.clubCode  }">
							<button type="button" class="btn btn-success btn-sm" onclick="location.href='/club/clubBoardWrite?clubCode=${club.clubCode}';">글쓰기</button>
						</c:if>
						<c:if test="${sessionScope.loginInfo.clubAdmin eq 'Y' and sessionScope.loginInfo.clubCode eq club.clubCode}">
							<button type="button" class="btn btn-success btn-sm" onclick="location.href='/club/clubDetailUpdate?clubCode=${club.clubCode}';">수정</button>
						</c:if>
					</div>
				<div class="mb-3">
				<table class="table table-hover table-border text-center">
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
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<nav aria-label="Page navigation example">
					<ul class="pagination pagination-sm justify-content-center">
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
		</div>
		<div class="row">
			<div class="col-6">	
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
	</div>
</div>

<script type="text/javascript" src="/resources/js/club/club_detail.js"></script>
</body>
</html>