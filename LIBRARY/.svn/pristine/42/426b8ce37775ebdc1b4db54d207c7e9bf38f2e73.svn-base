<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.table{
	font-size: 15px;
	vertical-align: middle;
}
.searchStateTb{
	border: 1px solid black;
	width: 100%;
}
.searchStateTb tr td{
	text-align: left;
	padding-left: 10px;
}
.searchStateDiv{
	margin: 0 auto;
	width: 90%;
}

.orderStateUDcontainer{
	width: 100%;
	margin-top: 30px;
	text-align: center;
}
.itemStateSpan{
	color: #4A8559;
	cursor: pointer;
	font-weight: bolder;
}
.btn-sm{
	font-size: smaller;
}
.OrdertotalCntDiv{
	margin-top: 30px;
	text-align: left;
}
.stateTd{
	word-spacing: 7px;
}
.img-button{
	border: none;
	background: transparent;
	font-size: 1.125rem;
}
.fas{
	color: black;
}
.keyword{
	border: none;
	border-bottom: 1px solid black;
	outline: none;
	background: transparent;
	width: 300px;
	color: black;
	font-size: 1.063rem;
	font-style: "Malgun Gothic";
}
.SelectSearch{
	border: none;
	outline: none;
	width: 90px;
	font-size: medium;
	font-weight: 200;
	background: transparent;
	color: black;
}
.table>:not(:first-child) {
    border-top: none;
}
</style>
</head>
<body>
<div class="container">
<div class="orderStateUDcontainer">
	<div style="margin-bottom: 30px; text-align: left;">
		<h4>상품 주문 내역</h4>
	</div>
	<div class="row searchStateDiv">
		<div class="col-12">
			<table class="table searchStateTb">
			<colgroup>
				<col width="20%">
				<col width="80%">
			</colgroup>
				<tr>
					<th>진행상태</th>
					<td class="stateTd">
						<span class="itemStateSpan" onclick="location.href='/sales/orderStateManage';">전체</span>&nbsp;
						<span class="itemStateSpan" onclick="searchKindState(this);">결제완료</span>&nbsp;
					    <span class="itemStateSpan" onclick="searchKindState(this);">상품준비중</span>&nbsp;
						<span class="itemStateSpan" onclick="searchKindState(this);">배송준비중</span>&nbsp;
						<span class="itemStateSpan" onclick="searchKindState(this);">배송처리</span>&nbsp;
						<span class="itemStateSpan" onclick="searchKindState(this);">배송완료</span>
					</td>
				</tr>
				<tr>
					<th>기간</th>
					<td>
						<form action="/sales/searchStatePeriod" method="post">
							<input type="date" name="inputSDate"> ~
							<input type="date" name="inputEDate">
							&nbsp;<button type="submit" class="btn btn-success btn-sm" >조회</button>
						</form>
						<!-- <button>오늘</button> 
						<button>어제</button> 
						<button>1주일</button> 
						<button>1개월</button>  -->
					</td>
				</tr>
				<tr>
					<th>조건검색</th>
					<td>
						<div class="searchQnaDiv">
							<form action="/sales/searchOrderState" method="post">
								<select class="SelectSearch" name="sort">
									<option value="MEM_NAME">주문자명</option>
									<option value="ORDER_NUM">주문번호</option>
								</select>
								<input class="keyword" type="text" name="keyword" maxlength="255" autocomplete="off">
								<button class="img-button" type="submit" name="click">
									<i class="fas fa-search"></i>
								</button>
							</form>		
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="OrdertotalCntDiv"></div>
	<div>
		<table class="table table-hover table-border text-center">
			<colgroup>
				<col width="5%">
				<col width="17%">
				<col width="13%">
				<col width="12%">
				<col width="14%">
				<col width="13%">
				<col width="10%">
				<col width="*%">
			</colgroup>
			<thead>
				<tr>
					<td>
						<input type="checkbox" id="chk" onclick="Allcheck();">
					</td>
					<td>주문일</td>
					<td>주문번호</td>
					<td>주문자명</td>
					<td>주문방법</td>
					<td>주문금액</td>
					<td colspan="2">주문상태</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${salesList }" var="sales">
					<tr>
						<td>
							<input type="checkbox" class="chk" value="${sales.orderNum }">
						</td>
						<td>${sales.buyDate }</td>
						<td>${sales.orderNum }</td>
						<td>${sales.memName }</td>
						<td>${sales.payCode }</td>
						<td>
							<fmt:formatNumber value="${sales.totalPrice }" pattern="#,###"/>원
						</td>
						<td style="padding: 0; vertical-align: middle; margin: 0 auto; text-align: center;">
							<form action="/sales/updateItemState" method="post" id="updateItemState">
								<input type="hidden" name="orderNum" value="${sales.orderNum }">
								<select name="itemState" style="width: 100%;">
									<option value="결제완료"
										<c:if test="${sales.itemState eq '결제완료' }">selected</c:if>>결제완료</option>
									<option value="상품준비중"
										<c:if test="${sales.itemState eq '상품준비중' }">selected</c:if>>상품준비중</option>
									<option value="배송준비중"
										<c:if test="${sales.itemState eq '배송준비중' }">selected</c:if>>배송준비중</option>
									<option value="배송처리"
										<c:if test="${sales.itemState eq '배송처리' }">selected</c:if>>배송처리</option>
									<option value="배송완료"
										<c:if test="${sales.itemState eq '배송완료' }">selected</c:if>>배송완료</option>
								</select>
							</form>
						</td>
						<td style="padding: 0; vertical-align: middle; margin: 0 auto; text-align: center;">
							<button type="button" class="btn btn-success btn-sm"  onclick="updateItemState(this);">적용</button>
							<!-- <button>상세보기</button> -->
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<button type="button" class="btn btn-success btn-m" onclick="deleteOrders();">선택삭제</button>
		<button type="button" class="btn btn-success btn-m"  data-bs-target="#updateItemsModal" data-bs-toggle="modal" >상태일괄변경</button>
	</div>
</div>
</div>





<!-- 선택상태일괄변경 모달창 -->
<div class="modal fade" id="updateItemsModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
	        <div class="row">
	        	<div class="mb-3">
	        		변경하실 주문상태 : 
	        		<select id="itemState">
						<option value="결제완료">결제완료</option>
						<option value="상품준비중">상품준비중</option>
						<option value="배송준비중">배송준비중</option>
						<option value="배송처리">배송처리</option>
						<option value="배송완료">배송완료</option>
					</select>
	        	</div>
	        </div>
	        <div class="row">
	        	<div class="col d-grid gap-2">
		        	<button type="button" class="btn btn-success btn-m" onclick="updateItemsStates();">주문상태 변경</button>
	        	</div>
	        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="/resources/js/item/order_state_update.js?ver=7"></script>
</body>
</html>