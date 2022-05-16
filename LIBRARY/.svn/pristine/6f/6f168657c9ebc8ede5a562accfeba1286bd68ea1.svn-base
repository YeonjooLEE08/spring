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
      flex-direction: column; 
      justify-content: center;
   
   }
   .hs-write-form-top{
       /* display: flex;  */
       justify-content: center;
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
   .clubDate{
	   	margin-bottom: 5px;
	   	margin-top: 5px;
   }
   .club-info{
	   	margin-top: 5px;
   }
</style>
</head>
<body>
<div class="container">
	<div class="text-right">
		<form class="row g-3" action="/club/clubCreate" method="post" id="regClub" enctype="multipart/form-data">
			<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId}">
			<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName}">
				<div class="hs-write-form">
					<div class="hs-write-form-top">
						<div>
							<input type="text" name="clubName" placeholder="북클럽 이름">
						</div>
						<div>
							<input type="number" class="form-control" name="clubHeadCnt" placeholder="인원" min="3" max="10">
						</div>
						<div>
							<input type="text" name="clubPlace" placeholder="모임 장소">
						</div>
						<div>
							<input type="text" name="clubIntro" placeholder="한줄소개">
						</div>
						<div class="club-info">
							첫모임 시작일 : <input type="date" class="clubDate form-control" name="clubDate">
						</div>
						<div>
							<input type="file" class="form-control" id="cbAtName" name="file">
						</div>
					</div>
					<div class="hs-write-form-bottom">
						<textarea rows="30" cols="90" name="clubInfo" onkeyup="byteCheck(this, '5000');" placeholder="북클럽 소개말"></textarea>
						<div><span class="byteSpan"><span id="byteInfo">0</span> /5000bytes </span>
						<button type="button" class="btn btn-success" onclick="clubCreate(this);">모임생성</button></div>
					</div>
				</div>
		</form>
	</div>
</div>

<script type="text/javascript" src="/resources/js/club/club_create.js?ver=9"></script>
</body>
</html>