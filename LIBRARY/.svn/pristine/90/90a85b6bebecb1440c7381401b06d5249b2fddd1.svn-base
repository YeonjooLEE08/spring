<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* ------------------------------------------------ */
.sideBodyDiv{
	display: flex;
	justify-content: center;
}
.sideContainer{
    width: 250px;
    padding-left:12px;
    padding-right:12px;
	margin-left:200px;    
}
.side-box-div{
	display: flex;
	flex-direction: column;
	width: 100%;
}

.side-box-div table{
	text-align: left;
}

.side-box-div table, .side-box-div tr, .side-box-div td{
	border-collapse: collapse;
	border: 1px solid #dddddd;
}
.side-box-div td{
	padding-left: 15px;
}

.side-box-div tr{
	height: 50px;
	padding-left: 5px;
}


.myPageDetail{
    margin-left: 3rem;
}


@keyframes tdhover{
	from{
		width: 0;
		background-color: white;
		color: #16784B;
	}
	to{
		width: 100%;
		background-color: #16784B;
		color: white;
	}
}
.side-box-div table tr:hover{
	animation: tdhover 0.1s linear forwards;
}

a:hover{
	color: inherit;
} 


/* ------------------------------------------------ */

.side-box-div{
	display: flex;
	flex-direction: column;
}

.myPage-simple{
	display: flex;
	flex-direction: column;
	margin-bottom: 1rem;
	border-radius: 10px;
	color: #16784B;
	font-size: 1rem;
	text-align: center;
}
.myPage-simple img{
	width: 200px;
	height: 200px;
	object-fit:cover;
	border-radius: 100%;
	margin-bottom: 1rem;
}
.simpleMyBook{
	display: flex;
	flex-direction: column;
	border: 1px solid #28D987;
	border-radius: 10px;
	margin: 1.8rem 0;
	padding: 10px 0;
	box-shadow: 1px 1px 4px 2px #c7e2d1;
}
.simpleMyBook > div{
	display: flex;
	justify-content: space-evenly;
}
.isOd-div{
	font-size: 0.9rem;
}
</style>
</head>
<body>
<div class="sideContainer">
		<div class="side-box-div">
		
			<div class="myPage-simple">
				<div>
					<img alt="" src="/resources/images/member/${loginInfo.memImage }">
				</div>
				<div>${loginInfo.memName }님 반가워요!</div>
				<div class="simpleMyBook">
					<div>
						<div>대여 도서</div><div>${loginInfo.brCnt }권</div>
					</div>
					<div class="isOd-div">
						<c:choose>
							<c:when test="${sessionScope.loginInfo.isOd eq 'Y' }">
								<div style="color: red;">연체 중인 도서가 있어요!</div>
							</c:when>
							<c:otherwise>
								<div>연체 중인 도서가 없습니다.</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
				<table>
					<tr>
						<td>
							<a href="/member/myPageDetail">
						내 정보 상세조회</a></td>
					</tr>
					<tr>
						<td>
						<a href="/member/reserveListU?memId=${loginInfo.memId }">
						예약목록 상세조회
						</a>
						</td>
					</tr>
					<tr>
						<td>
						<a href="/member/borrowListU?memId=${loginInfo.memId}">
						대여목록 상세조회
						</a>
						</td>
					</tr>
					<tr>
						<td><a href='/order/orderList'>주문정보 조회</a></td>
					</tr>
					<tr>
						<td>
						<a href="/member/bookPlaner?memId=${loginInfo.memId }">
						북적북적</a></td>
					</tr>
					<tr>
						<td><a href="/member/selectBookClub?memId=${loginInfo.memId }">나의 북클럽</a></td>
					</tr>
					<tr>
						<td><a href="/member/hopeBookListU?memId=${loginInfo.memId }">희망도서 신청</a></td>
					</tr>
				</table>
			<div>
				
			</div>
		</div>
</div>
</body>
</html>