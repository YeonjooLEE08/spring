<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="pageName">
북플래너 상세페이지
</div>
<input type="hidden" value="${bookPlaner.complitCode }">
책 제목: ${bookPlaner.bookInfo.title}<br>
작가: ${bookPlaner.bookInfo.writer}<br>
날짜: ${bookPlaner.complitDate}<br>

내용: ${bookPlaner.complitReview }<br>
<button onclick="history.back();">뒤로가기</button>
<button onclick="bookPlanerDelete();">삭제</button>
<button onclick="location.href='/member/bookPlanerUpdate?memId=${loginInfo.memId }&complitCode=${bookPlaner.complitCode }&bookCode=${bookPlaner.bookCode}';">
	수정
</button>
<button onclick="location.href='/book/bookDetail?bookCode=${bookPlaner.bookCode}';">
	해당 도서 상세보기
</button>

<script type="text/javascript" src="/resources/js/member/book_planer_detail.js?ver=0"></script>
</body>
</html>