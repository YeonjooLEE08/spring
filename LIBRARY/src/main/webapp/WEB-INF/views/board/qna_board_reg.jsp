<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form action="/otherB/regQna" method="post">
		<div>
			<table class="QnaTB" id="passwordDiv">
				<tr>
					<th>문의내용</th>
					<td>
						<input type="text" name="qnaTitle" required>
					</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${sessionScope.loginInfo.memName }
						<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
					</td>
					<th>비밀글유무</th>
					<td>
						<input type="radio" name="qnaIsPrivate" value="Y" onclick="insertTr();">예 &nbsp;
						<input type="radio" name="qnaIsPrivate" value="N">아니오
					</td>
				</tr>
				
			</table>
			<div>
				<div>
						문의상세내용
				</div>
				<div>
					<textarea rows="3" class="form-control" id="textArea_byteLimit" name="qnaContent" onkeyup="fn_checkByte(this)"></textarea><br>
					<sup><span id="nowByte">0</span>/1000bytes</sup> (* 영문/숫자 기준 1000자, 한글 기준 자까지 입력 가능합니다.)
				</div>
			</div>
		</div>
		<div>
			<button type="submit">등록하기</button>
			<button type="button" onclick="location.href='/otherB/qnaBoard';">취소하기</button>
		</div>
	</form>
</div>
<script type="text/javascript" src="/resources/js/board/qna_board_reg.js?ver=2"></script>
</body>
</html>