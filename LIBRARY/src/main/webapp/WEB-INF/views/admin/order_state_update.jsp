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
.stateUpdateTb{
	border: 1px solid #243D25;
	border-collapse: collapse;
	margin: 0 auto;
}
.stateUpdateTb tr th td{
	border: 1px solid #243D25;
}

.stateManageTb{
	border: 1px solid #243D25;
	border-collapse: collapse;
	margin: 0 auto;
}
.stateManageTb tr td{
	border: 1px solid #243D25;
}
.orderStateUDcontainer{
	width: 100%;
	margin: 0 auto;
	text-align: center;
}
.itemStateSpan{
	background-color: #26465C;
	color: white;
	border: 2px solid white;
	cursor: pointer;
}


</style>
</head>
<body>
<div class="orderStateUDcontainer">
	<div>굿즈 주문 리스트</div>
	<div>
		<table class="stateManageTb">
			<tr>
				<th>진행상태</th>
				<td>
					<span class="itemStateSpan" onclick="location.href='/sales/orderStateManage';">전체</span>
					<span class="itemStateSpan" onclick="searchKindState(this);">결제완료</span>
				    <span class="itemStateSpan" onclick="searchKindState(this);">상품준비중</span>
					<span class="itemStateSpan" onclick="searchKindState(this);">배송준비중</span>
					<span class="itemStateSpan" onclick="searchKindState(this);">배송처리</span>
					<span class="itemStateSpan" onclick="searchKindState(this);">배송완료</span>
				</td>
			</tr>
			<tr>
				<th>기간</th>
				<td>
					<form action="/sales/searchStatePeriod" method="post">
						<input type="date" name="inputSDate"> ~
						<input type="date" name="inputEDate">
						&nbsp;<button type="submit">조회</button>
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
					<form action="/sales/searchOrderState" method="post">
						<select name="sort">
							<option value="MEM_NAME">주문자명</option>
							<option value="ORDER_NUM">주문번호</option>
						</select>
						<input type="text" name="keyword"> <button type="submit">검색</button>
					</form>
				</td>
			</tr>
		</table>
	</div>
	<div>총 주문수 : </div>
	<div>
		<table class="stateUpdateTb"">
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
						<td>
							<form action="/sales/updateItemState" method="post" id="updateItemState">
								<input type="hidden" name="orderNum" value="${sales.orderNum }">
								<select name="itemState">
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
						<td>
							<button type="button" onclick="updateItemState(this);">적용</button>
							<!-- <button>상세보기</button> -->
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
		<button onclick="deleteOrders();">선택삭제</button>
		<button data-bs-target="#updateItemsModal" data-bs-toggle="modal" >상태일괄변경</button>
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
		        	<button type="button" class="btn btn-primary" onclick="updateItemsStates();">주문상태 변경</button>
	        	</div>
	        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="/resources/js/item/order_state_update.js?ver=7"></script>
</body>
</html>