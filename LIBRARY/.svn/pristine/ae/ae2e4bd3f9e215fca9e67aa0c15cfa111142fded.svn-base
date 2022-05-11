<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<div>주문상세조회</div>
	<div class="">
		<div>주문정보</div>
		<div>
			<table>
				<tr>
					<td>주문정보</td>
					<td>${buyer.orderNum }</td>
				</tr>
				<tr>
					<td>주문일자</td>
					<td>${buyer.buyDate }</td>
				</tr>
				<tr>
					<td>주문자</td>
					<td>${sessionScope.loginInfo.memName }</td>
				</tr>
				<tr>
					<td>주문처리상태</td>
					<td>${buyer.itemState }</td>
				</tr>
			</table>
		</div>
	</div>
	<div>
		<div>주문상품</div>
		<div>(총 : ${buyList.size()}개 / ${buyer.totalPrice })</div>
		<div>
			<table>
				<c:forEach items="${buyList }" var="buy">
					<tr>
						<td>
							<img alt="..." src="/resources/images/item/${buy.itemAtImgName }" 
								height="50px;" onclick="location.href='/item/itemDetail?itemCode=${buy.itemCode}';">
						</td>
						<td>
							<div onclick="location.href='/item/itemDetail?itemCode=${buy.itemCode}';">${buy.itemName }</div>
							<div>${buy.totalPrice } | ${buy.itemCnt }개</div>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<div>
		<div>결제정보</div>
		<div>
			<table>
				<tr>
					<th>결제수단</th>
					<td>
						<div>${buyer.payCode }</div>
						<div>(명세서에 (주)케이지이니시스로 표기됩니다.)</div>
					</td>
				</tr>
				<tr>
					<th>총 결제금액</th>
					<td>${buyer.totalPrice }</td>
				</tr>
			</table>
		</div>
	</div>
	<div>
		<div>배송지 정보</div>
		<div>
			<table>
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
	<div>
		<button type="button" onclick="location.href='/order/orderList';">주문목록보기</button>
	</div>
</div>
</body>
</html>