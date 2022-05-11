<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-12">
			<form action="/board/updateNtBoardDetail" method="post">
					<input type="hidden" name="ntCode" value="${ntBoard.ntCode }">
					<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
					<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
					제목 <input type ="text" name="ntTitle" value="${ntBoard.ntTitle }"> <br>
					시간 ${ntBoard.ntCreateDate } <br>
					내용 <textarea rows="5" cols="50" name="ntContent" >${ntBoard.ntContent }</textarea> <br>
					<input type="submit" value="수정" >
				</form>
				
				</div>
					
			</div>
		</div>
	
</body>
</html>