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
	.bookPlaner-search{
	    margin: 4rem;
		text-align: center;
	}
	.bookPlaner-search input:first-child{
		width: 20rem;
	}
	.bookPlaner-search input{
		border: 1px solid #d4d4d4;
		border-radius: 3px;
		padding: 3.5px;
	}
	.bookPlaner-search input:focus {
		border-color: #c7e2d1;
		box-shadow: 0 0 8px #c7e2d1;
	}
	.img-button{
	   border: none;
	   background: transparent;
	   font-size: 1.125rem;
	}
	.bookPlaner-search-result{
		display: flex;
		flex-direction: column;
		margin-bottom: 5rem;
		border: 1px solid #d4d4d4;
		border-radius: 10px;
	}
	
	.bookPlaner-search-result:not(div.result-row-thead){
		overflow-y: scroll;
		height: 300px;
	}
	.result-row-thead, .result-row-tbody{
		display: flex;
		justify-content: space-evenly;
		text-align: center;
		padding: 0.5rem;
		font-size: 0.9rem;
	}
	.result-row-thead div, .result-row-tbody div{
		margin: 0px 4rem;
		
	}
	.result-row-thead div:first-child{width: 20%;}
	.result-row-thead div:nth-child(2){width: 60%;}
	.result-row-thead div:last-child{width: 20%;}
	.result-row-tbody div:first-child{width: 20%;}
	.result-row-tbody div:nth-child(2){width: 60%;}
	.result-row-tbody div:last-child{width: 20%;}
	
	.result-row-thead{
		background-color: #E7EDE4;
	}
	.result-row-tbody:hover{
		background: #eee;
	}
	
	
</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 마이페이지 > 북적북적 > 완독 도서 기록</div>
      <div class="tit">완독 도서 기록</div>
	</div>
<div class="bookPlaner-search">
	<input type="text" name="title" placeholder="책 제목">
	<input type="text" name="writer" placeholder="저자">
	<button type="button" class="img-button" onclick="bookPlanerSearch();"><i class="fas fa-search"></i></button>
</div>
<div class="bookPlaner-search-result">
	<div class="result-row-thead">
		<div>이미지</div>
		<div>책 제목</div>
		<div>작가</div>
	</div>
</div>

<form action="/member/insertBookPlaner" method="post" id="bookPlanerForm1">
	<div class="bookPlaner-search-form hs-write-form">
		<input type="hidden" name="memId" value="${loginInfo.memId }">
		<div class="hs-write-form-top">
			<div><input type="text" name="title" placeholder="도서 제목" ></div>
			<div><input type="text" name="writer" placeholder="저자명" ></div>
		</div>
		<div class="hs-write-form-bottom">
			<textarea rows="10"  name="complitReview" ></textarea>
			<button type="submit" class="btn btn-success">작성 완료</button>
		</div>
	</div>
</form>

<!-- jQuery validation 문법 쓰기 : 주의! jQuery 문법을 쓴 후에 적어야 됨-->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script type="text/javascript" src="/resources/js/member/book_planer_form.js?ver=70" ></script>
</div>
</body>
</html>