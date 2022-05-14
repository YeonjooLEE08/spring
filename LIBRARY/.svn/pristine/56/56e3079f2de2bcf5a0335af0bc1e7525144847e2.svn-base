<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <div class="line_map">홈 > 도서검색 > 추천도서</div>
      <div class="tit">추천도서</div>
      <div class="sub_tit">회원들의 추천수가 가장 높은 도서 10권</div>
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
	<c:forEach items="${bookList}" var="book">
	<c:set var="i" value="${i+1 }"/>
	<div class="bookList" >
		<input type="hidden" id="bookCode" value="${book.bookCode }">
		<input type="hidden" id="memId" value="${sessionScope.loginInfo.memId}">
		<table>
			<tr>
				<td class="title" colspan="3"><span class="rank">${i }</span><a href="/book/bookDetail?bookCode=${book.bookCode }&memId=${sessionScope.loginInfo.memId}">${book.title }</a></td>
			</tr>
			<tr>
				<td class="img" rowspan="5"><a href="/book/bookDetail?bookCode=${book.bookCode }&memId=${sessionScope.loginInfo.memId}"><img src="/resources/images/book/${book.bkImg }"  alt="..." height="185px;" width="122px;" ></a></td>
				<td>저자</td>
				<td>${book.writer }</td>
			</tr>
			<tr>
				<td class="tit">발행처</td>
				<td colspan="2">${book.publisher }</td>
			</tr>
			<tr>
				<td class="tit">ISBN</td>
				<td colspan="2">${book.isbn }</td>
			</tr>
			<tr>
				<td class="tit">발행년도</td>
				<td colspan="2">${book.pubDate }</td>
			</tr>
			<tr>
			
				<td class="tit">키워드</td>
				<td colspan="2">${book.keyword }</td>
			</tr>
			<tr>
				<td class="location" colspan="2">*자료위치 &ensp; &emsp;${book.area }</td>
			</tr>
		</table>
	</div>
</c:forEach>
</div>
</body>
</html>