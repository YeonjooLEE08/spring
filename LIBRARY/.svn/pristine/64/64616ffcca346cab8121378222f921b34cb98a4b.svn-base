<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
<link href="/resources/css/member/my_page_detail.css" rel="stylesheet">

</head>
<body>

<div class="container">
<div class="subTit">
   <div class="line_map">홈 > 마이 페이지 > 내 정보 상세조회</div>
   <div class="tit">내 정보 상세조회</div>
</div>
</div>
<form action="/member/myPageDetailUpdate" method="post">
	<div class="myPageDetail">
		<div class="myPageDetail-part">
			<span>기본정보</span> 
			<!-- <button type="button" class="btn btn-sm" data-bs-toggle="modal" data-bs-target="#myPageDetail-basic" style="background-color: #FDFAF6; color: #16784B;; border: 1px solid #16784B;">
			  수정
			</button> -->
			<button type="button" class="btn btn-sm" onclick="showPopup();" data-bs-target="#myPageDetail-basic" style="background-color: #FDFAF6; color: #16784B;; border: 1px solid #16784B;">
			  수정
			</button>
		</div>
		<div class="myPageDetail-basic">
			<table class="myPageDetail-table">
				<colgroup>
					<col width="20%">
					<col width="*">
				</colgroup>
				<tr>
					<td>이름</td>
					<td>
						${memberInfo.memName }
					</td>
				</tr>
				<tr>
					<td>아이디</td>
					<td>
						${memberInfo.memId }
					</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>
						${memberInfo.memTell }
					</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>
						${memberInfo.memEmail }
					</td>
				</tr>
			</table>
		</div>
		<div class="myPageDetail-secret">
			<div class="myPageDetail-part">
				<span>보안정보</span> 
				<button type="button" class="btn btn-sm" data-bs-toggle="modal" data-bs-target="#myPageDetail-secret" style="background-color: #FDFAF6; color: #16784B;; border: 1px solid #16784B;;">
				  수정
				</button>
			</div>
			<table class="myPageDetail-table">
				<colgroup>
					<col width="20%">
					<col width="*">
				</colgroup>
				<tr>
					<td>비밀번호</td>
					<td>
						<c:if test="${sessionScope.loginInfo.isPwdTemp eq 'Y' }">임시 비밀번호로 설정돼 있습니다. 새로운 비밀번호로 변경해 주세요.</c:if>
					</td>
				</tr>
			</table>
		</div>
		<div class="myPageDetail-sub">
			<div class="myPageDetail-part">
				<span>추가정보</span> 
				<button type="button" class="btn btn-sm" data-bs-toggle="modal" data-bs-target="#myPageDetail-plus" style="background-color: #FDFAF6; color:#16784B; border: 1px solid #16784B;">
				  수정
				</button>
			</div>
			<table class="myPageDetail-table">
				<colgroup>
					<col width="20%">
					<col width="*">
				</colgroup>
				<tr>
					<td>주소</td>
					<td>${memberInfo.memAddr }</td>
				</tr>
				<tr>
					<td>생일</td>
					<td>
						${memberInfo.memBirth }
					</td>
				</tr>
			</table>
		</div>
	</div>
</form>
<div class="deleteMem-btn">
	<button type="button" class="btn btn-sm btn-outline-success" onclick="location.href='/member/deletePwdChk';">회원 탈퇴</button>
</div>

