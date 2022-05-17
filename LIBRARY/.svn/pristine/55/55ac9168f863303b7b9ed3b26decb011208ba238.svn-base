<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/member/book_planer.css" rel="stylesheet">
<link href="/resources/css/member/cssanimista.css" rel="stylesheet">
<link href="/resources/css/common/infoBar.css" rel="stylesheet">

<style type="text/css">


.btn-outline-success{
	background-color: #fff;
}

.tiptext{
	position: absolute;
    right: 51.5%;
    background-color: #E7EDE4;
    width: 24rem;
    height: 15rem;
    top: 19rem;
    z-index: 1;
    opacity: 0.9;
    font-size: 1.2rem;
    padding: 1rem;
    border-radius: 0 2rem 2rem 2rem
}
.hid{
	visibility: hidden;
}
.page-item.active .page-link {
   background-color: #198754;
   border-color: #198754;
}
.page-link {
   color: #198754;
}
</style>
</head>
<body>
<div class="container">

	<div class="subTit field">
      <div class="line_map">홈 > 마이페이지 > 북적북적</div>
      <div class="tit">
      <div class="tiptext hid"><span style="color: #427a4e;">북적북적</span>은 다양한 기능을 통해<br>독서 생활을 계획, 실행, 기록을 하는<br>공간이에요. <br>
      <br>나의 취향을 파악하고, 읽은 책들의 기록을 시각화하여 독서에 흥미를 유도하고자<br>만든 늘봄 도서관의 서비스랍니다.</div>
     	 북적북적 <span class="tip"><i class="fa-regular fa-circle-question"></i></span>
      </div>
   </div>
<div class="bookPlaner-top">
	<div class="bookPlaner-top-left">
		<div>${loginInfo.memName }님의 취향 분석!</div>
		<div>
			<span class="tracking-in-expand"></span>
			<span class="tracking-in-expand"></span>
			<span class="tracking-in-expand"></span>
		</div>
		<div>나의 완독 도서 카테고리 TOP</div>
		<div class="myTopThree-div">
			<c:forEach items="${myTopThree }" var="top" >
				<div>
					<span>${top.cateInfo.cateName }</span>
					<span> (${top.cnt }권)</span>
				</div>
			</c:forEach>
		</div>
		
		<div>
			<div>
				읽을 만한 책 랜덤 추천🍀
			</div>
			클릭하면 해당 도서 상세 페이지를 볼 수 있어요!
			<div>
				<c:forEach items="${rcdList }" var="rcd">
					<div onclick="location.href='/book/bookDetail?bookCode=${rcd.bookCode }';">🤍 ${rcd.bookInfo.title }</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="bookPlaner-top-right">
		<div class="myChartDiv">
			<canvas id="myChart"></canvas>
		</div>
	</div>
	
</div>
<div class="bookJ">
	<div>
		<span>나의 독서 기록</span>
		<div>
			<div>
				<button class="btn btn-sm btn-outline-success" onclick="window.open('/member/favChk', '내 취향', 'scrollbars=yes,resizable=no width=700 height=1000, left=0,top=0'); return false">쌓아보기</button>
			</div>
			<div>
				<button class="btn btn-sm btn-outline-success"  onclick="location.href='/member/bookPlanerForm';" >기록하기</button>
			</div>
		</div>
	</div>
	<div class="complitBookList-table">
		<table class="table table-hover table-border text-center">
			<thead>
			<tr>
				<td>완독 도서명</td>
				<td>기록일</td>
			</tr>
			</thead>
			<tbody>
			<c:choose>
				<c:when test="${empty complitBookList }">
					<tr>
						<td style="height: 126px; padding-top: 5%;">${loginInfo.memName }님의 첫 번째 완독 도서를 등록해 보세요!</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${complitBookList }" var="complitBook">
						<tr>
							<td onclick="location.href='/member/bookPlanerDetail?memId=${loginInfo.memId}&bookCode=${complitBook.bookCode }&complitCode=${complitBook.complitCode }';">
								${complitBook.bookInfo.title }</td>
							<td>${complitBook.complitDate }</td>
						</tr>
						
					</c:forEach>
				</c:otherwise>
			</c:choose>
			</tbody>
		</table>
	
	
	
	
	
	
	<div class="pageDiv">
		<nav aria-label="Page navigation example">
			<ul class="pagination pagination-sm justify-content-center">
				<li class="page-item <c:if test="${!bookComplitVO.prev }">disabled</c:if>">
				<a class="page-link" href="/member/bookPlanerDetail?nowPage=${bookComplitVO.beginPage - 1 }"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="${bookComplitVO.beginPage }" end="${bookComplitVO.endPage }" var="pageIndex">
						<li class="page-item <c:if test="${bookComplitVO.nowPage eq pageIndex }">active</c:if>"><a class="page-link" 
						href="/member/bookPlanerDetail?nowPage=${pageIndex }">${pageIndex }</a></li>
					</c:forEach>
				<li class="page-item <c:if test="${!bookComplitVO.next }">disabled</c:if>">
				      <a class="page-link" href="/member/bookPlanerDetail?nowPage=${bookComplitVO.endPage + 1 }" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				</li>
			</ul>
		</nav>
	</div>
	
	
	
	
	
	</div>
</div>
<c:forEach items="${chartList }" var="chart">
	<input class="bookCategory" type="hidden" value="${chart.cateInfo.cateName }">
	<input class="cnt" type="hidden" value="${chart.cnt }">
</c:forEach>
</div>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
<script type="text/javascript" src="/resources/js/member/book_planer.js?ver=27"></script>
</body>
</html>

