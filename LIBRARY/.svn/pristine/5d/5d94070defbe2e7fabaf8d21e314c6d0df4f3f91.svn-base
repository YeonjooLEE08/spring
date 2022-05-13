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
	margin-top: 30px;
}
.orderInfoTb{
	width: 100%;
	margin: 0 atuo;
	margin-bottom: 70px;
	margin-top: 40px;
	font-size: 17px;
}
.payInfoDiv{
	width: 90%;
	margin: 0 auto;
	margin-bottom: 50px;
}
.deliveryInfoDiv{
	width: 90%;
	margin: 0 auto;
	margin-bottom: 70px;
}
.buysubtitleDiv{
	font-size: x-large;
	font-weight: bold;
	margin-bottom: 10px;
	color: #16784B;
}
.tableDiv{
	border: 3px solid #c7e2d1;
	border-radius: 8px;
	padding: 10px;
}
.tableDiv tr th{
	text-align: right;
	font-weight: bold;
	vertical-align: middle;
	padding-bottom: 10px;
}
.tableDiv tr td{
	text-align: left;
	vertical-align: middle;
	padding-left: 20px;
	padding-bottom: 10px;
}
.xs{
	height: 20px;
	width: 60px;
	font-size: 11px;
	text-align: center;
	padding-top: 2px;
	padding-right: 0;
	padding-left: 0;
}
</style>
</head>
<body>
<div class="buyFinContainer">
	<div style="font-size:xx-large; text-align: center; color: #16784B; font-weight: bolder; font-size: ">
		Thanks For
	</div>
	<hr style="color: #16784B;">
	<div class="orderInfoDiv">
		<table class="orderInfoTb">
		<colgroup>
			<col width="30%">
			<col width="70%">
		</colgroup>
			<tr>
				<td style="text-align: center;">
					<img alt="..." src="/resources/images/common/check.png" width="50%">
				</td>
				<td style="padding-left: 20px;">
					<h3>" ${sessionScope.loginInfo.memName } "고객님의 주문이 완료 되었습니다</h3><br>
					<br>
					주문내역 및 배송에 관한 안내는 
					<a href="/order/orderList" style="text-decoration: underline; font-weight: bold; color: #16784B;">
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
		<div class="buysubtitleDiv">결제정보</div>
		<div class="tableDiv">
			<table>
				<tr>
					<th>최종결제금액</th>
					<td>
						<span>
						<fmt:formatNumber value="${buyer.totalPrice }" pattern="#,###"/>
						</span>원 &nbsp;<button type="button" class="btn btn-success btn-sm xs" onclick="location.href='/order/referOrderd?orderNum=${buyer.orderNum }';">내역보기 ></button>
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
		<div class="buysubtitleDiv">배송지정보</div>
		<div class="tableDiv">
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
	<div style="text-align: center; width: 100%; margin: 0 auto;">
		<button type="button" class="btn btn-success btn-sm" onclick="location.href='/item/itemList';">쇼핑계속하기</button>
		&nbsp; <button type="button" class="btn btn-success btn-sm"" onclick="location.href='/order/referOrderd?orderNum=${buyer.orderNum }';">주문확인하기</button>
	</div>
	<div></div>
</div>
</body>
</html>