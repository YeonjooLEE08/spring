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
   .reg-btn{
	   	background-color: #ffa900;
		color: white;
   }
</style>
</head>
<body>
<div class="container">
	<div class="hs-write-form ">
		 <div class="hs-write-form-top">
			<form action="/club/regClubBoard" method="post">
				<input type="hidden" name="clubCode" value="${clubCode }">
				<div class="form-check">
				  <input class="form-check-input" type="checkbox" value="1" name="cbPin" id="flexCheckDefault">
				  <label class="form-check-label" for="flexCheckDefault">
				   공지
				  </label>
				</div>
				<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
				<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
				<input type="hidden" name="memImage" value="${sessionScope.loginInfo.memImage}">
				 <div>
				 	<input type="text" name="cbBoardTitle" placeholder="제목">
				 </div>
				 <div class="hs-write-form-bottom">
					<textarea rows="20" cols="60" name="cbBoardContent" id="textarea" placeholder="내용"></textarea>
				</div>
				<div class="d-grid gap-2 d-md-flex justify-content-end">
					<button type="submit" class="reg-btn btn" onclick="regClubBoard();">등록</button>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>