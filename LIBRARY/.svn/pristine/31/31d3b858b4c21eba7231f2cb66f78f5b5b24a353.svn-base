<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.bookPlaner-search-result{
		display: flex;
		flex-direction: column;
		border: 1px solid gray;
	}
	
	.bookPlaner-search-result .result-row-thead, .bookPlaner-search-result .result-row-tbody{
		display: flex;
		flex-direction: row;
		justify-content: space-around;
		
	}
	.bookPlaner-search-result .result-row-thead{
		background-color: #FAF1E6;
	}
	.bookPlaner-search-result .result-row-tbody:hover{
		background-color: #eeeeee;
		cursor: pointer;
	}
	
</style>
</head>
<body>
완독 도서 입력창

<div class="bookPlaner-search">
	<input type="text" name="title" placeholder="책 제목">
	<input type="text" name="writer" placeholder="저자">
	<button type="button" onclick="bookPlanerSearch();">검색</button>
</div>
<div class="bookPlaner-search-result">
	<div class="result-row-thead">
		<div>이미지</div>
		<div>책 제목</div>
		<div>작가</div>
	</div>
</div>

<form action="/member/insertBookPlaner" method="post">
	<div class="bookPlaner-search-form">
		<input type="hidden" name="memId" value="${loginInfo.memId }">
		<input type="text" name="title" placeholder="책 제목">
		<input type="text" name="writer" placeholder="저자">
		<textarea rows="10" cols="30" name="complitReview"></textarea>
	</div>
	<button type="submit">작성 완료</button>
</form>
<script type="text/javascript" src="/resources/js/member/book_planer_form.js?ver=51" ></script>
</body>
</html>