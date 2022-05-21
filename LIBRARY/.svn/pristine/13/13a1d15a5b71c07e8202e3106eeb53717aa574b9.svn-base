<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/book/searchBar.css" rel="stylesheet">
<link href="/resources/css/book/newBookSlide.css" rel="stylesheet">
<link href='${pageContext.request.contextPath}/resources/fullcalendar-5.11.0/lib/main.css' rel='stylesheet' />
<script src="/resources/fullcalendar-5.11.0/lib/main.js"></script>
<script>
//fullCalenar
document.addEventListener('DOMContentLoaded', function() {
	  var calendarEl = document.getElementById('calendar');

	  var calendar = new FullCalendar.Calendar(calendarEl, {
	    googleCalendarApiKey: 'AIzaSyD0lcip5CzP0Ytmssc6U56vXYD2uZq-Wz8',
	    eventSources: [
	    {
	          googleCalendarId: 'ko.south_korea#holiday@group.v.calendar.google.com',
	          className: '공휴일',
	          color: '#be5683', //rgb,#ffffff 등의 형식으로 할 수 있어요.
	          //textColor: 'black' 
	        }/*,
	      {
	          googleCalendarId: '여기에 구글 캘린더 ID를 붙여넣기하시면 됩니다.',
	          className: '늘봄 휴관일',
	            color: '#204051',
	            //textColor: 'black' 
	        },*/

	    ]
	  });
	  calendar.render();
	});

//쿠키설정    
function setCookie( name, value, expiredays ) {
var todayDate = new Date();
todayDate.setDate( todayDate.getDate() + expiredays );
document.cookie = name + '=' + escape( value ) + '; path=/; expires=' + todayDate.toGMTString() + ';'
}

