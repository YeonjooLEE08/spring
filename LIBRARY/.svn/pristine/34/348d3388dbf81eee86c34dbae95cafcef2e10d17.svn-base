<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="row">
	<div class="col-4"></div>
	<div class="col-4">
		<form action="/club/clubDetailUpdate" method="post">
			<input type="hidden" name="clubCode" value="${club.clubCode }">
			모임명 : <input type="text" name="clubName" value="${club.clubName }"> <br>
			모임 인원수 : <input type="text" name="clubHeadCnt" value="${club.clubHeadCnt }"><br>
			모임장 : ${club.memName }<br>
			모임소개:<br> <textarea rows="9" cols="60" name="clubIntro" onkeyup="byteCheck(this, '500');">${club.clubIntro }</textarea> <br>
			<div style="text-align: right;"><span id="byteInfo">0</span> /500bytes</div>
			<input type="submit" value="수정완료">
		</form>
	</div>
</div>
<script type="text/javascript" src="/resources/js/club/club_detail_update.js"></script>
</body>
</html>