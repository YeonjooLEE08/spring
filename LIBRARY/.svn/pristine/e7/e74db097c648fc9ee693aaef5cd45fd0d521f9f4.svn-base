<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<div>
		<div>
			" ${keyword } "에 대한 ${itemCnt }개의 통합 검색결과입니다
		</div>
		<div>
			<form action="/item/searchItem" method="post">
	  			<input type="text" name="keyword" id="keyword">
	 			<button type="submit">검색</button>
			</form>
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
</body>
</html>