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
	margin-top: 10px;
	text-align: left;
	width: 100%;
}
.inputCmtTb{
	width: 100%;
	margin: 0 auto;
	margin-bottom: 30px;
}
.cmtDiv{
	width: 50%;
	margin: 0 auto;
}
textarea{
	resize: none;
}
.board-img{
	width: 60px; 
	height: 60px; 
	border-radius: 70%;
}
.board-name{
	font-size: 13px;
}
.board-date{
	font-size: 12px; 
	font-weight: normal;
}
.cmt-content{
	margin-top: 20px; 
	margin-bottom: 5px;
}
pre{
	font-size: 20px;
	padding-left: 10px;
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
				<input type="hidden" id="boardNumber" value="${board.boardNum }">
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
				<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="deleteFreeboard();">삭제</button>
			</c:if>
			<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="location.href='/otherB/freeBoard';">목록</button>
		</div>
	</div>
	
	<div class="cmtDiv">
		<div>
			<div style="margin-bottom: 10px;">${cmtList.size() }개의 댓글</div>
			<c:if test="${not empty sessionScope.loginInfo }">
				<form action="/otherB/regFreeBoardCmt" method="post">
				<input type="hidden" name="boardNum" value="${board.boardNum }">
					<table class="inputCmtTb">
						<tr>
							<td>
								<textarea rows="3" 
				                    class="form-control" 
				                    id="textArea_byteLimit" 
				                    name="commentContent" 
				                    onkeyup="fn_checkByte(this)"></textarea>
								<br><sup><span id="nowByte">0</span>/200bytes</sup><span style="font-size: 12px;"> (* 영문/숫자 기준 200자, 한글 기준 자까지 입력 가능합니다.)</span><br>
								<div style="float: right;"><button type="submit" class="btn btn-success btn-sm">댓글등록</button></div>
							</td>
						</tr>
					</table>
				</form>
			</c:if>
		</div>
		<div class="freeCmtDiv" style="width: 100%;">
			<c:forEach items="${cmtList }" var="cmt">
				<table class="freeCmtTb">
					<colgroup>
						<col width="15%">
						<col width="*">						
					</colgroup>
					<tr>
						<td>
							<img class="board-img" alt="" src="/resources/images/member/${cmt.memImage}">
						</td>
						<td>
							<span class="board-name">${cmt.memName }</span><br>
							<span class="board-date">${cmt.commentDate }</span>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<div class="cmt-content">
								<pre>${cmt.commentContent }</pre>
								
							</div>
							<c:if test="${cmt.memId eq sessionScope.loginInfo.memId }">
								<div style="float: right; padding-right: 10px;">
									<button type="button" class="btn btn-success btn-sm" onclick="updateFreeCmt(this, ${cmt.commentNum}, '${cmt.boardNum }');">수정</button>
									<button type="button" class="btn btn-success btn-sm" onclick="deleteFreeCmt(${cmt.commentNum}, '${cmt.boardNum }');">삭제</button>
								</div>
							</c:if>
						</td>
					</tr>
					<tr>
						<td colspan="2"> <hr> </td>
					</tr>
				</table>
			</c:forEach>
		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/js/board/free_board_detail.js?ver=8"></script>
</body>
</html>