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
.writeForm td:first-child, #pwInput{
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
      <div class="line_map">홈 > 참여마당 > Q&A > Q&A 수정</div>
      <div class="tit">Q&A 수정</div>
   	</div>
	<form action="/otherB/updateQna" method="post" id="qnaBoardUpdate" class="needs-validation" enctype="multipart/form-data">
	<input type="hidden" name="qnaNum" value="${qnaInfo.qnaNum }">
		<div class="writeForm">
			<table id="passwordDiv">
			<colgroup>
				<col width="20%">
				<col width="30%">
				<col width="20%">
				<col width="*">
			</colgroup>
				<tr>
					<td>문의내용</td>
					<td colspan="3">
						<input type="text" name="qnaTitle" id="qnaTitle" class="form-control" value="${qnaInfo.qnaTitle }" required>
					</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>${qnaInfo.memName }
						<input type="hidden" name="memName" value="${qnaInfo.memName }">
					</td>
					<td id="pwInput">비밀글유무</td>
					<td>
						<input type="hidden" id="qnaPw" value="${qnaInfo.qnaPw }">
						<input type="radio" name="qnaIsPrivate" value="Y" onclick="insertTr();" <c:if test="${qnaInfo.qnaIsPrivate eq 'Y' }"> checked="checked" </c:if>> 
						 예 &nbsp;
						<input type="radio" name="qnaIsPrivate" value="N" onclick="deleteTr();" <c:if test="${qnaInfo.qnaIsPrivate eq 'N' }"> checked="checked" </c:if>> 아니오
					</td>
				</tr>
			</table>
			<table>
			<colgroup>
				<col width="20%">
				<col width="*">
			</colgroup>
				<tr>
					<td>문의내용</td>
					<td><textarea name="qnaContent" id ="editor">${qnaInfo.qnaContent }</textarea></td>
				</tr>
			</table>
		</div>
		<div class="btnDiv">
			<button type="submit" class="btn btn-success">등록하기</button>
			<button type="button" class="btn btn-success" onclick="location.href='/otherB/qnaDetail?qnaNum=${qnaInfo.qnaNum}';">취소하기</button>
		</div>
	</form>
</div>
<script type="text/javascript" src="/resources/js/board/qna_board_update.js?ver=4"></script>
</body>
</html>