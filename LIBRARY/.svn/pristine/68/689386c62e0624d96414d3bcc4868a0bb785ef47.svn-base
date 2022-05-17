<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
<link href="/resources/css/book/bookDetail.css" rel="stylesheet">
<style type="text/css">
.add_item_container{
	text-align: center;
	width: 100%;
	height:100%;
	margin: 0 auto;
	margin-top: 30px;
}
.add_itemcuverDiv{
	border: 5px solid #c7e2d1;
	border-radius: 8px;
	width: 90%;
	padding: 20px;
	margin-bottom: 20px;
	
}
.addItemTB {
	border: none;
	width: 90%;
	margin: 0 auto;
	vertical-align: middle;
}

.addItemTB tr th{
	font-weight: bold;
	padding-bottom: 10px;
}
.addItemTB tr td{
	text-align: left;
	float: left;
	padding-left: 10px;
	padding-bottom: 10px;
}
.add_itemcuverDiv textarea{
	width: 400px;
	height: 250px;
    margin: 1rem auto;
    padding: 5px;
    border: 1px solid #d4d4d4;
    border-radius: 7px;
    resize: none;
}
.filebox {display:inline-block; margin-right: 10px;}


.filebox label {
  display: inline-block;
  width: 70px;
  height: 27px;
  color: #999;
  font-size: 15px;
  line-height: normal;
  vertical-align: middle;
  text-align: center;
  padding-top:2px;
  background-color: #fdfdfd;
  cursor: pointer;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
}


.filebox input[type="file"] {  /* 파일 필드 숨기기 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}

/* named upload */
.filebox .upload-name {
  display: inline-block;
  padding: .5em .75em;
  height: 30px;
  font-size: inherit;
  font-family: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
  -webkit-appearance: none; /* 네이티브 외형 감추기 */
  -moz-appearance: none;
  appearance: none;
}

/* imaged preview */
.filebox .upload-display {
  margin-bottom: 5px;
}

@media(min-width: 768px) {
  .filebox .upload-display {
    display: inline-block;
    margin-right: 5px;
    margin-bottom: 0;
  }
}

.filebox .upload-thumb-wrap {
  display: inline-block;
  width: 54px;
  padding: 2px;
  vertical-align: middle;
  border: 1px solid #ddd;
  border-radius: 5px;
  background-color: #fff;
}

.filebox .upload-display img {
  display: block;
  max-width: 100%;
  width: 100% \9;
  height: auto;
}

.filebox.bs3-success label {
  color: #fff;
  background-color: #4A8559;
  border-color: #4cae4c;
  
}
.inputText{
  width: 100%;
  border: none;
  border-bottom: 1px solid #d4d4d4;
  padding: 5px;
  width: 400px;
}
.inputText:focus{
  border-bottom: 1px solid #16784B;
 }
</style>

</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 관리자메뉴 > 상품관리 > 상품등록</div>
      <div class="tit">상품등록</div>
    </div>
<div class="add_item_container">
   </div>
	<form action="/item/insertItem" method="post" id="regItemForm" enctype="multipart/form-data">
		<div class="add_itemcuverDiv">
			<table class="addItemTB">
			<colgroup>
				<col width="20%">
				<col width="*">
			</colgroup>
				<tr>
					<th>상품이름</th>
					<td><input type="text" name="itemName" id="itemName" class="inputText"></td>
				</tr>
				<tr>
					<th>카테고리</th>
					<td>
						<select name="cateCode" id="category" style="text-align: center;" class="inputText">
							<option value="1" selected>선택</option>
							<c:forEach items="${cateList }"  var="cate">
								<option value="${cate.cateCode }">${cate.cateName }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<th>가격</th>
					<td><input type="text" name="itemPrice" value="${item.itemPrice }" id="itemPrice"  class="inputText" style="width: 370px;">원</td>
				</tr>
				<tr>
					<th>상세설명</th>
					<td>
						<textarea rows="5" cols="30" name="itemDetail"></textarea>
					</td>
				</tr>
				<tr>
					<th>대표 이미지</th>
					<td>
						<div class="filebox bs3-success preview-image">
			              <input class="upload-name" value="파일선택" disabled="disabled" style="width: 200px;">
			              <label for="input_file">업로드</label> 
			              <input type="file" name="mainImg" id="input_file" class="upload-hidden"> 
			            </div>
					</td>
				</tr>
				<tr>
					<th>기타 이미지</th>
					<td>
						<div class="filebox bs3-success preview-image">
			              <input class="upload-name" value="파일선택" disabled="disabled" style="width: 200px;">
			              <label for="multi_file">업로드</label> 
			              <input type="file" name="subImg" id="multi_file" class="upload-hidden" multiple="multiple"> 
			            </div>
					</td>
				</tr>
			</table>
		</div>
		<div style="float: right; margin-right: 10%;">
			<button type="button" class="btn btn-success btn-sm" onclick="regItem();">상품등록</button>
		</div>
	</form>
</div>
<script src="\resources\js\item\add_item.js?ver=9" type="text/javascript" ></script>
</body>
</html>