<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.btnDiv{
	padding-top:10px;
	padding-left:25px;
	padding-right:10px;
	text-align:right;
}

.btnDiv button{
		height: 40px;
		padding-left: 10px;
		padding-right: 10px;
		width: 150px;
}


.hpBookForm{
	width: 100%;
	padding: 20px;
	border: 1px solid #dddddd;
}

.hpBookForm table {
	width: 100%;
	padding: 15px;
}
.hpBookForm button{
	margin-left: 15px;
	height: 40px;
}
 .hpBookForm .form td:first-child{
	font-weight:600;
	width:10%;
}
.hpBookForm td, .hpBookForm tr{
	padding:15px;
	
} 
.hpBookForm input {
	height: 40px;
	width:40%;
	border-radius: 3px;
}
.resultHopeBook .result-row-tbody1 div{
	height: 90px;
	width:25%; 
	display: inline-block;
	text-align: center;
	padding-top: 40px;
	
}
.resultHopeBook .result-row-tbody1 .img{
	padding-top: 0px;
	padding-bottom: 20px;
}

.resultHopeBook{
	width: 100%;
	border:1px solid #dddddd;
	margin: 0 auto;
}
.resultHopeBook.result-row-thead{
	flex-direction: row; 
	dispaly: flex;
	padding: 20px;
	border-bottom: 1px solid #dddddd;
}

.resultHopeBook .result-row-tbody{
	padding: 20px;
}
.resultHopeBook .result-row-tbody1{
	border-bottom: 1px solid #dddddd;
	padding-bottom: 10px;
}

.searchBar{
text-align: center;
border: 1px solid #dddddd;
padding: 10px;
background-color: #E7EDE4;
margin-bottom: 20px;
	
}

.searchBar input{
	outline: 3px solid #16784B;
	border: 1px solid #16784B;
	border-radius: 3px;
	width: 50%;
	height: 50px;
	margin-left: 10px;
	margin-top:10px;
}
.searchBar  button{
	position: relative;
    border: none;
    display: inline-block;
    padding: 13px 30px;
    margin-left: 10px;
}
select{
   border: none;
   outline: none;
   width: 80px;
   font-weight: 200;
   background: transparent;
   color: black;
}

.active{
	background-color: #dddddd;
}
.modal{
	text-align: center;
}
#searchBook .modal-content {
	max-height: 800px;
	width: 800px;
}
</style>
</head>
<body>
<div class="container">
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	   <form action="/clubAdmin/regMonthlyBook" id ="hpBookForm" method="post">
			<div class="monthlyBookForm">
				<table class="form">
				<tr>
					<td>제목</td>
					<td><input type="text" name="mbTitle" >
						<button type="button" data-toggle="modal" data-target="#searchBook" class="btn btn-success btn-sm justify-content-md-end" onclick="showModal();">책 검색하기</button>
					</td>
				</tr>
				<tr>
					<td>저자</td>
					<td><input type="text"  name="mbWriter" ></td>
				</tr>
				<tr>
					<td>출판사</td>
					<td><input type="text"  name="mbPublisher" ></td>
				</tr>
			</table>
		</div>
		<div class="btnDiv">
			<button class="btn btn-success btn-sm justify-content-md-end" onclick="submit();" >등록하기</button>
				</div>
			</form>
			
		
	<div class="modal fade" id="searchBook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog modal-lg" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="myModalLabel">도서 검색</h5>
		      </div>
		      <div class="modal-body">
				<div class="searchBar">
					<select id="searchSub">
						<option value="title">제목</option>
						<option value="writer">작가</option>
					</select>
					<input id="bookName" type="text">
					<button id="search" class="btn btn-success btn-sm justify-content-md-end">검색</button>
				</div>		
						
				<div class="resultHopeBook">
					<div class="result-row-thead" >
						<table style="width:100%; text-align: center; ">
					<tr>
						<td>표지</td>
						<td>제목</td>
						<td>작가</td>
						<td>출판사</td>
					</tr>
				</table>
			</div>
			<div class="result-row-tbody" id ="result-row-tbody" style="overflow:scroll; height:200px; flex-direction: row; dispaly: flex;">
				 <div class="result" id ="result" ></div> 
			</div>
			
			
		</div>
	     </div>
	     <div class="modal-footer">
	       <button type="button" class="btn btn-default" id="closeModalBtn" data-dismiss="modal">닫기</button>
	       <button type="button" id="searchForm" class="btn btn-success justify-content-md-end" >등록</button>
	     </div>
	   </div>
	 </div>
	</div>	
</div>

<script type="text/javascript" src="/resources/js/club/club_monthly_book.js"></script>
</body>
</html>