//쿠키 불러오기
function getCookie(name) 
{ 
    var obj = name + "="; 
    var x = 0; 
    while ( x <= document.cookie.length ) 
    { 
        var y = (x+obj.length); 
        if ( document.cookie.substring( x, y ) == obj ) 
        { 
            if ((endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) 
                endOfCookie = document.cookie.length;
            return unescape( document.cookie.substring( y, endOfCookie ) ); 
        } 
        x = document.cookie.indexOf( " ", x ) + 1; 
        
        if ( x == 0 ) break; 
    } 
    return ""; 
}

//닫기 버튼 클릭시
function closeWin(key)
{
    if($("#todaycloseyn").prop("checked"))
    {
        setCookie('divpop'+key, 'Y' , 1 );
    }
    $("#divpop"+key+"").hide();
}

$(function(){    
    if(getCookie("divpop1") !="Y"){
        $("#divpop1").show();
    }
});



function delRsv(){
	
}
</script>
<style type="text/css">
.container{
	width: 100%;
	margin-left: 250px;
}
.rcdBook{
	float: left;
	width: 50%;
}
.sBar{
 position: relative;
 height: 300px;
 background: url("/resources/images/common/2016110800999_0.jpg") no-repeat 50% 0;
 background-size: cover;
 padding: 0;
 z-index:10; 
}
.testsearchBar{
	display: flex;
	justify-content: center;
	align-items: center;
    padding: 0;
    width:100%;
    height:100%;
 	background-color: #ffffff;
    background-color: rgba( 255, 255, 255, 0.5 );
    text-align: center;
    z-index:10; 
}
.realSearch{
	width: 100%;
	z-index:10; 
}
.realSearch select{
	background-color: #F8B400;
	width: 150px;
	height: 70px;
	text-align: center;
	margin-right: 0;
}
.realSearch input{
	outline: none;
	height: 70px;
	width: 700px;
	margin-left: 0;
	margin-right: 0;
}
.realSearch button{
	margin-left: 0;
	margin-right: 0;
	height: 70px;
	width: 150px;
	font-size: large;
}
.vision{
	position: absolute;
    left: 30px;
    top: 5px;
    color: #1A3C40;
    font-weight: bold;
    font-size: large;
}
.divpop {
      position: absolute; 
      z-index:999; 
      top:50px; 
      left:50px;
      width:350px;
      height:300px; 
      background-color: #fff;
      display:none;
      border: 1rem solid #F5F3CE;
      padding: 6rem 0px;
}
.title_area {
	font-weight:bold;
	text-align:center;
	width:100%
}
.button_area {
	position:absolute;
	bottom:0;
	left:10px;
} 

</style>
</head>
<body>
	<div class="sBar">
			<div class="testsearchBar">
				<div class="vision">늘 봄처럼 늘봄 같이...</div>
				<div class="realSearch">
				<form action="/book/searchBook" method="post">
				<!-- 검색구분 선택 -->
					<select name="searchSub">
						<option value="all" >전체</option>
						<option value="title">도서명</option>
						<option value="writer">저자</option>
						<option value="publisher">출판사</option>
						<option value="keyword">키워드</option>
					</select>
					<input type="text" name="searchTxt" placeholder="소장자료 검색">
					<button type="submit" class="btn btn-success btn-sm searchBtn" onclick="location.href='book/searchBook';">검 색</button>
					
				</form>
				</div>
			</div> 
		</div>
	</div>
<div class="container">
   <div class="row" style="width:150%; " >
         <div class="slide col-3" style="display: inline-block;">
         <!-- 신착도서 슬라이드  -->
            <div class="goNewBookList" >
               <div class="slideTitle">신착도서</div>
               <div class="plusBtn"><a href="/book/selectNewBook1"><i class="fa-solid fa-plus" style=" margin-right:5px;"></i>더보기</a></div>
            </div>
            <div class="newBookSlide">
                <div id="carouselExampleIndicators2" class="carousel carousel-dark slide" data-bs-ride="carousel" style="max-width: 100%; height: 100%;">
                     <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide-to="3" aria-label="Slide 4"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide-to="4" aria-label="Slide 5"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide-to="5" aria-label="Slide 6"></button>
                     </div>
                     <div class="carousel-inner newBookImg">
                    <c:forEach items="${newBookList }" var="nBook" varStatus="status">
                        <div class="carousel-item <c:if test="${status.index == 0 }">active</c:if>" onclick="location.href='/book/bookDetail?bookCode=${nBook.bookCode }&memId=${sessionScope.loginInfo.memId}'">
                           <div class="card">
                             <div class="row">
                               <div class="text-center">
                                  <div class="img">
                                     <img src="/resources/images/book/${nBook.bkImg }"  alt="..."  class="img-fluid rounded-start">
                                  </div>
                                  <div class = "newBookTitle">
                                     ${nBook.title }
                                  </div>
                                 
                               </div>
                             </div>
                           </div>
                         </div>
                      </c:forEach>
                     </div>
                  </div>
               </div>
               
               
               
               
               <div class="goNewBookList" style="width:210%; margin-top:32px;">
	               <div class="slideTitle" style="width:92%;">공지사항</div>
	               <div class="plusBtn"><i class="fa-solid fa-plus" style=" margin-right:5px;"></i><a href="/board/ntBoardList">더보기</a></div>
	            </div>
	            <div class="newBookSlide" style="width:210%; height:305px; padding:10px;">
	       	          <table class="table table-hover table-border text-center" style="padding:10px;">
	       	          		<c:forEach items="${ntBoardList }" var="ntBoardInfo" >
			               		<tr>
				               		<td width="*%"><a href="/board/ntBoardDetail?ntCode=${ntBoardInfo.ntCode }">${ntBoardInfo.ntTitle }</a></td>
		                          	<td width="15%">${ntBoardInfo.memName }</td>
		                          	<td width="15%">${ntBoardInfo.ntCreateDate}</td>
		                        </tr>
		                    </c:forEach>
		               </table>
	       
	               </div>
	       </div>
            
            
         
         
         <div class="slide col-3" style="display: inline-block;">
         <!-- 추천도서 랭킹 슬라이드  -->
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
                     <div class="carousel-inner rcdBookImg">
                    <c:forEach items="${bookList}" var="book" varStatus="status">
                    <c:set var="i" value="${i+1 }"/>
                        <div class="carousel-item <c:if test="${status.index == 0 }">active</c:if>" onclick="location.href='/book/bookDetail?bookCode=${book.bookCode }&memId=${sessionScope.loginInfo.memId}'">
                           <div class="card">
                             <div class="row">
                               <div class="text-center">
                                  <div class="img">
                                  <span class="rank"  style=" margin-left: 100px; " >
                                           <i class="fa-solid fa-medal" style="width: 100%; height: 100%; color: gold;"></i>
                                  </span>
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
<!--       <div class="row">
         <
      </div> -->
      
      <div class="cal col-5" style="display: inline-block;" >
         <div class="goNewBookList" style="margin-top:12px;" >
               <div class="slideTitle">늘봄 휴관일</div>
         </div>
            <div class="calendar" id="calendar"  >
            
            </div>
      </div>
      </div>
      
  

</div>


<c:if test="${sessionScope.loginInfo.isOd eq 'Y' }">

 <div id="divpop1" class="divpop">    
          <div class="title_area">${loginInfo.memName }님~ 연체 중인 도서가 있습니다. <br> 마이페이지의 대여 목록을 확인해 주세요!</div>
           <div class="button_area">
               <input type='checkbox' name='chkbox' id='todaycloseyn' value='Y'>오늘 하루 이 창을 열지 않음    
               <a href='#' onclick="javascript:closeWin(1);"><B>[닫기]</B></a>
           </div>
      </div>
	
</c:if>
 <c:if test="${sessionScope.loginInfo.isPwdTemp eq 'Y' }">
	<script type="text/javascript">
        if (!confirm("새로운 비밀번호로 설정해 주세요.")) {
            alert("언제든지 내 정보 상세보기에서 수정 가능합니다.");
        } 
        else {
            location.href='/member/myPageDetail';
        }
	</script>
</c:if>
<script type="text/javascript" src="/resources/js/book/rcd_book.js?ver=1"></script>
</body>
</html>