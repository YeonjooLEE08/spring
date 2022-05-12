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
/* hs-write-form 작성폼 */
   .hs-write-form{
      display: flex;
      text-align: center;
       flex-direction: column;
       justify-content: center;
   
   }
   .hs-write-form-top{
      display: flex;
       justify-content: center;
   }
   .hs-write-form-top div:nth-child(1){
      flex-grow: 90;
   }
   .hs-write-form-top div:nth-child(2){
      margin-left: 10px;
      flex-grow: 0;
      width: 17%;
   }
   .hs-write-form-top div:nth-child(2) input[type="text"]{
      text-align: center;
   }
   
   
   .hs-write-form input[type="text"]{
      width: 100%;
      border: none;
      border-bottom: 1px solid #d4d4d4;
      padding: 5px;
   }
   .hs-write-form input[type="text"]:focus{
      border-bottom: 1px solid #16784B;
   }
   .hs-write-form-bottom textarea{
      width: 100%;
      margin: 1rem auto;
      padding: 5px;
      border: 1px solid #d4d4d4;
      border-radius: 7px;
      resize: none;
   }
   .hs-write-form-bottom textarea:focus {
      border: 1px solid #16784B;;
      outline: none;
   }
   .hs-write-form-bottom {
      text-align: right;
   }
   .hs-write-form-bottom button{
      margin-right: 2px;
   }
   .byteSpan{
	  margin-left: 350px;
	  font-size: 14px;
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
				<div class="hs-write-form">
					<div class="hs-write-form-top">
						<div>
							<input type="text" name="clubName" placeholder="북클럽 이름">
						</div>
						<div>
							<input type="text" name="clubHeadCnt" placeholder="인원">
						</div>
					</div>
					<div class="hs-write-form-bottom">
						<textarea rows="10" cols="50" name="clubIntro" onkeyup="byteCheck(this, '500');" placeholder="북클럽 소개말"></textarea>
						<div><span class="byteSpan"><span id="byteInfo">0</span> /500bytes </span>
						<button type="button" class="btn btn-success" onclick="clubCreate(this);">모임생성</button></div>
					</div>
				</div>
		</form>
	</div>
</div>
<script type="text/javascript" src="/resources/js/club/club_create.js?ver=9"></script>
</body>
</html>