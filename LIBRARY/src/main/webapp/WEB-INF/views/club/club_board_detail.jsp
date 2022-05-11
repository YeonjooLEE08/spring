<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="row">
	<div class="col-4"></div>
	<div class="col-4 text-left" style="margin-bottom: 20px;">
		제목 : ${clubBoard.cbBoardTitle } <br>
		작성자 : ${clubBoard.memName }<br>
		작성일 : ${clubBoard.cbBoardDate }<br>
		내용 : ${clubBoard.cbBoardContent }<br>
		<div class="col-4" style="margin-top: 10px;">
			<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="history.back();">목록</button>
		<c:if test="${clubBoard.memId eq sessionScope.loginInfo.memId }">
			<button type="button" class="btn btn-success btn-sm justify-content-md-end" 
			onclick="location.href='/club/clubBoardUpdate?cbBoardNum=${clubBoard.cbBoardNum}&&clubCode=${clubBoard.clubCode }';">수정</button>
			<button type="button" class="btn btn-success btn-sm justify-content-md-end" 
			onclick="location.href='/club/clubBoardDelete?cbBoardNum=${clubBoard.cbBoardNum}&&clubCode=${clubBoard.clubCode }';">삭제</button>
		</c:if>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-4"></div>
	<div class="col-4">
		<div class="mb-3">
		  <label for="exampleFormControlTextarea1" class="form-label">${clubBoard.cbCmtCount }개의 댓글</label>
		  <form action="/club/clubBoardRegCmt" method="post" id="cbRegCmt">
		  	<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
		  	<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
			<input type="hidden" name="cbBoardNum" value="${clubBoard.cbBoardNum }">
			<input type="hidden" name="clubCode" value="${clubBoard.clubCode }">
			  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="cbCmtContent" style="resize: none;" onkeyup="byteCheck(this, '500');"></textarea>
			  <div class="d-grid gap-2 d-md-flex justify-content-md-end">
			  	<span style="margin-top: 10px; font-size: 14px;"><span id="byteInfo">0</span> /500bytes</span>
			  	<button type="submit" class="btn btn-outline-success" style="margin-top: 5px;">댓글등록</button>
			  </div>
		  </form>
		</div>
	</div>
</div>
<div class="row" id="">
	<div class="col-4"></div>
	<div class="col-4">
			<div class="row">
			<c:forEach items="${cbCmtList }" var="cmt">
				<div class="col-1"><img alt="" src="/resources/images/member/${cmt.memImage }" style="width: 30px; height: 30px; border-radius: 70%;"></div>
					<div class="col-4 fw-bold" style="font-size: 14px;">
						<span style="font-size: 14px; ">${cmt.memName }</span><br>
						<span style="font-size: 12px; font-weight: normal;">${cmt.cbCmtDate }</span>
					</div>
			<div class="col-12" style="margin-top: 10px;">
				<form action="/club/clubCmtUpdate" method="post">
				<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
				${cmt.cbCmtContent }
				</form>
			</div>
			<c:if test="${sessionScope.loginInfo.memId eq cmt.memId}">
				<div class="col-12 d-grid gap-2 d-md-flex justify-content-md-end">
					<button type="button" class="btn btn-success btn-sm justify-content-md-end" style="margin-top: 5px;" 
						onclick="updateCmt(this, '${cmt.memId }', '${cmt.cbCmtNum }', '${cmt.clubCode }', '${cmt.cbBoardNum }', '${cmt.cbCmtContent}');" >수정</button>
					<button type="button" class="btn btn-success btn-sm justify-content-md-end" style="margin-top: 5px;" 
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
<script type="text/javascript" src="/resources/js/club/club_board_detail.js?ver=9"></script>
</body>
</html>