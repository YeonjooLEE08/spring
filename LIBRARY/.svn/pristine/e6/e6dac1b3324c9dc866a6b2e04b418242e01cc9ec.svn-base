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
			<form action="/club/clubBoardUpdate" method="post">
				<input type="hidden" name="cbBoardNum" value="${clubBoard.cbBoardNum }">
				<input type="hidden" name="clubCode" value="${clubBoard.clubCode }">
				<div><input type="text" name="cbBoardTitle" value="${clubBoard.cbBoardTitle }"></div>
				<div>작성자 : ${clubBoard.memName }</div>
				<div>작성일 : ${clubBoard.cbBoardDate }</div>
				<div class="hs-write-form-bottom">
					<textarea rows="10" cols="50" name="cbBoardContent">${clubBoard.cbBoardContent}</textarea><br>
				</div>
				<button type="submit" class="btn btn-success btn-sm">등록</button>
			</form>
		</div>
	</div>
</div>
</body>
</html>
