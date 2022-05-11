<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.qnaContainer{
	margin: 0 auto;
	margin-top : 30px;
	width: 80%;
	text-align: center;
}
.qnaTb{
	margin: 0 auto;
	width: 100%;
	border: 1px solid gray;
}
.qnaTb tr td{
	height: 30px;
	border: 1px solid gray;
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
</style>
</head>
<body>
<div class="qnaContainer">
	<div>
		<h2>Q & A</h2>	
	</div>
	<div class="searchQnaDiv">
		<form action="/otherB/searchQna" method="post">
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
		<c:if test="${not empty sessionScope.loginInfo }">
			<div>
				<button type="button" onclick="location.href='/otherB/regQnaForm';">글쓰기등록</button>
			</div>
		</c:if>
		<div>
			<table class="qnaTb">
				<thead>
					<tr>
						<td>순</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
						<td>조회수</td>
						<td>답변유무</td>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty qnaList }">
							<tr>
								<td colspan="6">작성된 게시글이 없습니다</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${qnaList }" var="qna">
								<tr>
									<td>${qna.rownum }</td>
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
												문의확인중
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
		        	<button type="submit" class="btn btn-primary">비밀번호확인</button>
	        	</div>
	        </div>
      	</form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="/resources/js/board/qna_board_list.js?ver=3"></script>
</body>
</html>