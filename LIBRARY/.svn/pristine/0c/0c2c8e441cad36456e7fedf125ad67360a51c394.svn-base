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
	 	<div class="result" >
	 	</div>
			<table>
				<tr>
					<td rowspan="3"><a href="/book/bookDetail?bookCode=${search.bookCode }&memId=${sessionScope.loginInfo.memId}"><img src="/resources/images/book/${search.bkImg }"  alt="..." height="120px;" width="80px;" ></a></td>
					<td colspan="3"><a href="/book/bookDetail?bookCode=${search.bookCode }&memId=${sessionScope.loginInfo.memId}"><strong>${search.title }</strong></a></td>
				</tr>
				<tr>
					<td>저자</td>
					<td colspan="2">${search.writer }</td>
				</tr>
				<tr>
					<td>발행처</td>
					<td colspan="2">${search.publisher }</td>
				</tr>
				<tr>
					<td>발행년도</td>
					<td>${search.pubDate }</td>
					<td colspan="2">ISBN<td>
					<td>${search.isbn }<td>
				</tr>
				<tr>
					<td>키워드</td>
					<td colspan="3">${search.keyword }</td>
				</tr>
				<tr>
					<td colspan="4">*자료위치 ${search.area }</td>		
				</tr>
			
				
			
			
			</table>
		</c:forEach>
			
		<%-- <c:forEach items="${searchList } " var="search">
			<div class="span-3 text-center">
			<img src="/resources/images/book/${search.bkImg }" class="card-img-top" alt="..." height="150px;">
			<h3>${search.title }</h3>
		<table>
			<tr>
				<td>저자</td>
				<td> ${search.writer }</td>
				<td>카테코드</td>
				<td>${search.cateCode }</td>
				<td>발행년도</td>
				<td>${search.pubDate }</td>
			</tr>
			<tr>
				<td>청구기호</td>
				<td>청구기호</td>
				<td>ISBN</td>
				<td>ISBN</td>
				<td>키워드</td>
				<td>${search.keyword }</td>
			</tr>
		</table>
			<button type="button" onclick="location.href='/book/selectStatus';">${search.status } </button>
		</div>
		</c:forEach>  --%>
	</div>
</div>
</body>
</html>