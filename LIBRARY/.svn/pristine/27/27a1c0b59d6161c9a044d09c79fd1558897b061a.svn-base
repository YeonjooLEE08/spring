<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.itemD_container{
	width: 80%;
	margin: 0 auto;
	margin-top: 30px;
}
.itemDiv{
	height: 500px;
}
.freeMark{
	height: 10px;
	font-size: x-small;
	width: 40px;
	color: blue;
	margin-bottom: 8px;
}
.itemNameDiv{
	font-size: x-large;
	font-weight: bold;
	letter-spacing: 3px;
	word-spacing: 3px;
}
.itemInfoTb{
	margin-top: 40px;
	margin-bottom: 20px;
	width: 400px;
}
.itemInfoTb tr th{
 text-align: right;
 padding-right: 30px;
}
.itemInfoTb tr td{
 text-align: right;
}
.button{
	align-items: center;
	bottom: 50px;
	margin-top: 50px;
}
.detailDiv{
	width: 90%;
	margin: 0 auto;
	text-align: center;
}
.imgDiv{
	margin: 0 auto;
}

.itemdpDiv{
	margin-bottom: 100px;
	margin-top: 30px;
}

</style>
</head>
<body>

<div class="row itemD_container">
	<div class="col-12" style="margin-top: 30px;">
		&nbsp; <a href="/item/itemList">home</a>/
		<c:forEach items="${cateList }" var="cate">		
			<c:if test="${item.cateCode eq cate.cateCode }">
				<a>${cate.cateName }</a><br><br>
			</c:if>
		</c:forEach>
		<div class="row itemdpDiv">
		
		<input type="hidden" name="itemCode" value="${item.itemCode }">
			<div class="col-6 imgDiv">
				<c:forEach items="${item.itemImgList }" var="img">
					<c:if test="${img.isMain eq 'Y' }">
						<img alt="..." src="/resources/images/item/${img.itemAtImgName }" width="95%">
					</c:if>
				</c:forEach>	
			</div>
			<div class="col-6 itemDiv">
				<div class="freeMark">무료배송</div>
				<div class="itemNameDiv">${item.itemName}</div>
				<hr>
				<div>
					<table class="itemInfoTb">
					<colgroup>
						<col width="30%">
						<col width="*">
					</colgroup>
						<tr>
							<th>판매가</th>
							<td><div id="itemPrice">
								<span id="priceSpan" data-price="${item.itemPrice }" data-name="java">
									<fmt:formatNumber value="${item.itemPrice }" pattern="\#,###"/>
								</span>
							</div></td>
						</tr>
						<tr>
							<th>상품수량</th>
							<td><div>
								<input id="ea" type="number" value="1" min="1" max="10" name="itemCnt" style="width: 60px;">
							</div></td>
						</tr>
						<tr>
							<th>배송비</th>
							<td>무료배송</td>
						</tr>
					</table>
				</div>
				<hr>
				<div>
					총 상품금액 : 
					<span id="totalPriceSpan">${item.itemPrice } 원</span>
				</div>
				<div class="button">
					<div onclick="buy('${sessionScope.loginInfo.memId}', '${item.itemCode }');">BUY NOW</div>
					<div onclick="goCart('${sessionScope.loginInfo.memId}', '${item.itemCode }');">ADD TO CART</div>
				</div>
			</div>
		</div>
		<div class="row detailDiv">
			<div class="col-12">
				<div class="row" style="margin-bottom: 20px;">
					<pre>${item.itemDetail }</pre>
				</div>
				<div class="row">
					<c:forEach items="${item.itemImgList }" var="img">
						<c:if test="${img.isMain eq 'N' }">
							<img alt="..." src="/resources/images/item/${img.itemAtImgName }" height="600px;"><br>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/js/item/item_details.js?ver=30"></script>
</body>
</html>