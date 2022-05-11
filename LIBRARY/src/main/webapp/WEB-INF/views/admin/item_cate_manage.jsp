<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.itemCate_container{
	width: 100%;
	margin: 0 auto;
	margin-bottom: 100px;
	text-align: center;
}
.table{
	margin: 0 auto;
	width: 100%;
	text-align: center;
}
.row{
	margin-top: 20px;
	width: 100%;
}
.BoardbtnDiv{
	margin-bottom: 10px;
	text-align: right;
	padding-right: 10px;
}
</style>
</head>
<body>
<div class="row itemCate_container">
	<div class="col-12">
		<div class="row">
			<h3>GOODS CATEGORY MANAGE</h3>
		</div>
		<div class="row BoardbtnDiv">
			<div class="col-12">
				<button type="button" class="btn btn-success btn-m" onclick="addCate();">추가</button>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
			<table class="table table-hover table-border text-center">
			<colgroup>
				<col width="10%">
				<col width="*">
				<col width="15%">
				<col width="15%">
			</colgroup>
			<thead>
					<tr>
						<td>순</td>
						<td>카테고리명</td>
						<td>수정</td>
						<td>삭제</td>
					</tr>
				</thead>
				<tbody id="cateBody">
					<c:forEach items="${cateList }" var="cate">
						<c:set var="i" value="${i+1 }"></c:set>
						<tr>
							<td>${i}</td>
							<td><div id="cateName">${cate.cateName}</div></td>
							<td><div id="cateUpdate"><button type="button" class="btn btn-success btn-m" onclick="updateCate(this, '${cate.cateCode}');">수정</button></div></td>
							<td><button type="button" class="btn btn-success btn-m" onclick="location.href='/item/deleteCate?cateCode=${cate.cateCode}&isDelete=Y';">삭제</button></td>
						</tr>
					</c:forEach>
					<c:if test="${add eq 'add' }">
						<tr>
							<td>추가</td>
							<td colspan="3">
								<form action="/item/addCategory" method="post">
									<input type="text" name="cateName">
									<button type="submit">카테고리 추가</button>
								</form>
							</td>
						</tr>
					</c:if>
				</tbody>
			</table>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/js/item/item_cate_manage.js?ver=11"></script>





</body>
</html>