<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/book/newBookSlide.css" rel="stylesheet">
<style type="text/css">

</style>
</head>

<body>
<div class="container">

	<!-- ////////// 쿼리 짜야 됨 //////////////////-->


	<div class="slide col-4">
	<!-- 신착도서 슬라이드  -->
	<div class="goNewBookList" >
		<div class="slideTitle">추천도서</div>
		<div class="plusBtn"><i class="fa-solid fa-plus" style=" margin-right:5px;"></i><a href="/book/selectRcdBook1">더보기</a></div>
	</div>
	<div class="newBookSlide">
		 <div id="carouselExampleIndicators2" class="carousel carousel-dark slide" data-bs-ride="carousel" style="max-width: 100%; height: 100%;">
		      <div class="carousel-indicators">
		         <button type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		         <button type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide-to="1" aria-label="Slide 2"></button>
		         <button type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide-to="2" aria-label="Slide 3"></button>
		      </div>
		      <div class="carousel-inner newBookImg">
			  <c:forEach items="${bookList}" var="book" varStatus="status">
			      <div class="carousel-item <c:if test="${status.index == 0 }">active</c:if>" onclick="location.href='/book/bookDetail?bookCode=${book.bookCode }&memId=${sessionScope.loginInfo.memId}'">
			         <div class="card">
			           <div class="row">
			             <div class="text-center">
			             	<div class="img">
			             		<img src="/resources/images/book/${book.bkImg }"  alt="..."  class="img-fluid rounded-start">
			             	</div>
			             	<div class = "newBookTitle">
			             		${book.title }
			             	</div>
			               
			             </div>
			           </div>
			         </div>
			       </div>
		       </c:forEach>
		      </div>
			</div>
	</div>
	</div>





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


</div>
</body>
</html>