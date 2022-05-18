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
<style type="text/css">
.orderListContainerDiv{
	margin: 0 auto;
	margin-top: 30px;
	text-align: center;
}
.searchDateDiv{
	margin-top: 30px;
	margin-bottom: 30px;
	float: right;
	margin-right: 5%;
}
.listCuverDiv{
	margin: 0 auto;
	margin-bottom: 20px;
	width: 90%;
	border: 2px solid #c7e2d1;
	border-radius: 8px;
	padding: 5px;
}

.orderListTb{
	width: 100%;
	margin: 0 auto;
}
h3{
	text-align: center;
}
input {
	vertical-align: middle;
}
</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 마이페이지 > 주문조회</div>
      <div class="tit">주문조회</div>
    </div>
	<div class="orderListContainerDiv">
	<div class="searchDateDiv">
		<form action="/order/searchOrderPeriod" method="post">
			<input type="date" name="inputSDate">
			~ <input type="date" name="inputEDate">&nbsp;<button type="submit" class="btn btn-success btn-sm">조회</button>
		</form>
		<!-- <button>오늘</button> 
					<button>어제</button> 
					<button>1주일</button> 
					<button>1개월</button>  -->
	</div>
	<div>
		<div style="width: 90%; margin: 0 auto; margin-bottom: 5px;">
			<table style="width: 100%; margin: 0 auto; text-align: center; font-size: large; color: #16784B; font-weight: bold;">
				<colgroup>
					<col width="70%">
					<col width="*">
				</colgroup>
				<tr>
					<td>주문내역</td>
					<td>주문상태</td>
				</tr>
			</table>
		</div>
		<div class="listCuverDiv">
			<table class="orderListTb">
				<c:choose>
					<c:when test="${empty buyViewList }">
						<tr>
							<td colspan="3">주문하신 상품 내역이 없습니다</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${orderList }" var="order">
								<tr>
									<td colspan="3" style="text-align: left;">
										주문번호 : ${order.orderNum }<br>
										<span style="font-size: small;">(${order.buyDate })</span>
										<input type="hidden" name="buyDate" id="buyDate" value="${order.buyDate }">
									</td>
								</tr>
								<c:forEach items="${buyViewList }" var="buy">
									<c:if test="${order.orderNum eq buy.orderNum}">
										<tr style="border-bottom: 0.5px solid #16784B;">
											<td>
												<img alt="..." src="/resources/images/item/${buy.itemAtImgName }" 
													height="50px;" onclick="location.href='/item/itemDetail?itemCode=${buy.itemCode}';">
											</td>
											<td>
												<div onclick="location.href='/item/itemDetail?itemCode=${buy.itemCode}';">${buy.itemName }</div>
												<div><fmt:formatNumber value="${buy.itemPrice }" pattern="#,###"/>원 &nbsp; | &nbsp; ${buy.itemCnt }개</div>
											</td>
											<td>
												${order.itemState }
											</td>
										</tr>
									</c:if>
								</c:forEach>
								<tr>
									<td colspan="3" style="text-align: right; padding-right: 10px; padding-top: 10px;">
										<button type="button" class="btn btn-success btn-sm" onclick="location.href='/order/referOrderd?orderNum=${order.orderNum}';">주문상세보기</button>
									</td>
								</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>	
			</table>
		</div>
	</div>
	<div>
	</div>
</div>
</div>
</body>
</html>