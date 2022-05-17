<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.section input[id*="slide]"{
	display: none;
}
.section .slidewrap{
	max-width:120px;
	margin: 0 auto;
	overflow: hidden;
}

.section .slidelist{
	white-space:nowrap;
	font-size: 0;
}

.section .slidelist > li {
	display: inline-block;
	vertical-align: middle;
	width: 100%;
	transition: all .5s;
}

.section .slidelist > li > a {
	display: block;
	position: relative;
}

.section .slidelist > li > a img{
	width:100%;
}

.section .slidelist label{
	position: absolute;
	z-index: 10;
	top: 50%;
	transform:translateY(-50%);
	padding: 50px;
	cursor: pointer;
}

.section .slidelist .left{
	left: 30px;
	background:url('D:\Git\spring\LIBRARY\src\main\webapp\resources\images\book\left.png') center center / 100% no-repeat;
}

.section .slidelist .right{
	right: 30px;
	background:url('D:\Git\spring\LIBRARY\src\main\webapp\resources\images\book\right.png') center center / 100% no-repeat;
}

.section [id="slide01"]:checked ~ .slidewrap > li { transform:translateX(0%);}
.section [id="slide02"]:checked ~ .slidewrap > li { transform:translateX(-100%);}
.section [id="slide03"]:checked ~ .slidewrap > li { transform:translateX(-200%);}
.section [id="slide04"]:checked ~ .slidewrap > li { transform:translateX(-300%);}

</style>
</head>

<body>
<div class="container">





 
 
<a href="/book/hopeBookInfo">희망도서 신청 안내</a>
<a href="/book/hopeBookForm">희망도서신청</a>
<a href="/book/bookListU">책리스트확인용</a>
<a href="/book/selectNewBook1">신간도서 더보기</a>
<a href="/book/selectRcdBook1">추천도서 더보기</a>
<a href="/book/selectNewBook"><h3>신간도서 알림</h3></a>
<!-- ////////// 쿼리 짜야 됨 //////////////////-->
<!-- <a href="/book/selectMostBrCnt">대출베스트</a>  -->


<c:forEach items="${newBookList }" var="nBook">
<div class="section">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02" >
	<input type="radio" name="slide" id="slide03" >
	<input type="radio" name="slide" id="slide04" >
	<input type="radio" name="slide" id="slide05" >
	<input type="radio" name="slide" id="slide06" >
	
	<div class="slidewrap">
		<ul class="slideList">
			<li>
				<c:forEach items="${newBookList }" var="nBook">
				<a>
					<label for="slide06" class="left"></label>
					<img src="/resources/images/book/${nBook.bkImg }"  alt="..." height="170px;"  >
					<label for="slide02" class="right"></label>
				</a>
				</c:forEach>
			</li>
			<%-- <li>
				<a>
					<label for="slide01" class="left"></label>
					<img src="/resources/images/book/${nBook.bkImg }"  alt="..." height="170px;"  >
					<label for="slide03" class="right"></label>
				</a>
			</li>
			<li>
				<a>
					<label for="slide02" class="left"></label>
					<img src="/resources/images/book/${nBook.bkImg }"  alt="..." height="170px;"  >
					<label for="slide04" class="right"></label>
				</a>
			</li>
			<li>
				<a>
					<label for="slide03" class="left"></label>
					<img src="/resources/images/book/${nBook.bkImg }"  alt="..." height="170px;"  >
					<label for="slide04" class="right"></label>
				</a>
			</li>
			<li>
				<a>
					<label for="slide04" class="left"></label>
					<img src="/resources/images/book/${nBook.bkImg }"  alt="..." height="170px;"  >
					<label for="slide05" class="right"></label>
				</a>
			</li>
			<li>
				<a>
					<label for="slide05" class="left"></label>
					<img src="/resources/images/book/${nBook.bkImg }"  alt="..." height="170px;"  >
					<label for="slide06" class="right"></label>
				</a>
			</li>	 --%>
		</ul>
	</div>
</div>
</c:forEach>

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