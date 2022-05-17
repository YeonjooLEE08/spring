<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.bye-div{
	width: 70%;
    margin: 3rem auto;
    border: 4px solid #E7EDE4;
    border-radius: 1rem;
    height: 27rem;
    padding: 6rem 1rem;
    display: flex;
    justify-content: space-evenly;
    
}
.bye-div > div:first-child img {
	border-radius: 100%;
	width: 210px;
	height: 210px;
}
.bye-div > span img{
	width: 300px;
}
.nonSide-container > div:last-child {
	text-align: center;
}

</style>
</head>
<body>
<div class="nonSide-container">
	<div class="bye-div">
		<div>
			<img alt="" src="/resources/images/member/${loginInfo.memImage }">
		</div>
		<div>
			Good bye ${loginInfo.memName}...
		</div>
	</div>
	<div>
		<button class="btn btn-success" onclick="location.href='/member/logout';">메인으로</button>
	</div>
</div>
</body>
</html>