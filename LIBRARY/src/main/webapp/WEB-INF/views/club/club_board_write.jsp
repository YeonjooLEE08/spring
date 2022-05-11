<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="row">
	<div class="col-4"></div>
	<div class="col-4">
		<form action="/club/regClubBoard" method="post">
			<input type="hidden" name="clubCode" value="${clubCode }">
			<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
			<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
			제목 : <input type="text" name="cbBoardTitle"> <br>
			내용 : <textarea rows="5" cols="50" name="cbBoardContent" id="textarea"></textarea><br>
			<div class="d-grid gap-2 d-md-flex justify-content-end">
				<button type="submit" class="btn btn-success btn-sm" onclick="regClubBoard();">등록</button>
			</div>
		</form>
	</div>
</div>

</body>
</html>