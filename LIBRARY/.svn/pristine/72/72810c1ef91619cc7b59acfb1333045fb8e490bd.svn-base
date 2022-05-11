<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="row">
	<div class="col">
		<h4>Registration Book</h4>
	</div>
</div>
<div class="row">
	<div class="col-8">
		<div style="background-color: #eeeeee; padding: 16px; border-radius: 12px;">
			<form class="row g-3" action="/book/regBook" method="post" id="regBookForm" enctype="multipart/form-data">
				<div class="col-12">
					<label for="categorySeletor" class="form-label">카테고리</label>
					<select class="form-select" id="categorySeletor" name="cateCode" form="regBookForm">
						<option value="1">선택</option>
						<c:forEach items="${cateList }" var="category">
							<option value="${category.cateCode }">${category.cateName }</option>
						</c:forEach>
					</select>
				</div>
				<div class="col-12">
					<label for="title" class="form-label">도서명</label>
					<input type="text" class="form-control" id="title" name="title">
				</div>
				<div class="col-12">
					<label for="Writer" class="form-label">저자</label>
					<input type="text" class="form-control" id="writer" name="writer">
				</div>
				
				<div class="col-12">
					<label for="keyword" class="form-label">키워드</label>
					<textarea class="form-control" rows="3" id="keyword" name="keyword"></textarea>
				</div>
				<div class="col-12">
					<label for="publisher" class="form-label">출판사</label>
					<input type="text" class="form-control" id="publisher" name="publisher">
				</div>
				<div class="col-12">
					<label for="bkStock" class="form-label">재고</label>
					<input type="text" class="form-control" id="bkStock" name="bkStock">
				</div>
				<div class="col-12">
					<label for="bkPage" class="form-label">페이지</label>
					<input type="number" min="10" max="900" value="200" class="form-control" id="bkPage" name="bkPage">
				</div>
				<div class="col-12">
					<label for="bkSize" class="form-label">크기</label>
					<input type="number" min="100" max="300" value="200" class="form-control" id="bkSize" name="bkSize">mm
				</div>
				<div class="col-12">
					<label for="pubDate" class="form-label">출판일</label>
					<input type="text" class="form-control" id="pubDate" name="pubDate">
				</div>
				<div class="col-12">
					<label for="area" class="form-label">자료위치</label>
					<input type="text" class="form-control" id="area" name="area">
				</div>
				<div class="col-12">
					<label for="isbn" class="form-label">ISBN</label>
					<input type="text" class="form-control" id="isbn" name="isbn">
				</div>
				<div class="col-12">
					<label for="bkContent" class="form-label">글내용</label>
					<textarea class=form-control id="bkContent" name="bkContent"></textarea>
				</div>
				<div>
					<label for="file" class="form-label">표지</label>
					<input type="file" class="form-control" id="bkImg" name="file" >
					
				</div>
				<div class="col-12 d-grid gap-2">
					<input type="submit" value="도서등록">
					
				</div>
			</form>
		</div>
	</div>
</div>
<script src="/resources/js/book/reg_book.js?ver.3" type="text/javascript"></script>
</body>
</html>

