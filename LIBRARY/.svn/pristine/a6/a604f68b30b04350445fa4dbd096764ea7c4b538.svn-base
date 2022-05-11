<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.item_Container{
	margin: 0 auto;
	text-align: center;
	margin-bottom: 100px;
	margin-top: 30px;
}
.BoardbtnDiv{
	margin-bottom: 10px;
	margin-top: 20px;
	text-align: right;
	padding-right: 10px;
	
}
.backDiv{
	text-align: left;
}
.table{
	vertical-align: middle;
}
</style>
</head>
<body>
<div class="item_Container">
	<div>
		<h2>GOODS MANAGE</h2>
	</div>
	<div class="BoardbtnDiv">
		<button type="button" class="btn btn-success btn-m" onclick="location.href='/item/insertItem';">아이템등록</button>
		<button type="button" class="btn btn-success btn-m" onclick="deleteItems();">선택삭제</button>
	</div>
	<div>
		<table class="table table-hover table-border text-center">
			<colgroup>
				<col width="10%">
				<col width="15%">
				<col width="*">
				<col width="15%">
				<col width="10%">
			</colgroup>
			<thead>
				<tr>
					<td>순</td>
					<td colspan="2">아이템이름</td>
					<td>수정</td>
					<td>체크란</td>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${itemList }" var="item">
			<c:set var="i" value="${i+1 }"></c:set>
				<tr>
					<td>${i}</td>
					<td>
						<img alt="..." src="/resources/images/item/${item.itemAtImgName }" height="50px;">
					</td>
					<td style="text-align: left; padding-left: 5px;">${item.itemName}</td>
					<td><button type="button" class="btn btn-success btn-sm" onclick="location.href='/item/updateItemForm?itemCode=${item.itemCode}';">수정</button></td>
					<td><input type="checkbox" name="dCheck" value="${item.itemCode }" class="chk">
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<script type="text/javascript" src="/resources/js/item/item_manage.js?ver=1"></script>
</body>
</html>