<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/book/searchBar.css" rel="stylesheet">
<style type="text/css">
.container{
	width: 100%;
	margin-left: 250px;
}
.rcdBook{
	float: left;
	width: 50%;
}
</style>
</head>
<body>
<div class="container">
	<div class="searchBar">
	
		<form action="/book/searchBook" method="post" id="searchBook">
		<!-- 검색구분 선택 -->
			<select name="searchSub">
				<option value="all" >전체</option>
				<option value="title">도서명</option>
				<option value="writer">저자</option>
				<option value="publisher">출판사</option>
				<option value="keyword">키워드</option>
			</select>
			<input type="text" name="searchTxt" placeholder="소장자료 검색">
			<button type="submit" class="btn btn-success btn-sm" onclick="location.href='book/searchBook';">검색</button>
		</form>
	</div> 
	<div class="rcdBook"  >
		<h3>이달의 인기도서</h3>
		<a href="/book/selectRcdBook">확인하러가기</a>
			
			
		<div class="row">
			<c:forEach items="${bookList }" var="book">
				<div class="col-3 text-center" style="margin-bottom: 16px;">
					<div class="card" style="width: 13rem; margin: 0 auto;">
						 <a href="/book/bookDetail?bookCode=${book.bookCode }&memId=${sessionScope.loginInfo.memId}">
						 	<img src="/resources/images/book/${book.bkImg }"  alt="..." height="170px;"  >
						 </a>
						 <div class="card-body" style="padding:0.2rem 1.2rem;">
						    <h5 class="card-title">${book.title }</h5>
						    <p class="card-text"></p>
						 </div>
						</div>
					</div>
			</c:forEach>
		</div>
	</div>
</div>

<script type="text/javascript" src="/resources/js/book/rcd_book.js?ver=1"></script>
</body>
</html>