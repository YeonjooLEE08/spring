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
	
	
	
	/* hs-write-form 작성폼 */
	.hs-write-form{
		display: flex;
		text-align: center;
	    flex-direction: column;
	    justify-content: center;
	
	}
	.hs-write-form-top{
		display: flex;
	    justify-content: center;
	}
	.hs-write-form-top div:nth-child(1){
		flex-grow: 90;
	}
	.hs-write-form-top div:nth-child(2){
		margin-left: 10px;
		flex-grow: 0;
		width: 17%;
	}
	.hs-write-form-top div:nth-child(2) input[type="text"]{
		text-align: center;
	}
	
	
	.hs-write-form input[type="text"]{
		width: 100%;
		border: none;
		border-bottom: 1px solid #d4d4d4;
		padding: 5px;
	}
	.hs-write-form input[type="text"]:focus{
		border-bottom: 1px solid #16784B;
	}
	.hs-write-form-bottom textarea{
		width: 100%;
		margin: 1rem auto;
		padding: 5px;
		border: 1px solid #d4d4d4;
		border-radius: 7px;
		resize: none;
	}
	.hs-write-form-bottom textarea:focus {
		border: 1px solid #16784B;;
		outline: none;
	}
	.hs-write-form-bottom {
		text-align: right;
	}
	.hs-write-form-bottom button{
		margin-right: 2px;
	}
	
	
	
</style>
</head>
<body>
완독 도서 입력창
<div class="container">

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
	<div class="bookPlaner-search-form hs-write-form">
		<input type="hidden" name="memId" value="${loginInfo.memId }">
		<div class="hs-write-form-top">
			<div><input type="text" name="title" placeholder="책 제목"></div>
			<div><input type="text" name="writer" placeholder="저자"></div>
		</div>
		<div class="hs-write-form-bottom">
			<textarea rows="10"  name="complitReview" ></textarea>
			<button type="submit" class="btn btn-success">작성 완료</button>
		</div>
	</div>
</form>
<script type="text/javascript" src="/resources/js/member/book_planer_form.js?ver=51" ></script>
</div>
</body>
</html>