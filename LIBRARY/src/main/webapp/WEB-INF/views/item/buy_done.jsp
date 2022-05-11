<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.buyFinContainer{
	width: 80%;
	margin: 0 auto;
}
.payInfoDiv{
	margin-bottom: 70px;
}
.orderInfoDiv{
	margin-bottom: 70px;
	font-size: 15px;
}
.deliveryInfoDiv{
	margin-bottom: 20px;
}
</style>
</head>
<body>
<div class="buyFinContainer">
	<div>
		<h2>주문완료</h2>
	</div>
	<hr>
	<div class="orderInfoDiv">
		<table>
			<tr>
				<td>
					<img alt="..." src="/resources/images/common/check.png">
				</td>
				<td>
					<h2>${sessionScope.loginInfo.memName }고객님의 주문이 완료 되었습니다</h2><br>
					<br>
					주문내역 및 배송에 관한 안내는 
					<a href="/order/orderList" style="text-decoration: underline; ">
					주문조회</a> 
					를 통하여 확인 가능합니다.<br>
					<br>
					주문번호 : <span>${buyer.orderNum }</span><br>
					주문일자 : <span>${buyer.buyDate }</span>
				</td>
			</tr>
		</table>
	</div>
	<div class="payInfoDiv">
		<div>결제정보</div>
		<div>
			<table>
				<tr>
					<th>최종결제금액</th>
					<td>
						<span>
						<fmt:formatNumber value="${buyer.totalPrice }" pattern="#,###"/>
						</span>원<button onclick="location.href='/order/referOrderd?orderNum=${buyer.orderNum }';">내역보기 ></button>
					</td>
				</tr>
				<tr>
					<th>결제수단</th>
					<td> ${buyer.payCode }</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="deliveryInfoDiv">
		<div>배송지정보</div>
		<div>
			<table>
				<tr>
					<th>받으시는분</th>
					<td>${buyer.toName }</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>${buyer.toAddr }</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${buyer.toTell }</td>
				</tr>
				<tr>
					<th>배송메세지</th>
					<td>${buyer.deliMsg }</td>
				</tr>
			</table>
		</div>
	</div>
	<div>
		<button type="button" onclick="location.href='/item/itemList';">쇼핑계속하기</button>
		&nbsp; <button type="button" onclick="location.href='/order/referOrderd?orderNum=${buyer.orderNum }';">주문확인하기</button>
	</div>
	<div></div>
</div>
</body>
</html>