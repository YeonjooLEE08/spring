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
	text-align: center;
}
.FreeboardListTb{
	margin: 0 auto;
	margin-top: 20px;
}
.regfrBoardDiv{
	margin-top: 20px;
}

</style>
</head>
<body>
<div class="freeContainer">
자유게시판입니다.
	<div>
	<form action="/otherB/searchFreeBoard" method="post">
		<select name="sort">
			<option value="MEM_NAME">글쓴이</option>
			<option value="BOARD_TITLE">제목</option>
		</select>
		<input type="text" name="keyword">
		<button type="submit">검색</button>
	</form>		
	</div>
	<c:if test="${not empty sessionScope.loginInfo}">
		<div class="regfrBoardDiv">
			<button type="button" onclick="location.href='/otherB/regFreeBoard';">글등록</button>
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
	<div>
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