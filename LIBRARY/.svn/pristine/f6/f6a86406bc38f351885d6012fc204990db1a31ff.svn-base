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
      flex-direction: column; 
      justify-content: center;
   
   }
   .hs-write-form-top{
       /* display: flex;  */
       justify-content: center;
   }
   
   .hs-write-form input[type="text"]{
      width: 80%;
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
	.hs-write-form input[type="number"]{
		width: 50%;
		margin-bottom: 10px;
	}
	.hs-write-form input[type="date"]{
		width: 80%;
	}
	.hs-write-form input[type="file"]{
		width: 80%;
	}
	.d-grid{
		margin-right: 250px;
	}
	/* 중복이름 존재하지 않는경우 */
	.name_input_re_1{
		color : green;
		display : none;
	}
	/* 중복이름 존재하는 경우 */
	.name_input_re_2{
		color : red;
		display : none;
	}
</style>
</head>
<body>
<div class="container">
	<div class="subTit" >
		   <div class="tit">북클럽 생성</div>
	</div>
	<div class="text-right">
		<form class="row g-3" action="/club/clubCreate" method="post" id="regClub" enctype="multipart/form-data">
			<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId}">
			<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName}">
				<div class="hs-write-form">
					<div class="hs-write-form-top">
						<div class="name_wrap">
							<div>
								<input type="text" id="clubName" name="clubName" placeholder="북클럽 이름">
							</div>
							<span class="name_input_re_1">사용 가능한 이름입니다.</span>
							<span class="name_input_re_2">이미 사용 중입니다. 다른 이름을 입력해주세요.</span>
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
					<div class="hs-write-form-bottom ">
						<textarea rows="20" cols="50" name="clubInfo" onkeyup="byteCheck(this, '5000');" placeholder="북클럽 소개말"></textarea>
						<div class="d-grid gap-2 d-md-flex justify-content-md-end"><span class="byteSpan"><span id="byteInfo">0</span> /5000bytes </span>
						<button type="button" class="btn btn-success" onclick="clubCreate(this);">모임생성</button></div>
					</div>
				</div>
		</form>
	</div>
</div>

<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script type="text/javascript" src="/resources/js/club/club_create.js?ver=9"></script>

</body>
</html>