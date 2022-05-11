<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	width: 100%;
	height: 100vh;
	margin: 0 auto;
	text-align: center; 
}
table {
	width: 500px;
	border: 1px solid gray;
	border-collapse: collapse;
	margin: 0 auto;
}

tr th td{
	height: 35px;
	border: 1px solid gray;
}
tr>td{
	text-align: left;
}
img{
	height: 100px;
}

</style>
</head>
<body>
<div class="container">
	<form action="/item/updateItem" method="post" enctype="multipart/form-data">
	<input type="hidden" value="${item.itemCode }" name="itemCode">
		<div>
			<table>
			<colgroup>
				<col width="20%">
				<col width="*">
			</colgroup>
				<tr>
					<th>상품이름</th>
					<td><input type="text" name="itemName" id="itemName" value="${item.itemName }"></td>
				</tr>
				<tr>
					<th>카테고리</th>
					<td>
						<select name="cateCode" id="category">
							<c:forEach items="${cateList }"  var="cate">
								<option value="${cate.cateCode }" <c:if test="${item.cateCode eq cate.cateCode }">selected</c:if> >${cate.cateName }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th>가격</th>
					<td><input type="text" name="itemPrice" value="${item.itemPrice }" id="itemPrice"></td>
				</tr>
				<tr>
					<th>상세설명</th>
					<td>
						<textarea rows="5" cols="30" name="itemDetail">${item.itemDetail }</textarea>
					</td>
				</tr>
				<tr>
					<th>대표 이미지</th>
					<td>
						<input type="file" name="mainImg" id="mainImg">
					</td>
				</tr>
				<tr>
					<th>기타 이미지</th>
					<td>
						<input type="file" name="subImg" multiple>
					</td>
				</tr>
			</table>
			<div>
				<div>현재 이미지 상황</div>
				<c:forEach items="${item.itemImgList }" var="imgInfo">
					<img alt="..." src="/resources/images/item/${imgInfo.itemAtImgName}">
				</c:forEach>
			</div>
		<div>
			<button type="submit">상품수정</button>
			<button type="button" onclick="location.href='/item/itemDelete?itemCode=${item.itemCode}&isDelete=Y';">상품삭제</button>
		</div>
		</div>
	</form>
</div>
</body>
</html>