<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
<div>
	<div>글 작성 페이지입니다</div>
	<form action="/otherB/regFreeBoard" method="post">
		<div>
			<table>
				<tr>
					<th>제목</th>
					<td>
						<input type="text" name="boardTitle">
					</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>
						${sessionScope.loginInfo.memName}
					</td>
				</tr>
				<tr>
					<th colspan="2">내용</th>
				</tr>
				<tr>
					<td colspan="2">
						<textarea rows="10" cols="50" name="boardContent" id="regFrBoard_textarea"></textarea>
					</td>
				</tr>
			</table>
		</div>
		<div>
			<button type="submit">글등록</button>
		</div>
	</form>
</div>

</body>
</html>