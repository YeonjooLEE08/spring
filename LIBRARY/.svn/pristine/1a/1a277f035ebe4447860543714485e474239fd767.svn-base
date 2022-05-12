<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
<link href="/resources/css/book/searchBar.css" rel="stylesheet">
<style type="text/css">

img:hover{
	opacity: 0.7;
}


</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 도서검색 > 대출베스트</div>
      <div class="tit">대출베스트</div>
      <div class="sub_tit">하..멘트어렵노..도서관 가장 많이 빌린 책</div>
   </div>
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
</div>
</body>
</html>