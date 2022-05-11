<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table tr td:nth-child(odd){
	text-align: right;
	margin-right: 20px;
}
</style>
</head>
<body>
<div class="row">
	<div class="col-4"></div>
	<div class="col-4 text-right">
		<form action="/club/clubCreate" method="post" id="regClub">
			<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId}">
			<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName}">
			<table class="class text-right">
				<tr>
					<td>
						북클럽 이름 :
					</td>
					<td>
						<input type="text" name="clubName"><br>
					</td>
				</tr>
				<tr>
					<td>
						인원수 : 
					</td>
					<td>
						<input type="text" name="clubHeadCnt"><br>
					</td>
				</tr>
				<tr>
					<td>
						클럽소개 :
					</td>
					<td>
						<textarea rows="5" cols="50" name="clubIntro" onkeyup="byteCheck(this, '500');"></textarea><br>
						<div style="margin-left: 350px;"><span id="byteInfo">0</span> /500bytes</div>
					</td>
				</tr>
			</table>
			<div class="d-grid gap-2 d-md-flex justify-content-center">
				<button type="button" class="btn btn-success btn-sm" onclick="clubCreate(this);">모임생성</button>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript" src="/resources/js/club/club_create.js?ver=9"></script>
</body>
</html>