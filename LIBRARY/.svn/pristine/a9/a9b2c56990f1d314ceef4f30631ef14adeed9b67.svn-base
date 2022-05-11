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
.FreeboardListTb{
	margin: 0 auto;
	width: 100%;
	border: 1px solid gray;
}
.FreeboardListTb tr td{
	height: 30px;
	border: 1px solid gray;
}
.regfrBoardDiv{
	margin-top: 20px;
	float: right;
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
.searchQnaDiv{
	margin-bottom: 50px;
	margin-top : 50px;
}
.pageDiv{
	margin-top: 30px;
}
.custom-btn{
  margin: 0 auto;
  outline: none;
  width: 100px;
  height: 30px;
  padding: 5px 25px;
  border: 2px solid #000;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block; 
  justify-content: flex-start;
}
.btn-4 {
  position: relative;
  color: #000;
  z-index: 2;
  line-height: 40px;
  padding: 0;
}
.btn-4:hover{
  border: none;
}
.btn-4:before,
.btn-4:after {
  position: absolute;
  content: "";
  width: 0%;
  height: 0%;
  border: 2px solid;
  z-index: -1;
  transition: all 0.3s ease;
}
.btn-4:before {
  top: 0;
   left: 0;
   border-bottom-color: transparent;
   border-right-color: transparent;
   border-top-color: #000;
   border-left-color: #000;
}
.btn-4:after{
   bottom: 0;
   right: 0;
   border-top-color: transparent;
   border-left-color: transparent;
   border-bottom-color: #000;
   border-right-color: #000;
}
.btn-4:hover:before,
.btn-4:hover:after {
  border-color: #000;
  height: 100%;
  width: 100%;
}
</style>
   <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<div class="freeContainer">
	<div>
		<h2>FREE BOARD</h2>	
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
		<div class="regfrBoardDiv">
			<button type="button" onclick="location.href='/otherB/regFreeBoard';" class="custom-btn btn-4">글등록</button>
		</div>
	</c:if>
	<div>
		<table class="FreeboardListTb">
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