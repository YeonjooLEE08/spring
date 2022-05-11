<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.frDetailDiv{
	margin: 0 auto;
	text-align: center;
	width: 100%;
}
.frtitleDiv{
	font-size: x-large;
	font-weight: bold;
}
#writer{
	text-align: left;
	width: 50%;
}
#etcInfo{
	text-align: right;
	width: 50%;
}
textarea{
	resize: none;
}
.freeCmtTb{
	border: 1px solid gray;
	margin-top: 10px;
	text-align: left;
	width: 80%;
}
.inputCmtTb{
	margin: 0 auto;
	margin-bottom: 30px;
	
}
.updateDiv{
	margin-bottom: 50px;
	margin-top: 50px;
}
.freeCmtDiv{
	width: 50%;
	margin: 0 auto;
}
</style>
</head>
<body>
<div class="frDetailDiv">
	<div class="frtitleDiv">
		${board.boardTitle }
	</div>
	<div>
		<span id="writer">작성자: ${board.memName}</span>
		<span id="etcInfo">조회수: ${board.boardReadCnt } / 작성일: ${board.boardCreateDate }</span>
	</div>
	<div>
		<hr>
		<div>
			${board.boardContent }
		</div>
	</div>
	<div class="updateDiv">
		<c:if test="${board.memId eq sessionScope.loginInfo.memId }">
			<button type="button" onclick="location.href='/otherB/updateFreeBoard?boardNum=${board.boardNum}';">수정하기</button>
			<button type="button" onclick="location.href='/otherB/deleteFreeBoard?boardNum=${board.boardNum}';">삭제하기</button>
		</c:if>
		<button type="button" onclick="location.href='/otherB/freeBoard';">목록가기</button>
	</div>
	
	
	<div class="cmtDiv">
	<c:if test="${not empty sessionScope.loginInfo }">
		<div>
			<form action="/otherB/regFreeBoardCmt" method="post">
			<input type="hidden" name="boardNum" value="${board.boardNum }">
				<table class="inputCmtTb">
					<tr>
						<td>
							<img alt="" src="/resources/images/member/${loginInfo.memImage }" height="50px;"><br>
							${sessionScope.loginInfo.memName}
						</td>
						<td>
							<textarea rows="3" 
			                    class="form-control" 
			                    id="textArea_byteLimit" 
			                    name="commentContent" 
			                    onkeyup="fn_checkByte(this)"></textarea>
							<br><sup><span id="nowByte">0</span>/200bytes</sup> (* 영문/숫자 기준 200자, 한글 기준 자까지 입력 가능합니다.)
						</td>
						<td>
							<button type="submit">댓글등록</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</c:if>
		<div class="freeCmtDiv">
			<c:forEach items="${cmtList }" var="cmt">
				<table class="freeCmtTb">
					<colgroup>
						<col width="15%">
						<col width="*">						
					</colgroup>
					<tr>
						<td>
							<img alt="" src="/resources/images/member/${cmt.memImage}" height="50px;">
						</td>
						<td>
							<div>${cmt.memName }</div>
							<div>${cmt.commentDate }</div>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<div>
								${cmt.commentContent }
								
							</div>
							<c:if test="${cmt.memId eq sessionScope.loginInfo.memId }">
								<div>
									<button type="button" onclick="updateFreeCmt(this, ${cmt.commentNum}, '${cmt.boardNum }');">수정</button>
									<button type="button" onclick="deleteFreeCmt(${cmt.commentNum}, '${cmt.boardNum }');">삭제</button>
								</div>
							</c:if>
						</td>
					</tr>
				</table>
			</c:forEach>
		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/js/board/free_board_detail.js?ver=4"></script>
</body>
</html>