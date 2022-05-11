<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.QnaTB{
	margin: 0 auto;
	width: 100%;
	border: 1px solid gray;
}
.QnaTB tr th td{
	border: 1px solid gray;
}
textarea{
	resize: none;
}
</style>
</head>
<body>
<div>
	<form action="/otherB/updateQna" method="post">
	<input type="hidden" name="qnaNum" value="${qnaInfo.qnaNum }">
		<div>
			<table class="QnaTB" id="passwordDiv">
				<tr>
					<th>문의내용</th>
					<td>
						<input type="text" name="qnaTitle" value="${qnaInfo.qnaTitle }" required>
					</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${qnaInfo.memName }
						<input type="hidden" name="memName" value="${qnaInfo.memName }">
					</td>
					<th>비밀글유무</th>
					<td>
						<input type="hidden" id="qnaPw" value="${qnaInfo.qnaPw }">
						<input type="radio" name="qnaIsPrivate" value="Y" onclick="insertTr();" <c:if test="${qnaInfo.qnaIsPrivate eq 'Y' }"> checked="checked" </c:if>> 
						 예 &nbsp;
						<input type="radio" name="qnaIsPrivate" value="N" onclick="deleteTr();" <c:if test="${qnaInfo.qnaIsPrivate eq 'N' }"> checked="checked" </c:if>> 아니오
					</td>
				</tr>
				
			</table>
			<div>
				<div>
						문의상세내용
				</div>
				<div>
					<textarea rows="3" class="form-control" id="textArea_byteLimit" name="qnaContent" wrap="hard" onkeyup="fn_checkByte(this)">${qnaInfo.qnaContent }</textarea><br>
					<sup><span id="nowByte">0</span>/1000bytes</sup> (* 영문/숫자 기준 1000자, 한글 기준 자까지 입력 가능합니다.)
				</div>
			</div>
		</div>
		<div>
			<button type="submit">등록하기</button>
			<button type="button" onclick="location.href='/otherB/qnaDetail?qnaNum=${qnaInfo.qnaNum}';">취소하기</button>
		</div>
	</form>
</div>
<script type="text/javascript" src="/resources/js/board/qna_board_update.js?ver=4"></script>
</body>
</html>