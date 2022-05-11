<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.hpBookForm{
		display: flex;
		flex-direction: column;
	}
	
	.resultHopeBook .result-row-thead, .resultHopeBook .result-row-tbody,
	.resultHopeBook .result-row-tbody.result{
		display: flex;
		flex-direction: row;
		justify-content: space-around;
		
	}
	.resultHopeBook.result-row-tbody{
		overflow:auto;
		height: 20%;
		overflow:scroll;
		height: 150px; 
		width:75%;
	}


</style>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

			
	<div class="searchHopeBook">
		<select id="searchSub">
			<option value="title">제목</option>
			<option value="writer">작가</option>
		</select>
		<input id="bookName" type="text">
		<button id="search">검색</button>
	</div>		
	
	<div class="resultHopeBook">
		<div class="result-row-thead" style="width:75%; flex-direction: row;">
			<div>표지</div>
			<div>제목</div>
			<div>작가</div>
			<div>출판사</div>
		</div>
		<div class="result-row-tbody" id ="result-row-tbody" style="overflow:scroll; height:150px; width:75%; flex-direction: row; dispaly: flex;">
			 <div class="result" id ="result" style="width:75%; flex-direction: row;"></div> 
		</div>
	</div>
	
	<form action="/book/regHopeBook" method="post">
		<div class="hpBookForm">
			<table>
				<tr>
					<td>신청인</td>
					<td> ${sessionScope.loginInfo.memName }
						<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
					</td>
					<td>신청일</td>
					<td><%= sf.format(nowTime) %></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title" ></td>
				</tr>
				<tr>
					<td>저자</td>
					<td><input type="text"  name="writer" ></td>
				</tr>
				<tr>
					<td>출판사</td>
					<td><input type="text"  name="publisher" ></td>
				</tr>
			</table>
			<div>
				<button type="submit">신청하기</button>
			</div>
		</div>
	</form>






<script type="text/javascript" src="/resources/js/book/reg_hope_book.js?ver=46"></script>
</body>
<meta name="referrer" content="unsafe-url" />
</html>