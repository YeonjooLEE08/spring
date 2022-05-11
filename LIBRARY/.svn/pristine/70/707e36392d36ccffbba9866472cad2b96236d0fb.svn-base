<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="pageName">
수정하기
</div>
<form action="/member/updateBookPlaner" method="post">
<input type="hidden" value="${bookPlaner.complitReview }">
<input type="hidden" name="complitCode" value="${bookPlaner.complitCode }">
<input type="hidden" name="bookCode" value="${bookPlaner.bookCode }">
<input type="hidden" name="memId" value="${loginInfo.memId}">
책 제목: ${bookPlaner.bookInfo.title}<br>
작가: ${bookPlaner.bookInfo.writer}<br>
날짜: ${bookPlaner.complitDate}<br>
내용:<textarea rows="20" cols="40" name="complitReview"></textarea>

<button type="submit">확인</button>
</form>
<script type="text/javascript" src="/resources/js/member/book_planer_update.js?ver=0"></script>
</body>
</html>