<%@page import="java.text.SimpleDateFormat"%>
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
.writeForm table{
	width:100%;
}	

.writeForm td{
	padding: 10px;
	border-bottom: 1px solid #dddddd;
	border-top: 1px solid #dddddd;
}
.writeForm td:first-child{
	background-color: #F0F0F0;
	text-align: center;
	font-weight: 600;
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
      <div class="line_map">홈 > 참여마당 > 자유게시판 > 자유게시판 수정</div>
      <div class="tit">자유게시판 수정</div>
   	</div>
	<form action="/otherB/updateFreeBoard" method="post" id="frBoardUpdate" class="needs-validation" enctype="multipart/form-data">
	<input type="hidden" name="boardNum" value="${board.boardNum }">
		<div class="writeForm">
			<table>
				<tr>
					<td class="title">제목</td>
					<td>
						<input type="text" name="boardTitle" value="${board.boardTitle }" id="boardTitle" class="form-control">
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>
						${board.memName }
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="boardContent" id ="editor">${board.boardContent }</textarea></td>
				</tr>
			</table>
		</div>
		<div class="btnDiv">
			<button type="submit" class="btn btn-success">수정완료</button>
			<button type="button" class="btn btn-success" onclick="location.href='/otherB/selectFreeBoardDetail?boardNum=${board.boardNum}';">취소(돌아가기)</button>
		</div>
	</form>
</div>
</body>
</html>