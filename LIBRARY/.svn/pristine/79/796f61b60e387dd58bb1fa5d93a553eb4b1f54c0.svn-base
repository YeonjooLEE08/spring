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
.cart_container{
	margin: 0 auto;
	margin-top: 30px;
	width: 80%;
}
.table{
	vertical-align: middle;
}
thead{
	font-weight: bold;
}
.priceDiv{
	width: 100%;
	margin: 0 auto;
	margin-top: 20px;
}
.priceTb{
	margin-left: 70%;
}
h3{
	text-align: center;
}
.buyBtn{
	float: right;
}
input[type="number"]{
	width: 80px;
	text-align: center;
}
.checks {
	position: relative;
	vertical-align: middle;
}
.checks input[type="checkbox"] {  /* 실제 체크박스는 화면에서 숨김 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0
}
.checks input[type="checkbox"] + label {
  display: inline-block;
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
}
.checks input[type="checkbox"] + label:before {  /* 가짜 체크박스 */
  content: ' ';
  display: inline-block;
  width: 15px;  /* 체크박스의 너비를 지정 */
  height: 15px;  /* 체크박스의 높이를 지정 */
  line-height: 15px; /* 세로정렬을 위해 높이값과 일치 */
  margin: -2px 8px 0 0;
  text-align: center; 
  vertical-align: middle;
  background: #fafafa;
  border: 1px solid #16784B;;
  border-radius : 3px;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}
.checks input[type="checkbox"] + label:active:before,
.checks input[type="checkbox"]:checked + label:active:before {
  box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
}

.checks.etrans input[type="checkbox"] + label {
  padding-left: 30px;
}
.checks.etrans input[type="checkbox"] + label:before {
  position: absolute;
  left: 0;
  top: 0;
  margin-top: 0;
  opacity: .6;
  box-shadow: none;
  border-color: #16784B;;
  -webkit-transition: all .12s, border-color .08s;
  transition: all .12s, border-color .08s;
}
.checks.etrans input[type="checkbox"]:checked + label:before {
  position: absolute;
  content: "";
  width: 10px;
  top: -5px;
  left: 5px;
  border-radius: 0;
  opacity:1; 
  background: transparent;
  border-color:transparent #6cc0e5 #6cc0e5 transparent;
  border-top-color:transparent;
  border-left-color:transparent;
  -ms-transform:rotate(45deg);
  -webkit-transform:rotate(45deg);
  transform:rotate(45deg);
}
.no-csstransforms .checks.etrans input[type="checkbox"]:checked + label:before {
  /*content:"\2713";*/
  content: "\2714";
  top: 0;
  left: 0;
  width: 21px;
  line-height: 21px;
  color: #16784B;;
  text-align: center;
  border: 1px solid #16784B;;
}

</style>
</head>
<body>
<div class="cart_container">
	<h3>장바구니</h3>
	<div style="vertical-align: middle;">
		<div class="checks etrans">
			<input type="checkbox" id="chk" onclick="Allcheck();" checked>
		  	<label for="chk">전체선택</label> 
		</div>
	</div>
	<div>
		<table class="table table-border text-center">
			<colgroup>
				<col width="10%">
				<col width="10%">
				<col width="*%">
				<col width="15%">
				<col width="15%">
				<col width="15%">
				<col width="10%">
			</colgroup>
			<thead>
				<tr>
					<td colspan="3">상품명</td>
					<td>가격</td>
					<td>수량</td>
					<td>합계</td>
					<td>삭제</td>
				</tr>
			</thead>
			<tbody>
			<c:choose>
				<c:when test="${not empty cartList }">
					<c:forEach items="${cartList }" var="cart">
						<tr>
							<th style="text-align: left;">
								<div class="checks etrans">
									<input type="checkbox" class="chk" id="chk2" value="${cart.itemCode }" checked>
								  	<label for="chk2"></label> 
								</div>
							</th>
							<td><span>
								<img alt="..." src="/resources/images/item/${cart.itemAtImgName}" height="100px">
							</span></td>
							<td style="text-align: left; padding-left: 20px;"><span >
								${cart.itemName }
							</span></td>
							<td><div>
								<fmt:formatNumber value="${cart.itemPrice }" pattern="\#,###"/>
							</div></td>
							<td>
								<div style="margin-bottom: 8px;">
									<input type="number" value="${cart.itemCnt }" id="itemCnt" max="10">
								</div>
								<div>
									<button type="button" class="btn btn-success btn-m" style="height: 30px; width: 80px; padding-top: 2px;" onclick="turnCnt(this, '${cart.itemCode}', ${cart.itemPrice });">수정</button>
								</div>
							</td>
							<td class="totalPriceTd">
								<fmt:formatNumber value="${cart.totalPrice }" pattern="\#,###"/>
							</td>
							<td><span>
								<button type="button" class="btn btn-success btn-m" style="width: 80px;" onclick="deleteCart(this,'${cart.itemCode}');">삭제</button>
							</span></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="7"><div>장바구니에 담긴 상품이 없습니다</div></td>
					</tr>
				</c:otherwise>
			</c:choose>
			</tbody>
		</table>
	</div>
	<div class="priceDiv">
		<table class="priceTb">
			<tr>
				<td>총구매금액</td>
				<td>
					<div id="buyPriceDiv">
						<fmt:formatNumber value="${totalPrice }" pattern="\#,###"/>
					</div>
				</td>
			</tr>
			<tr>
				<td>배송료</td>
				<td><span>\ 0</span></td>
			</tr>
			<tr>
				<td>결재예정금액</td>
				<td>
					<div id="buytotalPriceDiv">
						<fmt:formatNumber value="${totalPrice }" pattern="\#,###"/>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<hr>
	<div>
		<span>
			<button type="button" class="btn btn-success btn-m" onclick="deleteCarts();">선택삭제</button>
			<button type="button" class="btn btn-success btn-m" onclick="location.href='/cart/deleteAllCart';">장바구니비우기</button>
		</span>
		<span class="buyBtn">
			<button type="button" class="btn btn-success btn-m" onclick="location.href='/item/itemList';">쇼핑하기</button>
			<button type="button" class="btn btn-success btn-m" onclick="buy();">주문하기</button>
		</span>
	</div>
</div>
<script type="text/javascript" src="/resources/js/item/cart.js?var=15"></script>
</body>
</html>