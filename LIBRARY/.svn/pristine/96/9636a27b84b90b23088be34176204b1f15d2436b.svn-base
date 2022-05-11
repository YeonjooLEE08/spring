<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.sideBodyDiv{
		display: flex;
		justify-content: center;
	} 

	
	table, tr, td{
		border-collapse: collapse;
		border: 1px soilid black;
	}
	
	.myPageLeftDiv table td{
		height: 2.5rem;
		padding-left: 1rem;
	}
	
	@keyframes tdhover{
		from{
			width: 0;
			background-color: white;
			color: #246350;
		}
		to{
			width: 100%;
			background-color: #246350;
			color: white;
		}
	}
	.myPageLeftDiv table td:hover{
		animation: tdhover 0.1s linear forwards;
	}
	a:hover{
		color: inherit;
	} 
	
	
	.myPageDiv{
		width: 85%;
		margin: 0px auto;
	}

	.myPageLeftDiv{
		display: flex;
		flex-direction: column;
	}
	
	.myPage-simple{
		display: flex;
		flex-direction: column;
		margin-bottom: 2rem;
		border-radius: 10px;
		color: #246350;
		font-size: 1rem;
		text-align: center;
	}
	.myPage-simple img{
		width: 100%;
		object-fit:cover;
		border-radius: 100%;
		margin-bottom: 1rem;
	}
	
</style>
</head>
<body>
<div class="container">
	<div class="pageName">
		마이페이지
	</div>
	<div class="myPageDiv">
		<div class="myPageLeftDiv">
		
			<div class="myPage-simple">
				<div>
					<img alt="" src="/resources/images/member/${loginInfo.memImage }">
				</div>
				<div>${loginInfo.memName }님 안녕하세요!</div>
				<div>대여 중 도서 : ${loginInfo.brCnt }권</div>
				<div>연체 도서 : ${loginInfo.brCnt }권</div>
			</div>
				<table>
					<tr>
						<td class="bubbly-button">
							<a href="/member/myPageDetail?memId=${loginInfo.memId}">
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
						<a href="/member/borrowListU?memId=${loginInfo.memId }">
						대출목록 상세조회
						</a>
						</td>
					</tr>
					<tr>
						<td><a href='/order/orderList'>구매목록 상세조회</a></td>
					</tr>
					<tr>
						<td><a href="/member/bookPlaner?memId=${loginInfo.memId }">독서 플래너</a></td>
					</tr>
					<tr>
						<td><a href="/member/selectBookClub?memId=${loginInfo.memId }">북클럽 조회</a></td>
					</tr>
					<tr>
						<td><a href="/member/hopeBookListU?memId=${loginInfo.memId }">희망도서 신청</a></td>
					</tr>
				</table>
			<div>
				
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/js/member/my_page.js?ver=0"></script>
</body>
</html>