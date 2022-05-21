<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.board-btn:hover{
	background-color: #e9ecef;
	color: black;
}
.boardDiv{
	margin-bottom: 20px; 
	margin-top: 20px;
}
.board-title{
	font-size: 20px;  
	margin-bottom: 5px;
}
.board-img{
	width: 40px; 
	height: 40px; 
	border-radius: 70%;
}
.board-info{
	font-size: 14px; 
	margin-bottom: 20px;
}
.board-name{
	font-size: 13px;
}
.board-date{
	font-size: 12px; 
	font-weight: normal;
}
.board-content{
	margin-top: 100px; 
	margin-bottom: 100px;
	white-space:pre-line;
}
.delete-btn{
	color:#dc3545;
}
.delete-btn:hover{
	background-color:#dc3545;
	color: white;
}
.form-control{
	resize: none;
}
.reg-cmt{
	margin-top: 5px; 
	margin-bottom: 10px;
	color: white;
    background-color: #72a37c;
    border-color: #72a37c;
}
.reg-cmt:hover{
	background-color: #427a4e;
}
.cmt-img{
	width: 37px; 
	height: 37px; 
	border-radius: 70%;
	
}
.cmt-content{
	margin-top: 20px; 
	margin-bottom: 5px;
	font-size: 15px;
}
.byteSpan{
	margin-top: 10px; 
	font-size: 14px;
}
.form-control{
	border: 1px solid #d4d4d4;
	border-radius: 3px;
	padding: 3.5px;
}
.form-control:focus {
	border-color: #c7e2d1;
	box-shadow: 0 0 8px #c7e2d1;
}
.form-label{
	font-size: 15px;
}
.cmt-cnt{
	font-weight: bold;
}
.update-btn{
	background-color: #72a37c;
	color: white;
}
.notic-btn{
	margin-right: 10px; 
}
.board-title{
	font-weight: bold;
}
</style>
</head>
<body>
<div class="container">
<div class="row">
	<div class="boardDiv col-8 text-left" >
		<div class="board-title"><c:if test="${clubBoard.cbPin eq 1 }"><button type="button" class="notic-btn btn btn-danger btn-sm">공지</button></c:if>${clubBoard.cbBoardTitle } </div>
		<div class="row">
			<div class="col-1">
				<img class="board-img" src="/resources/images/member/${clubBoard.memImage }">
			</div>
			<div class="board-info col-8 fw-bold">
				<span class="board-name">${clubBoard.memName } </span><br>
				<span class="board-date">${clubBoard.cbBoardDate } 조회 ${clubBoard.cbReadCnt }</span>
			</div>
		</div>
		<hr>
		<div class="board-content">${clubBoard.cbBoardContent }</div>
		<hr>
		<div class="col-12 d-grid gap-2 d-md-flex justify-content-md-end">
			<button type="button" class="board-btn btn justify-content-md-end" onclick="location.href='/club/clubDetail?clubCode=${clubBoard.clubCode}'">목록</button>
			<c:if test="${clubBoard.memId eq sessionScope.loginInfo.memId }">
			<button type="button" class="board-btn btn justify-content-md-end" 
				onclick="location.href='/club/clubBoardUpdate?cbBoardNum=${clubBoard.cbBoardNum}&&clubCode=${clubBoard.clubCode }';">수정</button>
			<button type="button" class="delete-btn btn justify-content-md-end"  
				onclick="deleteBoard('${clubBoard.cbBoardNum}', '${clubBoard.clubCode }');">삭제</button>
			</c:if>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-8">
		<div class="mb-3">
			<label for="exampleFormControlTextarea1" class="form-label"><span class="cmt-cnt">${clubBoard.cbCmtCount }</span>개의 댓글</label>
			<form action="/club/clubBoardRegCmt" method="post" id="cbRegCmt">
			  	<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
			  	<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
				<input type="hidden" name="cbBoardNum" value="${clubBoard.cbBoardNum }">
				<input type="hidden" name="clubCode" value="${clubBoard.clubCode }">
			  	<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="cbCmtContent" onkeyup="byteCheck(this, '500');"></textarea>
				<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					<span class="byteSpan"><span id="byteInfo">0</span> /500bytes</span>
				  	<button type="submit" class="reg-cmt btn btn-success">댓글등록</button>
			 	</div>
		  </form>
		</div>
	</div>
</div>

<div class="row" >
	<div class="col-8">
			<div class="row">
			<c:forEach items="${cbCmtList }" var="cmt">
				<div class="col-1"><img class="cmt-img" src="/resources/images/member/${cmt.memImage }" ></div>
					<div class="col-8 fw-bold">
						<span class="board-name">${cmt.memName }</span><br>
						<span class="board-date">${cmt.cbCmtDate }</span>
					</div>
			<div class="cmt-content col-12" >
				<form action="/club/clubCmtUpdate" method="post">
				<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
					${cmt.cbCmtContent }
				</form>
			</div>
			<c:if test="${sessionScope.loginInfo.memId eq cmt.memId}">
				<div class="col-12 d-grid gap-2 d-md-flex justify-content-md-end">
					<button type="button" class="board-btn btn btn-sm justify-content-md-end" 
						onclick="updateCmt(this, '${cmt.memId }', '${cmt.cbCmtNum }', '${cmt.clubCode }', '${cmt.cbBoardNum }', '${cmt.cbCmtContent}');" >수정</button>
					<button type="button" class="delete-btn btn btn-sm justify-content-md-end"
						onclick="deleteCmt('${cmt.memId }', '${cmt.cbCmtNum }');" >삭제</button>
				</div>
			</c:if>
			<div class="col-12">
				<hr>
			</div>
			</c:forEach>
		</div>
	</div>
</div>
</div>
<script type="text/javascript" src="/resources/js/club/club_board_detail.js?ver=9"></script>
</body>
</html>