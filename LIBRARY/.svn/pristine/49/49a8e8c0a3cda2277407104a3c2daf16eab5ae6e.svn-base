<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.searchitem_container{
	width: 80%;
	margin: 0 auto;
	margin-top: 30px;
	text-align: center;
}
.searchContainer{
	width: 100%;
	margin: 0 auto;
}
.searchDiv{
   display: inline-block; 
   border: 2px solid #41764F; 
   border-radius: 48px; 
   width: 450px; 
   height: 45px; 
   text-align: center;
}
.searchDiv input[type="text"]{
   width: 350px; 
   height: 40px; 
   vertical-align: middle; 
   border: none; 
   outline: 0;
}
.searchResultDiv{
	font-size: large;
	text-align: center;
}
</style>
</head>
<body>
<div class="searchitem_container">
	<div>
		<div class="searchResultDiv">
			<span>" ${keyword } "</span>에 대한 <span>${itemCnt }</span>개의 통합 검색결과입니다
		</div>
		<div class="searchContainer">
			<div class="searchDiv">
				<form action="/item/searchItem" method="post" id="searchForm">
			      <span>
			         <input type="text" name="keyword" id="keyword" onkeydown="if (event.keyCode == 13) { search(); }"> 
			         <span onclick="search();" style="cursor: pointer;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
			              <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
			         </svg></span>
			      </span>
				</form>
		    </div>
		</div>
	</div>
	<div class="row itemList">
		<c:forEach items="${itemList}" var="item">
			<div class="col-3 text-center">
				<div>
					<a href="/item/itemDetail?itemCode=${item.itemCode }">
						<img alt="..." src="/resources/images/item/${item.itemAtImgName }" height="250px;">
					</a>
				</div>
				<div onclick="location.href='/item/itemDetail?itemCode=${item.itemCode}';">
					<span class="itemName" >${item.itemName }</span><br>
					<fmt:formatNumber value="${item.itemPrice }" pattern="\#,###"/>
				</div>
			</div>
		</c:forEach>
	</div>
</div>

<script type="text/javascript">
	function search(){
		document.getElementById('searchForm').submit();
	}
</script>
</body>
</html>