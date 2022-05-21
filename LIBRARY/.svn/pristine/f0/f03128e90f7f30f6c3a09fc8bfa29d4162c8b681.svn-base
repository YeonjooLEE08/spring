<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.*"%>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
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
      <div class="line_map">홈 > 북클럽 > 북클럽 글쓰기</div>
      <div class="tit">북클럽 글쓰기</div>
   	</div>

<form action="/club/regClubBoard" method="post" id="clubBoardWrite" class="needs-validation" enctype="multipart/form-data">
	<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
	<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
	<input type="hidden" name="memImage" value="${sessionScope.loginInfo.memImage}">
	<input type="hidden" name="clubCode" value="${sessionScope.loginInfo.clubCode}">
	<div class="writeForm">
		<table>
			<tr>
				<td>공지</td>
				<td><div class="form-check">
					  <input class="form-check-input" type="checkbox" value="1" name="cbPin" id="flexCheckDefault">
					  <label class="form-check-label" for="flexCheckDefault">
					  </label>
					</div></td>
			</tr>
			<tr>
				<td class="title">제목</td>
				<td><input type ="text" name="cbBoardTitle" id="cbBoardTitle" class="form-control"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${sessionScope.loginInfo.memName }</td>
			</tr>
			<tr>
				<td>등록일</td>
				<td><%= sf.format(nowTime) %></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="cbBoardContent" id = "editor"></textarea></td>
			</tr>
			<tr>
				<td>첨부파일</td>
				<td><input type="file" name="uploadFile" class="form-control"></td>
			</tr>
		</table>
		</div>
	<div class="btnDiv">
		<button type="submit" class="btn btn-success">글쓰기</button>
	</div>
</form>
</div>


</body>
</html>