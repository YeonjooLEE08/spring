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
			<form action="/board/regNtBoard" method="post" id="ntBoardWrite" class="needs-validation" enctype="multipart/form-data">
				<div class="row">
					<input type="hidden" name="ntCode" value="${ntCode }">
					<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
					<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
					<div class="col">
						제목 <input type ="text" name="ntTitle" id="ntTitle" class="form-control" autocomplete="none"> <!--기록저장X -->
					</div>
				</div>
				<div class="row">
					<div class="col">
						내용 <textarea rows="5" cols="50" name="ntContent"></textarea>
					</div>
				</div>
				<div class="row">
					<div class="col">
						파일 <input type="file" name="uploadFile">
					</div>
				</div>
				
				<div class="row">
					<div class="col">
					<input type="submit" value="전송">
					</div>
				</div>
			</form>
		</div>
	
	</div>
	

</div>
</body>
</html>