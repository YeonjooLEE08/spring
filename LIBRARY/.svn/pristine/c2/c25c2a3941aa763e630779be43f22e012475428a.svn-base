<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
<link href="/resources/css/book/searchBar.css" rel="stylesheet">
<link href="/resources/css/book/bookList.css" rel="stylesheet">
<style type="text/css">
img:hover{
	opacity: 0.7;
}

</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 자료검색 > 소장자료검색</div>
      <div class="tit">소장자료검색</div>
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
	
	<div class="searchRes">
	 <c:forEach items="${searchList }" var="search">
	 	<div class="bookList" >
	 	<table>
			<tr>
				<td class="title" colspan="3"><a href="/book/bookDetail?bookCode=${search.bookCode }&memId=${sessionScope.loginInfo.memId}">${search.title }</a></td>
			</tr>
			<tr>
				<td class="img" rowspan="5"><a href="/book/bookDetail?bookCode=${search.bookCode }&memId=${sessionScope.loginInfo.memId}"><img src="/resources/images/book/${search.bkImg }"  alt="..." height="185px;" width="122px;" ></a></td>
				<td>저자</td>
				<td>${search.writer }</td>
			</tr>
			<tr>
				<td class="tit">발행처</td>
				<td colspan="2">${search.publisher }</td>
			</tr>
			<tr>
				<td class="tit">ISBN</td>
				<td colspan="2">${search.isbn }</td>
			</tr>
			<tr>
				<td class="tit">발행년도</td>
				<td colspan="2">${search.pubDate }</td>
			</tr>
			<tr>
			
				<td class="tit">키워드</td>
				<td colspan="2">${search.keyword }</td>
			</tr>
			<tr>
				<td class="location" colspan="2">*자료위치 &ensp; &emsp;${search.area }</td>
			</tr>
	 	</table>
	 	</div>
	 	</c:forEach>
	 	
	 	
	 	
	 	
	 	
	 	

</div>
</div>
</body>
</html>