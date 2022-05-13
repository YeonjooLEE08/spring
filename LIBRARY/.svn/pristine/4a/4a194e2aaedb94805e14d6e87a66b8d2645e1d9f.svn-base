<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/common/infoBar.css" rel="stylesheet">
<style type="text/css">
.ntBtn{
	padding-top:10px;
	text-align:right;
}
.content thead{
	text-align: left;
    border-bottom: 1px solid #dbdbdb;
    padding: 15px;
    background: #eff2f5;
}
.detail{
	padding-top:20px;
}
.detail table {
	border-bottom: 1px solid #dddddd;
	border-collapse: collapse;
	width:100%;
}
.detail table .title{
	text-align: left;
	padding:10px 20px 5px 20px;
	width: 70%;
	font-size: 1.5rem;
	font-weight: 600;
}

.detail table .writeTime{
	text-align: right;
	padding:15px 20px 0px 10px;
}
.detail table .writeInfo{
	text-align: right;
	padding:0px 20px 10px 10px;
}

.detail table .writerInfo, .detail table .content{
	text-align: left;
	padding:5px 10px 5px 20px;
}

.detail table .Info{
	border-top: 0.25rem solid #16784B;
	border-bottom: 1px solid #dddddd;
	background-color: #E7EDE4;
}
.freeCmtTb{
	border: 1px solid gray;
	margin-top: 10px;
	text-align: left;
	width: 80%;
}
.inputCmtTb{
	margin: 0 auto;
	margin-bottom: 30px;
}
.freeCmtDiv{
	width: 50%;
	margin: 0 auto;
}
</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 참여마당 > 자유게시판</div>
      <div class="tit">자유게시판</div>
   	</div>
	<div class="detail">
		<table>
			<tbody class="Info">
				<tr>
					<td class="title">${board.boardTitle }</td>
					<td class="writeTime">${board.boardCreateDate }</td>
				</tr>
				<tr>
					<td class="writerInfo">${board.memName}</td>
					<td class="writeInfo">조회수: ${board.boardReadCnt }</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td class="content" colspan="2">
						<pre>${board.boardContent }</pre>
					</td>
				</tr>
			</tbody>
		</table>	
		<div class="ntBtn">
			<c:if test="${board.memId eq sessionScope.loginInfo.memId }">
				<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="location.href='/otherB/updateFreeBoard?boardNum=${board.boardNum}';">수정</button>
				<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="location.href='/otherB/deleteFreeBoard?boardNum=${board.boardNum}';">삭제</button>
			</c:if>
			<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="location.href='/otherB/freeBoard';">목록</button>
		</div>
	</div>
	
	<div class="cmtDiv">
	<c:if test="${not empty sessionScope.loginInfo }">
		<div>
			<form action="/otherB/regFreeBoardCmt" method="post">
			<input type="hidden" name="boardNum" value="${board.boardNum }">
				<table class="inputCmtTb">
					<tr>
						<td>
							<img alt="" src="/resources/images/member/${loginInfo.memImage }" height="50px;"><br>
							${sessionScope.loginInfo.memName}
						</td>
						<td>
							<textarea rows="3" 
			                    class="form-control" 
			                    id="textArea_byteLimit" 
			                    name="commentContent" 
			                    onkeyup="fn_checkByte(this)"></textarea>
							<br><sup><span id="nowByte">0</span>/200bytes</sup> (* 영문/숫자 기준 200자, 한글 기준 자까지 입력 가능합니다.)
						</td>
						<td>
							<button type="submit">댓글등록</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</c:if>
		<div class="freeCmtDiv">
			<c:forEach items="${cmtList }" var="cmt">
				<table class="freeCmtTb">
					<colgroup>
						<col width="15%">
						<col width="*">						
					</colgroup>
					<tr>
						<td>
							<img alt="" src="/resources/images/member/${cmt.memImage}" height="50px;">
						</td>
						<td>
							<div>${cmt.memName }</div>
							<div>${cmt.commentDate }</div>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<div>
								${cmt.commentContent }
								
							</div>
							<c:if test="${cmt.memId eq sessionScope.loginInfo.memId }">
								<div>
									<button type="button" onclick="updateFreeCmt(this, ${cmt.commentNum}, '${cmt.boardNum }');">수정</button>
									<button type="button" onclick="deleteFreeCmt(${cmt.commentNum}, '${cmt.boardNum }');">삭제</button>
								</div>
							</c:if>
						</td>
					</tr>
				</table>
			</c:forEach>
		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/js/board/free_board_detail.js?ver=4"></script>
</body>
</html>