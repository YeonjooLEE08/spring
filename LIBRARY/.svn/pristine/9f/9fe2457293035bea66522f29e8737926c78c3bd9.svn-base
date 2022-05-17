<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/* hs-write-form 작성폼 */
   .hs-write-form{
      display: flex;
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
    .clubDate{
	   	margin-bottom: 5px;
	   	margin-top: 5px;
   }
   .club-info{
	   	margin-top: 5px;
   }
   .form-control{
   		width: 50%;
   }
</style>
</head>
<body>
<div class="container">
	<div class="hs-write-form">
		<form action="/club/clubDetailUpdate" method="post" enctype="multipart/form-data">
			<input type="hidden" name="clubCode" value="${club.clubCode }">
			<div><input type="text" name="clubName" value="${club.clubName }" placeholder="북클럽명"></div>
			<div><input type="number" class="form-control" name="clubHeadCnt" value="${club.clubHeadCnt }" placeholder="인원"></div>
			<div><input type="text" name="clubPlace" value="${club.clubPlace }" placeholder="모임 장소"></div>
			<div><input type="text" name="clubIntro" value="${club.clubIntro }" placeholder="한줄소개"></div>
			<div class="club-info">
				첫모임 시작일 :
				<input type="date" class="clubDate form-control" name="clubDate" value="${club.clubDate }">
			</div>
			<input type="file" class="form-control" id="cbAtName" name="file">
			<div class="hs-write-form-bottom">
				<textarea rows="10" cols="50" name="clubInfo" onkeyup="byteCheck(this, '500');" placeholder="북클럽 소개말">${club.clubInfo }</textarea>
			</div>
				<div style="text-align: right;"><span id="byteInfo">0</span> /500bytes</div>
				<button type="submit" class="btn btn-success">수정 완료</button>
		</form>
	</div>
</div>
<script type="text/javascript" src="/resources/js/club/club_detail_update.js"></script>
</body>
</html>