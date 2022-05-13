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
.DayBoxDiv{
	border: 5px solid #F0F2F6;
	border-radius: 3px;
	margin: 0 auto;
	height: 150px;
	vertical-align: middle;
}
.StateBoxDiv{
	border: 5px solid #F0F2F6;
	border-radius: 3px;
	margin: 0 auto;
	height: 200px;
	vertical-align: middle;
}
.SalesStatusContainer{
margin: 0 auto;
margin-top: 30px;
padding: 20px;
}
canvas{
	width: 80%;
	height: 200px;
	margin: 0 auto;
}
.priceTb{
	height: 100%;
	width: 100%;
	border: none;
	vertical-align: middle;
}
.totalPriceTr{
	font-size: x-large;
	font-weight: bold;
}
.dayTd{
	text-align: left;
	padding-left: 10px;
	color: #BEC4C7;
	font-weight: bold;
}
.daytotalTd{
	text-align: right;
	padding-right: 10px;
	font-weight: bold;
}
.stateTb{
	width: 100%;
	height: 50%;
	margin: 0 auto;
	vertical-align: middle;
	border: none;
	color: black;
}
.stateTd{
	font-size: 20px;
	font-weight: bold;
	text-align: left;
	padding-left: 10px;
}
.stateCntTd, .statePriceTd{
	text-align: right;
	padding-right: 10px; 
}
input{
	vertical-align: middle;
}
</style>
<script src="/code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body>
<div class="row SalesStatusContainer">
<div class="col-12 ">
	<div style="margin: 0 auto; width: 100%; text-align: center; font-size: x-large; margin-bottom: 30px; font-weight: bold;">매출현황</div>
	<div class="row" style="margin-bottom: 20px;">
		<div class="col-3 DayBoxDiv">
			<table class="priceTb">
			<colgroup>
				<col width="50%">
				<col width="*">
			</colgroup>
				<tr class="totalPriceTr" style="color: #77D0DF;">
					<td colspan="2">
						<span style="font-size: xx-large;"><fmt:formatNumber value="${salesDay.totalPrice }" pattern="#,###"/></span> 원
					</td>
				</tr>
				<tr>
					<td class="dayTd">
						오늘			
					</td>
					<td class="daytotalTd" style="color: #77D0DF;">
						<fmt:formatNumber value="${salesDay.orderCnt }" pattern="#,###"/> 건
					</td>
				</tr>
			</table>
		</div>
		<div class="col-3 DayBoxDiv">
			<table class="priceTb">
			<colgroup>
				<col width="50%">
				<col width="*">
			</colgroup>
				<tr class="totalPriceTr" style="color: #FF7861;">
					<td colspan="2">
						<span style="font-size: xx-large;"><fmt:formatNumber value="${salesWeek.totalPrice }" pattern="#,###"/></span> 원
					</td>
				</tr>
				<tr>
					<td class="dayTd">
						이번주		
					</td>
					<td class="daytotalTd" style="color: #FF7861;">
						<fmt:formatNumber value="${salesWeek.orderCnt }" pattern="#,###"/> 건
					</td>
				</tr>
			</table>
		</div>
		<div class="col-3 DayBoxDiv">
			<table class="priceTb">
			<colgroup>
				<col width="50%">
				<col width="*">
			</colgroup>
				<tr class="totalPriceTr" style="color: #7599CC;">
					<td colspan="2">
						<span style="font-size: xx-large;"><fmt:formatNumber value="${salesMonth.totalPrice }" pattern="#,###"/></span> 원
					</td>
				</tr>
				<tr>
					<td class="dayTd">
						이번달			
					</td>
					<td class="daytotalTd" style="color: #7599CC;">
						<fmt:formatNumber value="${salesMonth.orderCnt }" pattern="#,###"/> 건
					</td>
				</tr>
			</table>
		</div>
		<div class="col-3 DayBoxDiv">
			<table class="priceTb">
			<colgroup>
				<col width="50%">
				<col width="*">
			</colgroup>
				<tr class="totalPriceTr" style="color: #8E81AC;">
					<td colspan="2">
						<span style="font-size: xx-large;"><fmt:formatNumber value="${salesYear.totalPrice}" pattern="#,###"/></span> 원
					</td>
				</tr>
				<tr>
					<td class="dayTd">
						올해			
					</td>
					<td class="daytotalTd" style="color: #8E81AC;">
						<fmt:formatNumber value="${salesYear.orderCnt}" pattern="#,###"/> 건
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="row" style="margin-bottom: 20px;">
		<div class="col-4 StateBoxDiv">
			<div class="row" style="width: 110%; height: 100%;">
				<table class="stateTb" style="border-bottom: 5px solid #F0F2F6;">
				<colgroup>
					<col width="50%">
					<col width="*">
				</colgroup>
					<tr>
						<td class="stateTd">상품준비중</td>
						<td class="stateCntTd"><span><fmt:formatNumber value="${itemPre.orderCnt}" pattern="#,###"/></span>건</td>
					</tr>
					<tr>
						<td colspan="2" class="statePriceTd"><span><fmt:formatNumber value="${itemPre.totalPrice}" pattern="#,###"/></span>원</td>
					</tr>
				</table>
				<table class="stateTb">
				<colgroup>
					<col width="50%">
					<col width="*">
				</colgroup>
					<tr>
						<td class="stateTd">배송준비중</td>
						<td class="stateCntTd"><span><fmt:formatNumber value="${deliPre.orderCnt}" pattern="#,###"/></span>건</td>
					</tr>
					<tr>
						<td colspan="2" class="statePriceTd"><span><fmt:formatNumber value="${deliPre.totalPrice}" pattern="#,###"/></span>원</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="col-4 StateBoxDiv">
			<table style="width: 100%; height: 100%; margin: 0 auto; vertical-align: middle; text-align: center; border: none; padding: 5px;">
				<tr>
					<td style="font-weight: bold; font-size: 25px;">
						결제완료
					</td>
				</tr>
				<tr style="height: 40px;">
					<td >
						<span style="font-weight: bold; font-size: 25px;"><fmt:formatNumber value="${payFin.orderCnt}" pattern="#,###"/></span>건
					</td>
				</tr>
				<tr>
					<td>
						<span style="font-weight: bold; font-size:35px;"><fmt:formatNumber value="${payFin.totalPrice}" pattern="#,###"/></span>원
					</td>
				</tr>
			</table>
		</div>
		<div class="col-4 StateBoxDiv">
				<div class="row" style="width: 110%; height: 100%;">
				<table class="stateTb" style="border-bottom: 5px solid #F0F2F6;">
				<colgroup>
					<col width="50%">
					<col width="*">
				</colgroup>
					<tr>
						<td class="stateTd">배송처리</td>
						<td class="stateCntTd"><span><fmt:formatNumber value="${deliPro.orderCnt}" pattern="#,###"/></span>건</td>
					</tr>
					<tr>
						<td colspan="2" class="statePriceTd"><span><fmt:formatNumber value="${deliPro.totalPrice}" pattern="#,###"/></span>원</td>
					</tr>
				</table>
				<table class="stateTb">
				<colgroup>
					<col width="50%">
					<col width="*">
				</colgroup>
					<tr>
						<td class="stateTd">배송완료</td>
						<td class="stateCntTd"><span><fmt:formatNumber value="${deliFin.orderCnt}" pattern="#,###"/></span>건</td>
					</tr>
					<tr>
						<td colspan="2" class="statePriceTd"><span><fmt:formatNumber value="${deliFin.totalPrice}" pattern="#,###"/></span>원</td>
					</tr>
				</table>
			</div>
			</div>
		</div>
		<div style="margin-bottom: 20px; vertical-align: middle;">
			<input type="date" id="inputSDate"> ~ <input type="date" id="inputEDate">
			<button type="button" class="btn btn-success btn-sm" onclick="searchPeriod();">조회</button>
		</div>
		<div class="row">
			<div class="col-12">
				<c:forEach items="${period }" var="peri">
					<input type="hidden" class="buyDates" value="${peri.buyDate }">
					<input type="hidden" class="totalPrices" value="${peri.totalPrice }">
				</c:forEach>
				<div class="graphBox">
					<canvas id="bar-chart"></canvas>
				</div>
			</div>
		</div>
	</div>
</div>	


<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script type="text/javascript" src="/resources/js/item/sales_status.js?ver=12"></script>
</body>
</html>