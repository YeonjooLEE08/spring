<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
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
   .hs-write-form input[type="text"]{
      width: 50%;
      border: none;
      border-bottom: 1px solid #d4d4d4;
      padding: 5px;
      margin-bottom: 10px;
   }
   .hs-write-form input[type="text"]:focus{
      border-bottom: 1px solid #16784B;
   }
   .hs-write-form-bottom textarea{
      width: 80%;
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
   	.hs-write-form input[type="number"]{
		width: 50%;
		margin-bottom: 10px;
	}
	.hs-write-form input[type="date"]{
		width: 50%;
	}
	.hs-write-form input[type="file"]{
		width: 50%;
	}
	 .byteSpan{
	  margin-left: 350px;
	  font-size: 14px;
   }
</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 북클럽 > 북클럽 수정</div>
      <div class="tit">북클럽 수정</div>
   	</div>
	<div class="hs-write-form">
		<form action="/club/clubDetailUpdate" method="post" enctype="multipart/form-data">
			<input type="hidden" name="clubCode" value="${club.clubCode }">
			<div><input type="text" name="clubName" value="${club.clubName }" placeholder="북클럽명"></div>
			<div><input type="number" class="form-control" name="clubHeadCnt" value="${club.clubHeadCnt }" placeholder="인원" min="3" max="10"></div>
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
				<div class="d-grid gap-2 d-md-flex justify-content-md-end"><span class="byteSpan"><span id="byteInfo">0</span> /500bytes</span>
				<button type="submit" class="btn btn-success">수정 완료</button></div>
		</form>
	</div>
</div>
<script type="text/javascript" src="/resources/js/club/club_detail_update.js"></script>
</body>
</html>