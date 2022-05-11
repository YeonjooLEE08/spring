<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.qnaDetailDiv{
	margin: 0 auto;
	text-align: center;
	width: 100%;
}
.qnatitleDiv{
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
.answerTb{
	border: 1px solid gray;
	margin-top: 10px;
	text-align: left;
	width: 100%;
	margin: 0 auto;
}
.inputanswer{
	margin: 0 auto;
	margin-bottom: 30px;
	
}
.updateDiv{
	margin-bottom: 50px;
	margin-top: 50px;
}
.answerDiv{
	width: 50%;
	margin: 0 auto;
}
</style>
</head>
<body>
<div class="qnaDetailDiv">
	<div class="qnatitleDiv">
		${qnaInfo.qnaTitle }
	</div>
	<div>
		<span id="writer">작성자: ${qnaInfo.memName}</span>
		<span id="etcInfo">조회수: ${qnaInfo.qnaReadCnt } / 작성일: ${qnaInfo.qnaCreateDate }</span>
	</div>
	<div>
		<hr>
		<div>
			${qnaInfo.qnaContent }
		</div>
	</div>
	<div class="updateDiv">
		<c:if test="${qnaInfo.memId eq sessionScope.loginInfo.memId }">
			<button type="button" onclick="location.href='/otherB/qnaUpdateFrom?qnaNum=${qnaInfo.qnaNum}';">수정하기</button>
			<button type="button" onclick="location.href='/otherB/qnaDelete?qnaNum=${qnaInfo.qnaNum}';">삭제하기</button>
		</c:if>
		<button type="button" onclick="location.href='/otherB/qnaBoard';">목록가기</button>
	</div>
	
	
	<div class="answerDiv">
	<c:if test="${sessionScope.loginInfo.memId eq 'admin'}">
		<div>
			<form action="/otherB/regQnaCmt" method="post">
			<input type="hidden" name="qnaNum" value="${qnaInfo.qnaNum }">
				<table class="inputanswer">
					<tr>
						<td>
							문의 건에 대한 답변<br>
							<textarea rows="3" 
			                    class="form-control" 
			                    id="textArea_byteLimit" 
			                    name="answerContent" 
			                    onkeyup="fn_checkByte(this)"></textarea>
							<br><sup><span id="nowByte">0</span>/200bytes</sup> (* 영문/숫자 기준 1000자, 한글 기준 자까지 입력 가능합니다.)
							<br><button type="submit">댓글등록</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</c:if>
	
	<div class="answerDiv">
				<table class="answerTb">
					<c:choose>
						<c:when test="${empty answerList }">
							<tr>
								<td>
									문의하신 답변 확인 중입니다.	
								</td>
							</tr>
						</c:when>
						<c:otherwise>
							<tr>
								<td>
									문의하신 내용의 답변입니다	
								</td>
							</tr>
						</c:otherwise>
					</c:choose>
					<c:forEach items="${answerList }" var="answer">
						<tr>
							<td>
								<div>${answer.answerDate }</div>
								<div>
									${answer.answerContent }
								</div>
								<c:if test="${sessionScope.loginInfo.memId eq 'admin'}">
									<div>
										<button type="button" onclick="updateAnswer(this, '${answer.answerNum}', '${answer.qnaNum }');">수정</button>
										<button type="button" onclick="deleteAnswer('${answer.answerNum}', '${answer.qnaNum }');">삭제</button>
									</div>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</table>
		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/js/board/qna_board_detail.js?ver=2"></script>
</body>
</html>