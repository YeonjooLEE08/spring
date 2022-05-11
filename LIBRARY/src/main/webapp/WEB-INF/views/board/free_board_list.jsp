<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.freeContainer{
	margin: 0 auto;
	margin-top : 30px;
	width: 80%;
	text-align: center;
}

.BoardbtnDiv{
	margin-top: 20px;
	margin-bottom: 10px;
	float: right;
	padding-right: 10px;
}

.img-button{
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
.searchQnaDiv{
	margin-bottom: 50px;
	margin-top : 50px;
}
.pageDiv{
	margin-top: 30px;
}
.subTit {
    border-bottom: 1px solid #dddddd;
    padding: 15px 0px 15px 0px;
}

.subTit .line_map {
    float: right;
    width: 45%;
    font-size: 12px;
    text-align: right;
}

</style>
   <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<div class="freeContainer">
	<div class="subTit">
	    <div class="line_map">홈 > 참여마당 > 자유게시판</div>
	    <div style="text-align: left;">
		    <h2>자유게시판</h2>
	    </div>
	</div>
	<div class="searchQnaDiv">
		<form action="/otherB/searchFreeBoard" method="post">
			<select class="SelectSearch" name="sort">
				<option value="MEM_NAME">글쓴이</option>
				<option value="BOARD_TITLE">제목</option>
			</select>
			<input class="keyword" type="text" name="keyword" maxlength="255" autocomplete="off">
			<button class="img-button" type="submit" name="click">
				<i class="fas fa-search"></i>
			</button>
		</form>		
	</div>
	<c:if test="${not empty sessionScope.loginInfo}">
		<div class="BoardbtnDiv">
			<button type="button" class="btn btn-success btn-m" onclick="location.href='/otherB/regFreeBoard';" >글등록</button>
		</div>
	</c:if>
	<div>
		<table class="table table table-hover table-border text-center">
		<colgroup>
			<col width="5%">
			<col width="*">
			<col width="10%">
			<col width="20%">
			<col width="10%">
		</colgroup>
			<thead>
				<tr>
					<td>no</td>
					<td>제목</td>
					<td>작성자</td>
					<td>작성일</td>
					<td>조회수</td>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${not empty BoardList }">
						<c:forEach items="${BoardList }" var="board">
							<tr>
								<td>${board.rownum }</td>
								<td>
									<a href="/otherB/selectFreeBoardDetail?boardNum=${board.boardNum }">
									${board.boardTitle }</a>
								</td>
								<td>${board.memName}</td>
								<td>${board.boardCreateDate }</td>
								<td>${board.boardReadCnt }</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5"> 작성된 글이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	<div class="pageDiv">
		<nav aria-label="Page navigation example">
			<ul class="pagination pagination-sm justify-content-center">
				<li class="page-item <c:if test="${!freeBoardVO.prev }">disabled</c:if>">
				<a class="page-link" href="/otherB/freeBoard?nowPage=${freeBoardVO.beginPage - 1 }"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="${freeBoardVO.beginPage }" end="${freeBoardVO.endPage }" var="pageIndex">
						<li class="page-item <c:if test="${freeBoardVO.nowPage eq pageIndex }">active</c:if>"><a class="page-link" 
						href="/otherB/freeBoard?nowPage=${pageIndex }">${pageIndex }</a></li>
					</c:forEach>
				<li class="page-item <c:if test="${!freeBoardVO.next }">disabled</c:if>">
				      <a class="page-link" href="/otherB/freeBoard?nowPage=${freeBoardVO.endPage + 1 }" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				</li>
			</ul>
		</nav>
	</div>
</div>

<script type="text/javascript" src="/resources/js/board/free_board_list.js"></script>
</body>
</html>