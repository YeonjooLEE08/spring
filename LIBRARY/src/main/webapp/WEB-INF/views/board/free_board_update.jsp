<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.freeBoardContainer{
	margin: 0 auto;
	text-align: center;
}
.updateFreeBoardTd{
	margin: 0 auto;
}
</style>
</head>
<body>
<div class="freeBoardContainer">
	<div>게시판 수정페이지입니다.</div>
	<form action="/otherB/updateFreeBoard" method="post">
	<input type="hidden" name="boardNum" value="${board.boardNum }">
		<div>
			<table class="updateFreeBoardTd">
				<tr>
					<th>제목</th>
					<td>
						<input type="text" name="boardTitle" value="${board.boardTitle }">
					</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${board.memName }
					</td>
				</tr>
				<tr>
					<th colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2">
						<textarea rows="10" cols="50" name="boardContent" id="regFrBoard_textarea">
						${board.boardContent }
						</textarea>
					</td>
				</tr>
			</table>
		</div>
		<div>
			<button type="submit">수정완료</button>
			<button type="button" onclick="location.href='/otherB/selectFreeBoardDetail?boardNum=${board.boardNum}';">취소(돌아가기)</button>
		</div>
	</form>
</div>
</body>
</html>