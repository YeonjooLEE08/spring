<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/member/book_planer.css" rel="stylesheet">
</head>
<body>
<div class="pageName">
독서 플래너 <div onclick="location.href='/member/bookPlanerForm';">기록하기</div>
</div>
<div class="bookPlaner-top">
	<div class="bookPlaner-top-right">
		${loginInfo.memName }님의 취향 분석
		
	</div>
	<div class="bookPlaner-top-left">
		<div class="myChartDiv">
			<canvas id="myChart"></canvas>
		</div>
	</div>
	
</div>
<div class="complitBookList">
<c:choose>
	<c:when test="${empty complitBookList }">
		<div class="bookPlaner-empty">
			${loginInfo.memName }님의 첫 번째 완독 도서를 등록해 보세요!
		</div>
	</c:when>
	<c:otherwise>
		<c:forEach items="${complitBookList }" var="complitBook">
			<div style="height: ${complitBook.bookInfo.bkPage}rem;"
				onclick="location.href='/member/bookPlanerDetail?memId=${loginInfo.memId}&bookCode=${complitBook.bookCode }&complitCode=${complitBook.complitCode }';">
				
				${complitBook.bookInfo.title }
			</div>
		</c:forEach>
	</c:otherwise>
</c:choose>

<c:forEach items="${chartList }" var="chart">
	<input class="bookCategory" type="hidden" value="${chart.cateInfo.cateName }">
	<input class="cnt" type="hidden" value="${chart.cnt }">
</c:forEach>
</div>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
<script type="text/javascript" src="/resources/js/member/book_planer.js?ver=13"></script>
</body>
</html>

