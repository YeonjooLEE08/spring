<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/js/club/club_list1.js"></script>
<style type="text/css">
.card {
	text-align: cen
}
.row{
	width: 800px;
	margin: 0 auto;
}
.table {
	border-spacing: 0 15px;
	border-collapse: separate;
	text-align: left;
	 --bs-table-hover-bg:#ecf7f1; 
}
.table thead tr th,
.table thead tr td{
	border-bottom-width: 1px;
}
.table tbody tr th,
.table tbody tr td {
	vertical-align: middle;
}
.table tbody tr {
	border-radius: 5px;
}
.table tbody tr td {
	background: #fff;
}
.table tbody tr td:nth-child(1) {
	border-radius: 5px 0 0 5px;
}
.table tbody tr td:nth-last-child(1) {
	border-radius: 0 5px 5px 0;
}
.table-bordered>:not(caption)>*>* {
	border-width: 0px;
}
.subDiv{
	margin-left: 100px;
}
.clubCreate{
	text-align: right;
}
.btn_area{
	position: fixed;
	bottom: 0;
}
/* .badge1 {
   position:relative;
}
.badge1[data-badge]:after {
   content:attr(data-badge);
   position:absolute;
	 top: -5px;
    left: 10px;
   font-size:.8em;
   background:red;
   color:white;
   width:18px;height:18px;
   text-align:center;
   line-height:18px;
   border-radius:70%;
   box-shadow:0 0 1px #333;
} */
.subTit {
    border-bottom: 1px solid #dddddd;
    padding: 15px 0px 15px 0px;
    margin: 0 auto; 
    margin-bottom: 20px;
}

.subTit .line_map {
    float: right;
    width: 45%;
    font-size: 12px;
    text-align: right;
}
.club-btn{
	margin-bottom: 20px;
	color: #ffa900;
	border-color: #ffa900;
}
.club-btn:hover{
	background-color: #ffa900;
	color: white;
}
.join-btn{
	background-color: #ffa900;
	color: white;
}
.card-title{
	margin-bottom: 15px;
	font-size: 18px;
	font-weight: bold;
}
.card-subtitle{
	color: #6c757d;
	font-size: 12px;
	display: inline-block;
	font-weight: normal;
}
.card-text{
	font-size: 14px;
	color: #6c757d;
	margin-bottom: 50px;
}
img{
	image-rendering: -webkit-optimize-contrast;
	width: 241px;
	height: 160px;
}
.card-footer{
	margin-top: 20px;
}
</style>
</head>
<body>


<div class="container">
		<div class="subTit" >
			<div class="line_map">홈 > 북클럽 > 북클럽 조회</div>
			  <h2>북클럽 조회</h2>
		</div>
		
		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			<button type="button" class="club-btn btn btn-sm"  onclick="createClub();" >북클럽 생성</button>
			<input type="hidden" id="memId" value="${sessionScope.loginInfo.memId }">
			<input type="hidden" id="clubAdmin" value="${sessionScope.loginInfo.clubAdmin }">
			<input type="hidden" id="clubCode" value="${sessionScope.loginInfo.clubCode }">
			<input type="hidden" id="clubApplyCode" value="${clubApplyCode }">
		</div>
		<div class="row row-cols-1 row-cols-md-3 g-4">
			<c:forEach items="${clubList }" var="club">
				<div class="col" style="margin-bottom: 20px;">
					<div class="card h-100" >
						<img class="card-img-top" src="/resources/images/club/${club.cbAtName }">
						  <div class="card-body">
							<input type="hidden" value="${clubVO.totalCnt - club.rowNum + 1 }">
						    <div class="card-title"><a href="/club/clubDetail?clubCode=${club.clubCode }">${club.clubName }</a>
						    <div class="card-subtitle" ></div></div>
						    <p class="card-text">${club.clubIntro }</p>
						  </div>
					     <div class="card-footer">
					      <small class="text-muted">첫 모임일 ${club.clubDate }</small>
					    </div>
					</div>
				</div>
			</c:forEach>
		</div>
<%-- 		<nav aria-label="Page navigation example">
			<ul class="pagination pagination-sm justify-content-center">
				<li class="page-item <c:if test="${!clubVO.prev }">disabled</c:if>">
				<a class="page-link" href="/admin/memberManage?nowPage=${clubVO.beginPage - 1 }"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach begin="${clubVO.beginPage }" end="${clubVO.endPage }" var="pageIndex">
						<li class="page-item <c:if test="${clubVO.nowPage eq pageIndex }">active</c:if>"><a class="page-link" 
						href="javascript:search(${pageIndex });">${pageIndex }</a></li>
					</c:forEach>
				<li class="page-item <c:if test="${!clubVO.next }">disabled</c:if>"><a class="page-link" href="/club/clubDetail?nowPage=${clubVO.endPage + 1 }"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav> --%>
</div>

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

</body>
</html>