<!--기본정보 수정 Modal -->
<div class="modal fade" id="myPageDetail-basic" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">기본정보 수정</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="/member/updateBasicInfo" method="post" id="basicForm" enctype="multipart/form-data">
   		<input type="hidden" name="memId" value="${memberInfo.memId}">
   		<input type="hidden" name="memImage" value="">
	      <div class="modal-body">
	      	<div class="modal-body-top-left">
	      		<div>
		      		<img alt="" src="/resources/images/member/${memberInfo.memImage }" id="thumbnail">
	      		</div>
	      		<div class="profileFileButton">
	      			<div>
		      			<label class="file-label" for="chooseFile">변경</label>
						<input class="file" id="chooseFile" type="file" name="file" onchange="previewFile();">
	      			</div>
	      			<div>
		      			<label class="file-label"  onclick="deleteProfileImage();">삭제</label>
	      			</div>
	      		</div>
	      	</div>
	      	
	      	<div class="modal-body-top-right">
	      		<div>
	      			${memberInfo.memId}
	      		</div>
	      		<div>
	      			<input type="text" name="memName" value="${memberInfo.memName}" placeholder="이름">
	      		</div>
	      		<div>
	      			<input type="text" name="memTell" size="3" value="${(memberInfo.memTell).substring(0, 3) }" placeholder="XXX">
	      			- <input type="text" id="validateTell_1" name="memTell1" size="4" value="${(memberInfo.memTell).substring(4, 8) }" placeholder="XXXX">
	      			- <input type="text" id="validateTell_2" name="memTell2" size="4" value="${(memberInfo.memTell).substring((memberInfo.memTell).length()-4, (memberInfo.memTell).length()) }" placeholder="XXXX">
	      		</div>
	      		<div>
	      			<input type="email" name="memEmail" value="${memberInfo.memEmail }" placeholder="email@email.com">
	      		</div>
	      	</div>
		  </div>		
	      <div class="modal-footer">
	        <button onclick="updateBasic()" class="btn btn-success" >수정하기</button>
	      </div>
	</form>
      
    </div>
  </div>
</div>
<!--보안정보 수정 Modal -->
<div class="modal fade" id="myPageDetail-secret" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">보안정보 수정</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="/member/updateSecretInfo" method="post" id="secretForm" enctype="multipart/form-data">
      	<input type="hidden" name="memId" value="${memberInfo.memId}">
	      <div class="modal-body">
		      <div class="modal-body-pwd">
		      
		      <table>
		      	<colgroup>
		      		<col width="40%">
		      		<col width="*">
		      	</colgroup>
		      	<tr>
		      		<td>현재 비밀번호</td>
		      		<td><input type="password"></td>
		      	</tr>
		      	<tr>
		      		<td>새 비밀번호</td>
		      		<td><input type="password" name="memPwd" id="inputPwd"></td>
		      	</tr>
		      	<tr>
		      		<td>비밀번호 확인</td>
		      		<td><input type="password" name="memPwdCheck" ></td>
		      	</tr>
		      </table>
		      </div>
		  </div>		
	      <div class="modal-footer">
	        <button type="submit" class="btn btn-success disabled">비밀번호 변경</button>
	      </div>
	</form>
      
    </div>
  </div>
</div>
<!--추가정보 수정 Modal -->
<div class="modal fade" id="myPageDetail-plus" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">추가정보 수정</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="/member/updatePlusInfo" method="post" enctype="multipart/form-data">
      	<input type="hidden" name="memId" value="${memberInfo.memId }">
	      <div class="modal-body plus">
	      	<div class="modal-body-plus">
	      		<div>주소</div>
	      		<div>
	      			<input type="text" name="memAddr" id="inputAddr" value="${memberInfo.memAddr }" onclick="sample4_execDaumPostcode();">
	      			<input type="text" name="memAddr">
	      		</div>
	      	</div>
	      	<div class="modal-body-plus">
	      		<div>생일</div>
	      		<div>
	      			<input type="date" name="memBirth" >
	      			<input type="hidden" value="${memberInfo.memBirth }">
	      		</div>
	      	</div>
		  </div>		
	      <div class="modal-footer">
	        <button type="submit" class="btn btn-success">수정하기</button>
	      </div>
	</form>
      
    </div>
  </div>
</div>
<!-- jQuery 문법 쓰기 -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- jQuery validation 문법 쓰기 : 주의! jQuery 문법을 쓴 후에 적어야 됨-->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script type="text/javascript" src="/resources/js/member/my_page_detail.js?ver=39"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>