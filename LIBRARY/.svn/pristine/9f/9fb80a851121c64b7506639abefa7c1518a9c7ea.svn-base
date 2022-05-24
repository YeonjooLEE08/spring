<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/button01.css" rel="stylesheet">
<link href="/resources/css/common/infoBar.css" rel="stylesheet">

<style type="text/css">

	.joinFormDiv{
		width: 75%;
		margin: 0px auto;
		margin-right: 0px;
	}
	.id-available{
		color: green;
		display: none;
		font-size: 12px;
	}
	.id-unavailable{
		color: red;
		display: none;
		font-size: 12px;
	}
	
	.joinFormDiv input{
		border: 1px solid #d4d4d4;
		border-radius: 3px;
	}
	.joinFormDiv input:focus, .joinFormDiv select:focus{
		border-color: #c7e2d1;
		box-shadow: 0 0 8px #c7e2d1;
	}
	.joinFormDiv select:checked {
		boder: none;
	
	}
	.joinFormDiv #username1-error{
		padding-left: 11rem;
	}
	
	.wrapper button{
	margin: 3rem auto auto 16rem;
	}
	
</style>
</head>
<body>
<div class="nonSide-container">
	<div class="subTit">
      <div class="line_map">홈 > 회원가입</div>
      <div class="tit">회원가입</div>
   </div>
	<div class="joinFormDiv">
		<form action="/member/join" method="post" id="joinForm" enctype="multipart/form-data">
		 <div class="row mb-3">
		    <label for="inputId" class="col-sm-2 col-form-label">아이디</label>
		    <div class="col-sm-4" style="margin-right: 3.8rem;">
		      <input type="text" class="form-control" id="inputId1" name="memId">
			  <div class="id-available">사용할 수 있는 아이디예요.</div>
		      <div class="id-unavailable">다른 사람이 사용 중인 아이디입니다.</div>    
		    </div>
		    <div class="col-sm-2">
		      <button type="button" class="btn btn-secondary" onclick="checkId();">중복확인</button>
		    </div>  
		 </div>
		    
		 <div class="row mb-3">
		    <label for="inputPwd" class="col-sm-2 col-form-label">비밀번호</label>
		    <div class="col-sm-6">
		      <input type="password" class="form-control" id="inputPwd" name="memPwd">
		    </div>
		 </div>
		 <div class="row mb-3">
		    <label for="inputCheckPwd" class="col-sm-2 col-form-label">비밀번호 확인</label>
		    <div class="col-sm-6">
		      <input type="password" class="form-control" id="inputCheckPwd" name="memPwdCheck"><div></div>
		    </div>
		 </div>
		 <div class="row mb-3">
		    <label for="inputName" class="col-sm-2 col-form-label">이름</label>
		    <div class="col-sm-6">
		      <input type="text" class="form-control" id="inputName" name="memName">
		    </div>
		 </div>
		 <div class="row mb-3">
		    <label for="inputBirth" class="col-sm-2 col-form-label">생년월일</label>
		    <div class="col-sm-6">
		      <input type="date" class="form-control" id="inputBirth" name="memBirth" >
		    </div>
		 </div>
		 
		 <div class="row mb-3">
		    <label for="inputGender" class="col-sm-2 col-form-label">성별</label>
		     <div class="col-sm-6">
			    <select class="form-select" name="memGender" aria-label="Default select example">
				  <option selected value="WOMEN">여</option>
				  <option value="MEN">남</option>
				</select>
		    </div>
		 </div>
	
		<div class="row mb-3">
		    <label for="inputEmail" class="col-sm-2 col-form-label">이메일</label>
		    <div class="col-sm-6">
				<div class="input-group mb-3" id="joinEmail">
				  <input type="text" class="form-control" id="inputEmail1" name="memEmail1" placeholder="Username" aria-label="Username">
				  <span class="input-group-text">@</span>
				  <input type="text" class="form-control" id="inputEmail2" name="memEmail2" placeholder="Server" aria-label="Server">
				</div>
		    </div>
		 </div>
		 
		 <div class="row mb-3">
		    <label for="inputProfileImg" class="col-sm-2 col-form-label">프로필 이미지</label>
		    <div class="col-sm-6">
				<div class="input-group mb-3">
				  <input type="file" class="form-control" id="inputGroupFile02" name="file">
				  <label class="input-group-text" for="inputGroupFile02">Upload</label>
				</div>
		    </div>
		 </div>
		 
		 
		 
		 <div class="row mb-3">
		    <label for="inputAddr" class="col-sm-2 col-form-label">주소</label>
		    <div class="col-sm-4" style="margin-right: 3.8rem;">
		      <input type="text" class="form-control" name="memAddr" id="inputAddr" onclick="sample4_execDaumPostcode();">
		    </div>
           <div class="col-sm-2">
              <button type="button" class="btn btn-secondary" id="inputAddr" onclick="sample4_execDaumPostcode();">우편번호</button>
           </div>
		 </div>
		 <div class="row mb-3">
			<label for="inputAddr" class="col-sm-2 col-form-label">&nbsp;</label>
          	<div class="col-sm-6">
              <input type="text" class="form-control" id="inputEmail4" name="memAddr">
           </div>
		 </div>
		 
		 
		  <div class="row mb-3" id="joinTell">
	          <label for="inputTell" class="col-sm-2 col-form-label">전화번호</label>
			  <div class="col-2">
	              <select id="inputTell" class="form-select" name="memTell">
	                 <option value="010" selected>010</option>
	                 <option value="011">011</option>
	              </select>
	          </div>
	          <div class="col-2">
	              <input type="text" class="form-control" id="inputTell1" name="memTell1">
	          </div>
	          <div class="col-2">
	              <input type="text" class="form-control" id="inputTell2" name="memTell2">
	          </div>
		 </div>
		 
		 <div class="wrapper">
              <button type="submit"><span>회원가입</span></button>
         </div>
           
           
		</form>
	</div>
	
	
	
</div>
<!-- js -->
<!-- jQuery 문법 쓰기 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- jQuery validation 문법 쓰기 : 주의! jQuery 문법을 쓴 후에 적어야 됨-->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script type="text/javascript" src="/resources/js/member/join_form.js?ver=58"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>