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
</style>
</head>
<body>
<div class="row">
	<div class="col-4"></div>
	<div class="hs-write-form col-4">
		 <div class="hs-write-form-top">
			<form action="/club/regClubBoard" method="post">
				<input type="hidden" name="clubCode" value="${clubCode }">
				<input type="hidden" name="memId" value="${sessionScope.loginInfo.memId }">
				<input type="hidden" name="memName" value="${sessionScope.loginInfo.memName }">
				<input type="hidden" name="memImage" value="${sessionScope.loginInfo.memImage}">
				 <div>
				 	<input type="text" name="cbBoardTitle" placeholder="제목">
				 </div>
				 <div class="hs-write-form-bottom">
					<textarea rows="8" cols="50" name="cbBoardContent" id="textarea" placeholder="내용"></textarea>
				</div>
				<div class="d-grid gap-2 d-md-flex justify-content-end">
					<button type="submit" class="btn btn-success btn-sm" onclick="regClubBoard();">등록</button>
				</div>
			</form>
		</div>
	</div>
</div>

</body>
</html>