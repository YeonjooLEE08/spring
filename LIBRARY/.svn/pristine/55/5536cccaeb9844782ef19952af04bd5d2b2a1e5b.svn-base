<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
<style type="text/css">
.btnDiv button{
	width: 100%;
	
}
.btnDiv{
	text-align: center;
}
	
</style>
</head>
<body>

<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 관리자메뉴 > 도서등록</div>
      <div class="tit">도서등록</div>
   </div>


	<div>
   <div >
      <div style="background-color: #eeeeee; padding: 16px; border-radius: 12px;">
         <form class="row g-3" action="/book/updateBook" method="post" id="updateBookForm" enctype="multipart/form-data">
			<div class="col-12">
				<label for="categorySeletor" class="form-label">카테고리</label>
				<select class="form-select" id="categorySeletor" name="cateCode" form="regBookForm">
					<option value="1">${bk.cateName }</option>
					<c:forEach items="${cateList }" var="category">
						<option value="${category.cateCode }">${category.cateName }</option>
					</c:forEach>
				</select>
			</div>
            <input type="hidden" name="bookCode" id="bookCode" value="${bk.bookCode }">
            <div class="col-12">
               <label for="title" class="form-label">도서명</label>
               <input type="text" class="form-control" id="title" name="title" value="${bk.title }">
            </div>
            <div class="col-12">
               <label for="Writer" class="form-label">저자</label>
               <input type="text" class="form-control" id="writer" name="writer" value="${bk.writer}">
            </div>
            
            <div class="col-12">
               <label for="keyword" class="form-label">키워드</label>
               <textarea class="form-control" rows="3" id="keyword" name="keyword">${bk.keyword }</textarea>
            </div>
            <div class="col-12">
               <label for="publisher" class="form-label">출판사</label>
               <input type="text" class="form-control" id="publisher" name="publisher" value="${bk.publisher}">
            </div>
            <div class="col-12">
               <label for="bkStock" class="form-label">재고</label>
               <input type="text" class="form-control" id="bkStock" name="bkStock" value="${bk.bkStock}">
            </div>
            <div class="col-12">
               <label for="bkPage" class="form-label">페이지</label>
               <input type="number" min="10" max="900" value="200" class="form-control" id="bkPage" name="bkPage" value="${bk.bkPage}">
            </div>
            <div class="col-12">
               <label for="bkSize" class="form-label">크기(mm)</label>
               <input type="number" min="100" max="300" value="200" class="form-control" id="bkSize" name="bkSize" value="${bk.bkSize}">
            </div>
            <div class="col-12">
               <label for="pubDate" class="form-label">출판일</label>
               <input type="text" class="form-control" id="pubDate" name="pubDate" value="${bk.pubDate}">
            </div>
            <div class="col-12">
               <label for="area" class="form-label">자료위치</label>
               <input type="text" class="form-control" id="area" name="area" value="${bk.area}">
            </div>
			<input type="hidden" id="isbn" name="isbn" value="${bk.isbn }">
            <div class="col-12">
               <label for="bkContent" class="form-label">글내용</label>
               <textarea class=form-control id="bkContent" name="bkContent">${bk.bkContent}</textarea>
            </div>
            <div class="imgInfo" style="display: inline-block;">
               <label for="file" class="form-label">표지</label>
               <div class="img" style="padding-left: 10px; padding-top:10px; inline-block;"><img src="/resources/images/book/${bk.bkImg }"  alt="..." height="120px;" width="80px;" align="left"></div>
               <div class="newImg" style="width:87%; margin-top: 80px;padding-left:10px;display: inline-block;"><input type="file" class="form-control" id="bkImg" name="file" ></div>
               
            </div>
        	 <div class="btnDiv">
				<button type="submit" class="btn btn-success">도서수정</button>
			</div>
         </form>
      </div>
   </div>
</div>
</div>
<script src="/resources/js/book/update_book.js?ver.4" type="text/javascript"></script>
</body>
</html>