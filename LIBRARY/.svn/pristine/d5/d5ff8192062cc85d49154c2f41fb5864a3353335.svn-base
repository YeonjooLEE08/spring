<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	width: 800px;
	margin: 0 auto;
	text-align: center;
	margin-bottom: 100px;
}
.btnDiv{
	margin-bottom: 20px;
	text-align: right;
}
.backDiv{
	text-align: left;
}
table {
	width: 800px;
	margin: 0 auto;
	border-top: 2px solid gray;
}
thead tr td{
	border-bottom: 2px solid gray;
}
tr td{
	border-bottom: 1px solid gray;
}
</style>
</head>
<body>
<div class="container">
	<div class="backDiv">
		<a href="/item/itemList">HOME</a> / ITEM MANAGE
	</div>
	<div>
		<h2>GOODS MANAGE</h2>
	</div>
	<div class="btnDiv">
		<button type="button" onclick="location.href='/item/insertItem';">아이템등록</button>
		<button type="button" onclick="deleteItems();">선택삭제</button>
	</div>
	<div>
		<table>
		<colgroup>
			<col width="7%">
			<col width="25%">
			<col width="*">
			<col width="15%">
			<col width="8%">
		</colgroup>
			<thead>
				<tr>
					<td>순</td>
					<td>메인사진</td>
					<td>아이템이름</td>
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
					<td>${item.itemName}</td>
					<td><button type="button" onclick="location.href='/item/updateItemForm?itemCode=${item.itemCode}';">수정</button></td>
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