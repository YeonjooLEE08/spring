<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
<style type="text/css">
.board-btn:hover{
	background-color: #e9ecef;
	color: black;
}
.boardDiv{
	margin-bottom: 20px; 
	margin-top: 20px;
}
.board-title{
	font-size: 23px;  
	margin-bottom: 5px;
}

.board-info{
	font-size: 14px; 
	margin-bottom: 20px;
}
.board-name{
	font-size: 13px;
}
.board-date{
	font-size: 12px; 
	font-weight: normal;
}
.board-content{
	margin-top: 100px; 
	margin-bottom: 100px;
}
.delete-btn{
	color:#dc3545;
}
.delete-btn:hover{
	background-color:#dc3545;
	color: white;
}
.form-control{
	resize: none;
}
.reg-cmt{
	margin-top: 5px; 
	margin-bottom: 10px;
}
.cmt-img{
	width: 37px; 
	height: 37px; 
	border-radius: 70%;
}
.cmt-content{
	margin-top: 20px; 
	margin-bottom: 5px;
	font-size: 15px;
}
.byteSpan{
	margin-top: 10px; 
	font-size: 14px;
}
.form-control{
	border: 1px solid #d4d4d4;
	border-radius: 3px;
	padding: 3.5px;
}
.form-control:focus {
	border-color: #c7e2d1;
	box-shadow: 0 0 8px #c7e2d1;
}
.form-label{
	font-size: 15px;
}
.cmt-cnt{
	font-weight: bold;
}


/* 추가 */
.board-date{
	text-align: right;
}
</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 마이페이지 > 북적북적 > 완독도서기록 상세조회</div>
      <div class="tit">완독도서기록 상세조회</div>
   </div>







<div class="row">
	<div class="boardDiv col-11 text-left" >
		<input type="hidden" class="hiddenComplitCode" value="${bookPlaner.complitCode }">
		<div class="board-title">${bookPlaner.bookInfo.title} / ${bookPlaner.bookInfo.writer}
			<button class="board-btn btn justify-content-md-end" onclick="location.href='/book/bookDetail?bookCode=${bookPlaner.bookCode}';">
				해당 도서 상세보기
			</button>
		</div>
		<div class="board-date">${bookPlaner.complitDate}</div>
		<hr>
		<div class="board-content"><pre>${bookPlaner.complitReview }</pre></div>
		<hr>
		<div class="col-12 d-grid gap-2 d-md-flex justify-content-md-end">
			<button type="button" class="btn btn-success" onclick="history.back();">뒤로가기</button>
			<button type="button" class="btn btn-success" onclick="location.href='/member/bookPlanerUpdate?memId=${loginInfo.memId }&complitCode=${bookPlaner.complitCode }&bookCode=${bookPlaner.bookCode}';">수정</button>
			<button type="button" class="btn btn-success" onclick="bookPlanerDelete();">삭제</button>
			
		</div>
	</div>
</div>






</div>
<script type="text/javascript" src="/resources/js/member/book_planer_detail.js?ver=1"></script>
</body>
</html>