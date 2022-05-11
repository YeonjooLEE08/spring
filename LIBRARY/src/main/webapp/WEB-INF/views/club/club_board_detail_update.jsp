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
		<form action="/club/clubBoardUpdate" method="post">
			<input type="hidden" name="cbBoardNum" value="${clubBoard.cbBoardNum }">
			<input type="hidden" name="clubCode" value="${clubBoard.clubCode }">
			제목 : <input type="text" name="cbBoardTitle" value="${clubBoard.cbBoardTitle }"> <br>
			작성자 : <br>
			날짜 : ${clubBoard.cbBoardDate }<br>
			내용 : <textarea rows="5" cols="50" name="cbBoardContent">${clubBoard.cbBoardContent}</textarea><br>
			<input type="submit" value="등록">
		</form>
	</div>
</div>
</body>
</html>
