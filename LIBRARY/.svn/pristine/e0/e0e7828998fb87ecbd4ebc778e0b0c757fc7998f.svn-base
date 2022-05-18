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

.row{
    width: 100%;
}
</style>
</head>
<body>
<div class="top-container">
	<div class="header-loginBox">
	<div class="header-weatherBox">
		<div class="header-loginBoxDiv" id="weather">
			<span></span>
			<span class="weatherIcon"></span>
			<span></span>
			&nbsp;&nbsp;&nbsp;책 읽기 좋은 날씨예요😊
		</div>
	</div>
	<c:if test="${empty sessionScope.loginInfo}">
	<div class="header-loginBoxDiv">
		<div class="header-loginBoxDiv header-loginBoxDiv-div" onclick="location.href='/member/login';">로그인</div>
		<div class="header-loginBoxDiv header-loginBoxDiv-div" onclick="location.href='/member/join';">회원가입</div>
	</div>
	</c:if>
	</div>		
		
	<div class="header-mainBox">
		<div class="nav-logoDiv"><a href="/admin/test"><h1>늘봄 도서관</h1></a></div>
		
		<c:if test="${not empty sessionScope.loginInfo }">
		<div class="header-profile">
			<nav class="header-nav">
			  <input type="checkbox" class="nav__cb" id="menu-cb"/>
			  <div class="nav__content">
			    <ul class="nav__items">
			      <li class="nav__item">
			        <span class="nav__item-text" onclick="location.href='/member/myPageDetail?memId=${sessionScope.loginInfo.memId}'">
			          My Page
			        </span>
			      </li>
			      <li class="nav__item">
			        <span class="nav__item-text" onclick="location.href='/cart/cartView';" title="장바구니">
			          <i class="fa-solid fa-cart-shopping"></i>
			        </span>
			      </li>
			      <li class="nav__item">
			        <span class="nav__item-text">
				         <span type="button" class="badge1" data-badge="${sessionScope.loginInfo.msgCnt }" id="msgList" onclick="msgList('${sessionScope.loginInfo.memId }');" >
							<svg data-badge="6" xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
				  				<path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
							</svg>
						</span>
			        </span>
			      </li>
			      <li class="nav__item">
			        <span class="nav__item-text" onclick="location.href='/member/logout';" title="로그아웃">
			          <i class="fa-solid fa-arrow-right-from-bracket"></i>
			        </span>
			      </li>
			    </ul>
			  </div>
			  <span class="nav__btn" >
			  	<img src="/resources/images/member/${loginInfo.memImage }">
			  </span>
			  <label class="nav__btn" for="menu-cb"></label>
			</nav>
		</div>
		</c:if>
	</div>
	<nav>
	</nav>
	<nav role="navigation" id="nav-main">
			<ul id="main-menu">
				<li><a href="/admin/libraryInfo">도서관소개</a>
					<ul id="sub-menu">
						<li ><a href="/admin/libraryInfo">인삿말</a></li>
						<li ><a href="/admin/libraryHistory">연혁</a></li>
						<li ><a href="/admin/libraryLocation">찾아오시는길</a></li>
					</ul>
				</li>
				<li><a href="/book/bookListU">자료검색</a>
					<ul id="sub-menu">
						<li ><a href="/book/hopeBookInfo">희망도서 신청</a></li>
						<li ><a href="/book/selectNewBook1">신착도서</a></li>
						<li ><a href="/book/selectRcdBook1">추천도서</a></li>
						<li ><a href="/book/bookListU">자료검색</a></li>
					</ul>
				</li>
				<li ><a href="/board/ntBoardList">참여마당</a>
					<ul id="sub-menu">
						<li ><a href="/board/ntBoardList">공지사항</a></li>
						<li ><a href="/otherB/freeBoard">자유게시판</a></li>
						<li ><a href="/otherB/qnaBoard">Q&A</a></li>
					</ul>
				</li>
				<li>
					<a href="/item/itemList">Goods</a>
				</li>
				<li >
					<a href="/club/clubList">북클럽</a>
					<ul id="sub-menu">
						<li><a href="/club/clubInfo">북클럽 이용</a></li>
						<li ><a href="/club/clubList">북클럽 조회</a></li>
					</ul>
				</li>
				<c:if test="${sessionScope.loginInfo.isAdmin eq 'Y' }" > 
					<li>
						<a href="/admin/adminMenu">관리자메뉴</a>
					</li>
				</c:if>
			</ul>
	</nav>
<nav class="toRead-nav">
  <div class="menu-btn">
  	TO<br>READ<br>LIST
  </div>
  <div class="nav-links">
  <div class="bookPlaner-div">
		<span>독서 계획 & 메모</span>
		<form action="" id="toread-form">
			<input type="text" required>
			<ul id="toread-list">
			</ul>
			<input type="hidden" name="memId" value="${loginInfo.memId }">
		</form>
	</div>
  </div>
</nav>

<!-- 알림창 Modal -->
<div class="modal" id="msgModal" aria-hidden="true" aria-labelledby="msgModalLabel" tabindex="-1" style="height: 500px;">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="msgModalLabel">알림함</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="msgDetail">
        	<table id="msgModalTable" class="table text-center table-hover table-bordered" style="table-layout: fixed; ">
	     		<colgroup>
	     			<col width="*">
	     			<col width="35%">
	     			<thead>
	     				<tr>
	     					<th scope="col">내용</th>
	     					<th scope="col">전송날짜</th>
	     				</tr>
	     			</thead>
	     			<tbody>
	     			</tbody>
	     	</table>
      	</div>
      <div class="modal-footer">
       <button type="button" class="btn btn-success" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>


<!-- 알림상세조회모달 -->
<div class="modal fade" tabindex="-1" id="msgDetailModal">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="msg-detail">
      	<table class="table text-left">
			    <tr>
			      <th scope="col">보낸사람</th>
			      <td id="getId">관리자</td>
			      <th scope="col">전송날짜</th>
			      <td id="sendDate"></td>
			    </tr>
			    <tr>
			      <th scope="row">내용</th>
			      <td id="msgContent" colspan="4" style="word-break: break-all"></td>
			    </tr>
			</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success btn-sm" id="openMsgList">목록</button>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript" src="/resources/js/member/menu.js?ver=6"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>

</body>
</html>