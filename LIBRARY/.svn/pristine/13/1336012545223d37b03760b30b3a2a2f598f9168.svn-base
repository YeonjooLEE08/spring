<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
</style>
   <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 참여마당 > Q&A</div>
      <div class="tit">Q&A</div>
   </div>
	<div class="searchBar">
		<form action="/otherB/searchQna" method="post" class="searchForm">
			<select class="SelectSearch" id="sort" name="sort">
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
		
		<div>
			<table class="table table-hover table-border text-center">
			<colgroup>
				<col width="7%">
				<col width="*">
				<col width="13%">
				<col width="15%">
				<col width="10%">
				<col width="12%">
			</colgroup>
				<thead>
					<tr>
						<td>순</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
						<td>조회수</td>
						<td>
							<div onclick="answerFilter();">
								답변유무
								<img alt="..." src="/resources/images/common/파일정렬.png" height="13px;" width="13px;">
							</div>
						</td>
					</tr>
				</thead>
				<tbody id="qnaTbody">
					<c:choose>
						<c:when test="${empty qnaList }">
							<tr>
								<td colspan="6">작성된 게시글이 없습니다</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${qnaList }" var="qna">
							<c:set var="j"  value="${j+1}"/>
								<tr>
									<td> 
										${j}
									</td>
									<td>
										<c:choose>
											<c:when test="${qna.qnaIsPrivate eq 'Y' and sessionScope.loginInfo.memId ne 'admin' }">
												<img alt="..." src="/resources/images/common/lockimg.png" height="20px;" width="20px;" style="float: left;">
												<span class="qnaPwSpan" data-bs-target="#qnaPwModal" data-bs-toggle="modal" 
												 	data-id="${qna.qnaNum }">${qna.qnaTitle }</span>
											</c:when>
											<c:otherwise>
												<span onclick="location.href='/otherB/qnaDetail?qnaNum=${qna.qnaNum}';">${qna.qnaTitle }</span>
											</c:otherwise>
										</c:choose>
									</td>
									<td>${qna.memName}</td>
									<td>${qna.qnaCreateDate }</td>
									<td>${qna.qnaReadCnt }</td>
									<td>
										<c:choose>
											<c:when test="${qna.isAnswered eq 'Y' }">
												답변완료
											</c:when>
											<c:otherwise>
												<c:choose>
													<c:when test="${sessionScope.loginInfo.memId eq 'admin'}">
														<span style="color: #CC0000;">문의확인중</span>
													</c:when>
													<c:otherwise>
														<span>문의확인중</span>
													</c:otherwise>
												</c:choose>
											</c:otherwise>
										</c:choose>
									</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
	</div>
	<c:if test="${not empty sessionScope.loginInfo && sessionScope.loginInfo.memId ne 'admin' }">
		<div class="ntBtn">
			<button type="button" class="btn btn-success btn-m" onclick="location.href='/otherB/regQnaForm';">글쓰기등록</button>
		</div>
	</c:if>
</div>


<!-- 비밀글 비밀번호모달창 -->
<div class="modal fade" id="qnaPwModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
      	<form action="/otherB/checkPw" method="post">
	        <div class="row">
	        	<div class="mb-3">
	        		비밀번호 : 
	        		<input name="qnaPw" id="qnaPw" class="form-control" type="password" placeholder="Input Password here" required>
	        		<input type="hidden" name="qnaNum" id="qnaNum">
	        	</div>
	        </div>
	        <div class="row">
	        	<div class="col d-grid gap-2">
		        	<button type="submit" class="btn btn-success">비밀번호확인</button>
	        	</div>
	        </div>
      	</form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="/resources/js/board/qna_board_list.js?ver=6"></script>
</body>
</html>