<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
<style type="text/css">
.container table{
   border: 1px solid black;
   border-collapse: collapse;
   width: 100%;
   margin-top: 10px;
   text-align: center;
   margin-bottom: 30px;
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
.searchBar{
   padding: 10px;
}
.searchBar .searchForm{
	text-align: center;
}
.ntBtn{
	text-align:right;
}
.page-item.active .page-link {
   background-color: #198754;
   border-color: #198754;
}
.page-link {
   color: #198754;
}

</style>
   <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<div class="container">
   <div class="subTit">
      <div class="line_map">홈 > 참여마당 > 자유게시판</div>
      <div class="tit">자유게시판</div>
   </div>
   
	<div class="searchBar">
		<form action="/otherB/searchFreeBoard" method="post" class="searchForm">
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
	
	<div>
		<table class="table table-hover table-border text-center">
		<colgroup>
			 <col width="7%">
               <col width="*">
               <col width="15%">
               <col width="13%">
               <col width="11%">
		</colgroup>
			<thead>
				<tr>
					<th scope="col">No</th>
                  	<th scope="col">제목</th>
                  	<th scope="col">작성자</th>
                  	<th scope="col">작성일</th>
                  	<th scope="col">조회수</th>
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
	<c:if test="${not empty sessionScope.loginInfo}">
		<div class="ntBtn">
			<button type="button" class="btn btn-success btn-m" onclick="location.href='/otherB/regFreeBoard';" >글등록</button>
		</div>
	</c:if>
	<div class="pageDiv col-4" style=" margin:0 auto;">
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