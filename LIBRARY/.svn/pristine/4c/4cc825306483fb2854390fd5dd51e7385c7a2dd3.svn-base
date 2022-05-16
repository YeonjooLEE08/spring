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
	<title>test</title>
	<meta name="viewport" content="width=80%, initial-scale=1">
	<script src="/resources/ckeditor/ckeditor.js"></script>
	<script>
		window.onload = function(){
			ck = CKEDITOR.replace("editor");
		};
	</script>
</head>
<body>
<div class="container">
			<form action="/board/updateNtBoardDetail" method="post">
					<input type="hidden" name="ntCode" value="${ntBoard.ntCode }">
					<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
					<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
					제목 <input type ="text" name="ntTitle" value="${ntBoard.ntTitle }"> <br>
					시간 ${ntBoard.ntCreateDate } <br>
					<textarea name="ntContent" id = "editor">${ntBoard.ntContent }</textarea>
					<input type="submit" value="수정" >
				</form>
				
					
		</div>
	
</body>
</html>