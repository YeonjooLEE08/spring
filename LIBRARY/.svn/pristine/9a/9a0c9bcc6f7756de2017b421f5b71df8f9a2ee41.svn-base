<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>





 
 
<a href="/book/hopeBookForm">희망도서신청</a>


<a href="/book/selectNewBook"><h3>신간도서 알림</h3></a>
	<div class="row">
		<c:forEach items="${newBookList }" var="nBook">
			<div class="col-3 text-center" style="margin-bottom: 16px;">
				<div class="card" style="width: 13rem; margin: 0 auto;">
					 <a href="/book/bookDetail?bookCode=${nBook.bookCode }&memId=${sessionScope.loginInfo.memId}">
					 	<img src="/resources/images/book/${nBook.bkImg }"  alt="..." height="170px;"  >
					 </a>
					 <div class="card-body" style="padding:0.2rem 1.2rem;">
					    <h5 class="card-title">${nBook.title }</h5>
					    <p class="card-text"></p>
					 </div>
					</div>
				</div>
		</c:forEach>
	</div>

</body>
</html>