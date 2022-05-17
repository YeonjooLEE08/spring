<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
<style type="text/css">

.container table{
   border: 1px solid #dddddd;
   border-left:none;
   border-right:none;
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
</style>
   <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<div class="container">
   <div class="subTit">
      <div class="line_map">홈 > 참여마당 > 공지사항</div>
      <div class="tit">공지사항</div>
   </div>
   <div class="searchBar">
      <form action="/board/searchNt" class="searchForm" method="post" id="SearchNtForm">
      <!-- 검색구분 선택 -->
         <select class="SelectSearch" name="searchSub">
            <option value="NT_TITLE">제목</option>
            <option value="NT_CONTENT">내용</option>
            <option value="all">제목+내용</option>
         </select>
         <input class="keyword" type="text" name="searchTxt" maxlength="255" autocomplete="off">
         <button class="img-button" type="submit" name="click" onclick="searchNT();">
            <i class="fas fa-search"></i>
         </button>
      </form>      
   </div>
            <table class="table table-hover table-border text-center">
            <colgroup>
               <col width="7%">
               <col width="*">
               <col width="15%">
               <col width="13%">
               <col width="11%">
               <col width="7%">
               <thead>
               <tr>
                  <th scope="col">No</th>
                  <th scope="col">제목</th>
                  <th scope="col">작성자</th>
                  <th scope="col">작성일</th>
                  <th scope="col">조회수</th>
                  <th scope="col">첨부</th>
                  
               </tr>
               </thead>
               <tbody>
               <c:choose>
                  <c:when test="${not empty ntBoardList }">
                     <c:forEach items="${ntBoardList }" var="ntBoardInfo" >
                     <tr>
                           <td>${ntBoardInfo.rowNum}</td>
                           <td><a href="/board/ntBoardDetail?ntCode=${ntBoardInfo.ntCode }">${ntBoardInfo.ntTitle }</a></td>
                           <td>${ntBoardInfo.memName }</td>
                           <td>${ntBoardInfo.ntCreateDate}</td>
                           <td>${ntBoardInfo.ntRdCnt}</td>
                           <td><a href="/board/fileDownload?fileName=${ntBoard.fileName}">${ntBoardInfo.fileExt}</a></td>
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
         <div class="ntBtn">
	         <c:if test="${sessionScope.loginInfo.isAdmin eq 'Y' }" >
	            <button type="button" class="btn btn-success btn-sm" onclick="location.href='/board/ntBoardWrite';">글쓰기</button>
	         </c:if>
   		</div>

	<div class="pageDiv">
		<nav aria-label="Page navigation example">
			<ul class="pagination pagination-sm justify-content-center">
				<li class="page-item <c:if test="${!ntBoardVO.prev }">disabled</c:if>">
				<a class="page-link" href="/board/ntBoardList?nowPage=${ntBoardVO.beginPage - 1 }"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="${ntBoardVO.beginPage }" end="${ntBoardVO.endPage }" var="pageIndex">
						<li class="page-item <c:if test="${ntBoardVO.nowPage eq pageIndex }">active</c:if>"><a class="page-link" 
						href="/board/ntBoardList?nowPage=${pageIndex }">${pageIndex }</a></li>
					</c:forEach>
				<li class="page-item <c:if test="${!ntBoardVO.next }">disabled</c:if>">
				      <a class="page-link" href="/board/ntBoardList?nowPage=${ntBoardVO.endPage + 1 }" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				</li>
			</ul>
		</nav>
	</div>
</div>	
<script type="text/javascript" src="/resources/js/board/search_nt_board.js"></script>
</body>
</html>