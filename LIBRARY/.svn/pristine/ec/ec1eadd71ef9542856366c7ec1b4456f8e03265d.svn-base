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

</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 관리자메뉴 > 대여 목록 조회</div>
      <div class="tit">대여 목록 조회</div>
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
               <col width="7%">
               <col width="*">
               <col width="15%">
               <col width="13%">
               <col width="11%">
               <col width="11%">
               <col width="11%">
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
					<td>${borrow.title }</td>
					<td>${borrow.isbn }</td>
					<td>${borrow.brDate }</td>
					<td>${borrow.rtDate }</td>
					<td><c:choose>
						<c:when test="${borrow.status eq 0}">대여중</c:when>
						<c:when test="${borrow.status eq 1 }">연체</c:when>
						<c:otherwise>반납완료</c:otherwise>	
					</c:choose></td>
 				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button type="button" data-toggle="modal"  data-target="#selectBorrow" id="openModalBtn" class="btn btn-success" >
		회원 대여 정보
	</button>
</div>
<!-- Modal -->
<div class="modal fade" id="selectBorrow" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
     
      <div class="modal-header">
        <h5 class="modal-title" id="myModalLabel">대여 입력 정보 </h5>
      </div>
      <div class="modal-body">
      	<table>
      		<tr>
      			<!-- 폼 입력해주기  -->
      				<td>아이디 </td>
      				<td><input type="text" id="memId" ></td>
			      			
			      		</tr>
			      	</table>
			          
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" id="closeModalBtn" data-dismiss="modal">닫기</button>
			        <button type="button" class="btn btn-success" onclick="selectBrMember();">조회</button>
			      </div>
     		
    </div>
  </div>
 </div>
	

<script type="text/javascript" src="/resources/js/book/admin_brList.js?ver=10"></script>
</body>
</html>