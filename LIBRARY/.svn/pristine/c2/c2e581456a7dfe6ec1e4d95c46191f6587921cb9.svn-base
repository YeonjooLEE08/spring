<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	.joinFormDiv{
		width: 70%;
		margin: 0px auto;
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
	
</style>
</head>
<body>
<div class="container">
	<div class="pageName">
		회원 가입
	</div>
	<div class="joinFormDiv">
		<form action="/member/join" method="post" id="joinForm" enctype="multipart/form-data">
		 <div class="row mb-3">
		    <label for="inputId" class="col-sm-2 col-form-label">아이디</label>
		    <div class="col-sm-6">
		      <input type="text" class="form-control" id="inputId" name="memId">
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
				 <div class="col-sm-1">
				  <input class="form-check-input" type="radio" name="memGender" id="inlineRadio1" value="MEN">
				  <label class="form-check-label" for="inlineRadio1">남</label>
				</div>
				<div class="col-sm-1">
				  <input class="form-check-input" type="radio" name="memGender" id="inlineRadio2" value="WOMEN">
				  <label class="form-check-label" for="inlineRadio2">여</label>
				</div>
		 </div>
	
		<div class="row mb-3">
		    <label for="inputEmail" class="col-sm-2 col-form-label">이메일</label>
		    <div class="col-sm-6">
				<div class="input-group mb-3">
				  <input type="text" class="form-control" name="memEmail" placeholder="Username" aria-label="Username">
				  <span class="input-group-text">@</span>
				  <input type="text" class="form-control" name="memEmail" placeholder="Server" aria-label="Server">
				</div>
		    </div>
		 </div>
		 
		 <div class="row mb-3">
		    <label for="inputProfileImg" class="col-sm-2 col-form-label">프로필 이미지</label>
		    <div class="col-sm-4">
				<div class="input-group mb-3">
				  <input type="file" class="form-control" id="inputGroupFile02" name="file">
				  <label class="input-group-text" for="inputGroupFile02">Upload</label>
				</div>
		    </div>
		 </div>
		 
		 
		 
		 <div class="row mb-3">
		    <label for="inputAddr" class="col-sm-2 col-form-label">주소</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" name="memAddr" id="inputAddr" onclick="sample4_execDaumPostcode();">
		    </div>
           <div class="col-sm-2">
              <button type="button" class="btn btn-secondary" id="inputAddr" onclick="sample4_execDaumPostcode();">우편번호</button>
           </div>
		 </div>
		 <div class="row mb-3">
			<label for="inputAddr" class="col-sm-2 col-form-label">&nbsp;</label>
          	<div class="col-sm-7">
              <input type="text" class="form-control" id="inputEmail4" name="memAddr">
           </div>
		 </div>
		 
		 
		  <div class="row mb-3">
			  <div class="col-2">
	              <label for="inputTell" class="form-label">전화번호</label>
	              <select id="inputTell" class="form-select" name="memTell">
	                 <option value="010" selected>010</option>
	                 <option value="011">011</option>
	              </select>
	          </div>
	          <div class="col-2">
	              <label for="inputTell" class="form-label">&nbsp;</label>
	              <input type="text" class="form-control" id="inputCity" name="memTell">
	          </div>
	          <div class="col-2">
	              <label for="inputTell" class="form-label">&nbsp;</label>
	              <input type="text" class="form-control" id="inputCity" name="memTell">
	          </div>
		 </div>
		 <div class="col-5 d-grid gap-2">
              <button type="submit" class="btn btn-dark" >회원가입</button>
         </div>
           
           
		</form>
	</div>
	
	
	
</div>
<!-- js -->
<!-- jQuery 문법 쓰기 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- jQuery validation 문법 쓰기 : 주의! jQuery 문법을 쓴 후에 적어야 됨-->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script type="text/javascript" src="/resources/js/member/join_form.js?ver=40"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>