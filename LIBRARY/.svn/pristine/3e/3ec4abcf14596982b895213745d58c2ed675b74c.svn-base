<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/member/menu.css" rel="stylesheet">

<style type="text/css">
input#keyword{
	background-color: inherit;
	width: 400px;
}

.searchContainer{
	margin: 0 auto;
	text-align: center;
}
.searchDiv{
   display: inline-block; 
   border: 2px solid #DDDDDD; 
   border-radius: 48px; 
   width: 550px; 
   height: 45px; 
   text-align: center;
}
.searchDiv input[type="text"]{
   width: 450px; 
   height: 40px; 
   vertical-align: middle; 
   border: none; 
   outline: 0;
}

</style>
</head>
<body>
<div class="top-container">
		<div class="header-loginBox">
			<c:choose>
				<c:when test="${not empty sessionScope.loginInfo}">
					<div class="header-loginBoxDiv" id="weather">
						<span></span>
						<span class="weatherIcon"></span>
						<span></span>
						&nbsp;&nbsp;&nbsp;책 읽기 좋은 날씨예요😊
					</div>
					<div class="header-loginBoxDiv" onclick="location.href='/member/logout';">로그아웃</div>
				</c:when>
				<c:otherwise>
					<div class="header-loginBoxDiv" onclick="location.href='/member/login';">로그인</div>
					<div class="header-loginBoxDiv" onclick="location.href='/member/join';">회원가입</div>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="header-mainBox">
			<div class="nav-logoDiv"><a href="/admin/test"><h1>양심 도서관</h1></a></div>
			
			
			<div class="searchContainer">
				<div class="searchDiv">
					<form action="/item/searchItem" method="post" id="searchForm">
				      <span>
				         <input name="keyword" id="keyword" required type="text" onkeydown="if (event.keyCode == 13) { search(); }"> 
				         <span onclick="search();" style="cursor: pointer;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
				              <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
				         </svg></span>
				      </span>
					</form>
			    </div>
			</div>
			
			
			<c:if test="${not empty sessionScope.loginInfo }">
				<c:if test="${loginInfo.isAdmin eq 'Y' }">
					<span class="adminIcon">👑</span>
				</c:if>
				<div class="header-profile">
				
				
				
				
				
				
				<nav class="nav">
			  <input type="checkbox" class="nav__cb" id="menu-cb"/>
			  <div class="nav__content">
			    <ul class="nav__items">
			      <li class="nav__item">
			        <span class="nav__item-text" onclick="location.href='/member/myPageDetail?memId=${sessionScope.loginInfo.memId}'">
			          My Page
			        </span>
			      </li>
			      <li class="nav__item">
			        <span class="nav__item-text" onclick="location.href='/cart/cartView';">
			          <i class="fa-solid fa-cart-shopping"></i>
			        </span>
			      </li>
			      <li class="nav__item">
			        <span class="nav__item-text">
			          플래너?
			        </span>
			      </li>
			      <li class="nav__item">
			        <span class="nav__item-text">
			          머넣지
			        </span>
			      </li>
			    </ul>
			  </div>
			  <span class="nav__btn" >
			  	<img src="/resources/images/member/${loginInfo.memImage }">
			  </span>
			  <label class="nav__btn" for="menu-cb"></label>
			</nav>
				
				
				
				
				
					<%-- <div><img alt="" src="/resources/images/member/${loginInfo.memImage }"></div>
					<div>
						<div>${sessionScope.loginInfo.memName}님 반가와요</div>
						<div class="header-profile-icon">
							<span title="마이페이지" onclick="location.href='/member/myPageDetail?memId=${sessionScope.loginInfo.memId}'">
								My Page</span>&nbsp;
							<span title="장바구니" onclick="location.href='/cart/cartView';">&nbsp;<i class="fa-solid fa-cart-shopping"></i>&nbsp;</span>
						</div>
					</div> --%>
				</div>
				
				
				
			</c:if>
		</div>
		<div class="nav-main-menu">
			<ul>
				<li>도서관소개</li>
				<li>
				<a href="/book/list">자료검색</a></li>
				<li>도서관이용</li>
				<li>참여마당
					<ul>
						<li><a href="/board/ntBoardList">공지사항</a></li>
						<li><a href="/otherB/freeBoard">자유게시판</a></li>
						<li><a href="/otherB/qnaBoard">Q&A</a></li>
					</ul>
				</li>
				<li>
				<a href="/item/itemList">Goods</a></li>
				<li>
				<a href="/club/clubList">독서모임</a></li>
				<c:if test="${sessionScope.loginInfo.isAdmin eq 'Y' }" > 
				<li>
					<a href="/admin/adminMenu">관리자메뉴</a>
				</li>
				</c:if>
			</ul>
		</div>
</div>
<script type="text/javascript" src="/resources/js/member/menu.js?ver=6"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>

</body>
</html>