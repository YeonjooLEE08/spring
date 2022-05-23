<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
<link href="/resources/css/book/statusBar.css" rel="stylesheet">
<style type="text/css">
.btnDiv{

	padding-top:10px;
	text-align:right;
}
</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 관리자메뉴 > 대여 목록 조회</div>
      <div class="tit">회원 대여 목록 조회</div>
   </div>

<div class="statusBar">
	<form action="/book/selectBrStatus" method="post" id="searchBook">
	<!-- 검색구분 선택 -->
		<select name="searchSub">
			<option value="all" >전체</option>
			<option value="0">대여중</option>
			<option value="1">연체</option>
			<option value="2">반납</option>
		</select>
		<button type="submit" class="btn btn-success ">적용 </button>
	</form>
</div>

<table class="table table-hover table-border text-center">
            <colgroup>
               <col width="5%">
               <col width="15%">
               <col width="15%">
               <col width="*%">
               <col width="14%">
               <col width="14%">
               <col width="10%">
            </colgroup>
		<thead>
			<tr>
				<td scope="col">코드</td>
				<td scope="col">회원아이디</td>
				<td scope="col">제목</td>
				<td scope="col">ISBN</td>
				<td scope="col">대여일</td>
				<td scope="col">반납예정일</td>
				<td scope="col">상태</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${adminBorrow }" var="borrow">
				<tr>
					<td>${borrow.brCode }</td>
					<td>${borrow.memId }</td>
					<td><a href="/book/bookDetailAdmin?bookCode=${borrow.bookCode}">${borrow.title }</a></td>
					<td>${borrow.isbn }</td>
					<td>${borrow.brDate }</td>
					<td>${borrow.rtDate }</td>
					<td><c:choose>
						<c:when test="${borrow.status eq 0}">
							<button type="button" data-toggle="modal" onclick="showModal(this);"data-target="#returnBook" class="btn btn-success " >
								대여중
							</button>
						</c:when>
						<c:when test="${borrow.status eq 1 }" >
							<button type="button" data-toggle="modal" onclick="showModalOD(this);" data-target="#returnOverdue" class="btn text-white" style="background-color: #CC0000;" >
								연체
							</button>
						</c:when>
						<c:otherwise>반납완료</c:otherwise>	
					</c:choose></td>
 				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div id="member">
		<input type="hidden" id="limitDate" name="limitDate" value="${member.limitDate }"/>

	</div>
	<div class="btnDiv">
		<button type="button" class="btn btn-success justify-content-md-end" onclick="location.href='/book/selectBrList';">회원 전체 대여 목록</button>
	</div>
</div>

<!-- 정상 반납 Modal -->
<div class="modal fade" id="returnBook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<form action="/book/returnBook" id="rtBook">
		  <!-- !!!!!!!!!!!!!!!! 모달로 위의 값 꼭 받아오기 !!!!!!!!!! -->
		  <input type="hidden"  id="originIsbn" value="">
		  <input type="hidden"  id="originBrCode" value="">
		  <input type="hidden"  id="originMemId" value="">
		  <input type="hidden"  id="originIsbn" value="">

		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-body">
		      
						반납하시겠습니까?
		      </div>
		        <button type="button" class="btn btn-default" id="closeModalBtn" data-dismiss="modal">닫기</button>
		        <button type="button" class="btn btn-primary" onclick="returnBook();">반납</button>
		    </div>
		  </div>
  </form>
 </div>

<!-- 연체 반납 Modal -->
<div class="modal fade" id="returnOverdue" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <!-- !!!!!!!!!!!!!!!! 모달로 위의 값 꼭 받아오기 !!!!!!!!!! -->
  <form action="/book/returnOverdue" id="rtOverdue">
	  <input type="hidden"  id="originIsbn" 	value="">
	  <input type="hidden"  id="originBrCode" 	value="">
	  <input type="hidden"  id="originMemId" 	value="">
	  <input type="hidden"	id="originRtDate" 	value="">
	  <input type="hidden"  id="originIsbn" 	value="">
	  <input type="hidden"  id="originLimitDate" value="">
	  
	  
	  <input type="hidden" id="brCode" name="brCode">
	  <input type="hidden" id="isbn" name="isbn">
	  <input type="hidden" id="memId" name="memId">
	  <input type="hidden" id="limitDate" name="limitDate">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-body">
	      
					반납하시겠습니까?
	      </div>
	        <button type="button" class="btn btn-default" id="closeModalBtnOD" data-dismiss="modal">닫기</button>
	        <button type="button" class="btn btn-primary" onclick="returnOverdue();">반납</button>
	    </div>
	  </div>
 	</form> 
 </div>	

<script type="text/javascript" src="/resources/js/book/admin_returnBook.js?ver=36"></script>
<script type="text/javascript" src="/resources/js/book/admin_returnOverdue.js?ver=28"></script>
</body>
</html>