<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.orderDetail_container{
	width: 80%;
	margin: 0 auto;
	margin-top: 30px;
}
.subDiv{
	width: 70%;
	margin: 0 auto;
	margin-top: 50px;
}
.cuverDiv{
	border-radius: 8px;
	padding: 10px;
	border: 3px solid #c7e2d1;
}
.orderdTB{
	width: 60%;
	text-align: center;
}
.orderdTB tr td{
	border-color: #16784B;
}
.table>:not(:first-child) {
    border-top: none;
}
.normalTb{
	vertical-align: middle;
	width: 100%;
	margin: 0 auto;
	text-align: left;
}
.normalTb tr th{
	font-weight: bold;
	padding-bottom: 10px;
}
.normalTb tr td{
	padding-bottom: 10px;
}
.buysubtitleDiv{
	font-size: x-large;
	font-weight: bold;
	margin-bottom: 10px;
	color: #16784B;
}
</style>
</head>
<body>
<div class="orderDetail_container">
	<div style="text-align: center;">
		<span style="font-size: xx-large; font-weight: bold; color: #16784B;">
		ORDER DETAILS</span>
	</div>
	<div class="subDiv">
		<div class="buysubtitleDiv">주문정보</div>
		<div class="cuverDiv">
			<table class="normalTb">
				<colgroup>
					<col width="13%">
					<col width="*">
				</colgroup>
				<tr>
					<th>주문정보</th>
					<td>${buyer.orderNum }</td>
				</tr>
				<tr>
					<th>주문일자</th>
					<td>${buyer.buyDate }</td>
				</tr>
				<tr>
					<th>주문자</th>
					<td>${sessionScope.loginInfo.memName }</td>
				</tr>
				<tr>
					<th>주문처리상태</th>
					<td>${buyer.itemState }</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="subDiv">
		<div class="buysubtitleDiv">주문상품</div>
		<div style="font-size: 15px; padding-left: 10px;">(총 : ${buyList.size()}개 / ${buyer.totalPrice } 원)</div>
		<div class="cuverDiv">
		<div>
			<table class="table orderdTB"  style=" border-color: #16784B; vertical-align: middle;">
			<colgroup>
				<col width="20%">
				<col width="*">
				<col width="20%">
				<col width="35%">
			</colgroup>
				<thead>
					<tr>
						<td colspan="2">상품명</td>
						<td>상품갯수</td>
						<td>총금액</td>
					</tr>
				</thead>
				<tbody class="border-top-0">
					<c:forEach items="${buyList }" var="buy">
						<tr>
							<td style="text-align: right;">
								<img alt="..." src="/resources/images/item/${buy.itemAtImgName }" 
									height="50px;" onclick="location.href='/item/itemDetail?itemCode=${buy.itemCode}';">
							</td>
							<td style="text-align: left;">
								<div style="text-align: left; padding-left: 10px;" onclick="location.href='/item/itemDetail?itemCode=${buy.itemCode}';">${buy.itemName }</div>
							</td>
							<td>
								${buy.itemCnt } 개
							</td>
							<td>
								${buy.totalPrice} 원
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		</div>
	</div>
	<div class="subDiv">
		<div class="buysubtitleDiv">결제정보</div>
		<div class="cuverDiv">
			<table class="normalTb">
				<colgroup>
					<col width="13%">
					<col width="*">
				</colgroup>
				<tr>
					<th>결제수단</th>
					<td>
						<div>${buyer.payCode }</div>
						<div>(명세서에 (주)케이지이니시스로 표기됩니다.)</div>
					</td>
				</tr>
				<tr>
					<th>총 결제금액</th>
					<td>${buyer.totalPrice } 원</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="subDiv">
		<div class="buysubtitleDiv">배송지 정보</div>
		<div class="cuverDiv">
			<table class="normalTb">
				<colgroup>
					<col width="13%">
					<col width="*">
				</colgroup>
				<tr>
					<th>받으시는 분</th>
					<td>${buyer.toName }</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>${buyer.toAddr }</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>${buyer.toTell }</td>
				</tr>
				<tr>
					<th>배송메시지</th>
					<td>${buyer.deliMsg }</td>
				</tr>
			</table>
		</div>
	</div>
	<div style="margin-top: 50px; text-align: center;">
		<button type="button" class="btn btn-success btn-s"  onclick="location.href='/order/orderList';">주문목록보기</button>
	</div>
</div>
</body>
</html>