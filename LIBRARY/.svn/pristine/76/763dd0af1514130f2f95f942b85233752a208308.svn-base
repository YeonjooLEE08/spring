<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
<link href="/resources/css/common/form-01.css" rel="stylesheet">
<style type="text/css">
.hs-write-form-bottom textarea{
	height: 20rem;
}
</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 마이페이지 > 북적북적 > 완독도서기록 상세조회 > 수정</div>
      <div class="tit">완독도서기록 수정</div>
	</div>
	<form action="/member/updateBookPlaner" method="post">
		<div class="bookPlaner-search-form hs-write-form">
			<input type="hidden" value="${bookPlaner.complitReview }">
			<input type="hidden" name="complitCode" value="${bookPlaner.complitCode }">
			<input type="hidden" name="bookCode" value="${bookPlaner.bookCode }">
			<input type="hidden" name="memId" value="${loginInfo.memId}">
			<div class="hs-write-form-top">
				<div><input type="text" value="${bookPlaner.bookInfo.title}" readonly></div>
				<div><input type="text" value="${bookPlaner.bookInfo.writer}" readonly></div>
			</div>
			<%-- <div>${bookPlaner.complitDate}</div> --%>
			<div class="hs-write-form-bottom">
				<textarea name="complitReview" >${bookPlaner.complitReview }</textarea>
				<button type="submit" class="btn btn-success">수정 완료</button>
			</div>
			
		</div>
	</form>
</div>
<script type="text/javascript" src="/resources/js/member/book_planer_update.js?ver=1"></script>
</body>
</html>