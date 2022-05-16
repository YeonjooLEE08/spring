<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.*"%>
<%
	//파일 기본경로
	String defaultPath = request.getSession().getServletContext().getRealPath("/");
	//파일 기본경로, 상세경로
	String filePath = defaultPath + "ckEimg" + File.separator;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<meta name="viewport" content="width=80%,  initial-scale=1">
	<script src="/resources/ckeditor/ckeditor.js"></script>
	<script>
		window.onload = function(){
			ck = CKEDITOR.replace("editor");
		};
	</script>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
<style type="text/css">
.writeForm {
	padding-left: 10px;
	padding-right: 10px;
}
.title{
	margin-bottom: 10px;
	font-size: 20px; 
	font-weight: 600;
}
.title input{
	margin-top:5px;
}

.file{
	margin-top:10px;
	margin-bottom: 10px;
	font-weight: 600;
}

.file input{
	margin-left:10px;
}

.btnDiv{
	padding-top:10px;
	padding-left:25px;
	padding-right:10px;
	text-align:right;
}

.btnDiv button{
		height: 40px;
		padding-left: 10px;
		padding-right: 10px;
		width: 150px;
}


</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 참여마당 > 공지사항</div>
      <div class="tit">공지사항 글쓰기</div>
   	</div>

<form action="/board/regNtBoard" method="post" id="ntBoardWrite" class="needs-validation" enctype="multipart/form-data">
	<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
	<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
	<div class="writeForm">
		<div class="title">제목 <input type ="text" name="ntTitle" id="ntTitle" class="form-control"></div>
		<textarea name="ntContent" id = "editor"></textarea>
		<div class="file">파일 <input type="file" name="uploadFile"></div>
	</div>
	<div class="btnDiv">
		<button type="submit" class="btn btn-success">글쓰기</button>
	</div>
</form>
</div>


<%-- <div class="container">
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
					
						<textarea name="ntContent" id="ntContent_textarea"></textarea>
					<script>
						CKEDITOR.replace("ntContent_textarea",ckeditor_config);
					</script>
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
	

</div> --%>



</body>
</html>