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
textarea{
	resize: none;
}
.answerTb{
	text-align: left;
	width: 100%;
	margin: 0 auto;
	margin-top: 10px;
}
.inputanswer{
	width: 100%;
	margin: 0 auto;
	margin-bottom: 30px;
	
}
.answerDiv{
	width: 70%;
	margin: 0 auto;
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
      <div class="line_map">홈 > 참여마당 > Q&A</div>
      <div class="tit">Q&A</div>
   	</div>
	<div class="detail">
		<table>
			<tbody class="Info">
				<tr>
					<td class="title">${qnaInfo.qnaTitle }</td>
					<td class="writeTime">${qnaInfo.qnaCreateDate }</td>
				</tr>
				<tr>
					<td class="writerInfo">${qnaInfo.memName}</td>
					<td class="writeInfo">조회수: ${qnaInfo.qnaReadCnt }</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td class="content" colspan="2">
						<pre>${qnaInfo.qnaContent }</pre>
					</td>
				</tr>
			</tbody>
		</table>	
		<div class="ntBtn">
			<c:if test="${qnaInfo.memId eq sessionScope.loginInfo.memId }">
				<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="location.href='/otherB/qnaUpdateFrom?qnaNum=${qnaInfo.qnaNum}';">수정</button>
				<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="location.href='/otherB/qnaDelete?qnaNum=${qnaInfo.qnaNum}';">삭제</button>
			</c:if>
			<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="location.href='/otherB/qnaBoard';">목록</button>
		</div>
	</div>
	
	
	
	<div class="answerDiv">
	<div style="margin-bottom: 20px;">${answerList.size() }개의 댓글</div>
	<c:if test="${sessionScope.loginInfo.memId eq 'admin'}">
		<div>
			<form action="/otherB/regQnaCmt" method="post">
			<input type="hidden" name="qnaNum" value="${qnaInfo.qnaNum }">
				<table class="inputanswer">
					<tr>
						<td>
							문의 건에 대한 답변</td>
					</tr>
					<tr>
						<td>
							<textarea rows="3" 
			                    class="form-control" 
			                    id="textArea_byteLimit" 
			                    name="answerContent" 
			                    onkeyup="fn_checkByte(this)"></textarea>
							<br><sup><span id="nowByte">0</span>/1000bytes</sup><span style="font-size: 12px;"> (* 영문/숫자 기준 1000자, 한글 기준 자까지 입력 가능합니다.)</span><br>
							<div style="float: right;"><button type="submit" class="btn btn-success btn-sm">댓글등록</button></div>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</c:if>
	
	<div>
				<table class="answerTb">
					<c:choose>
						<c:when test="${empty answerList }">
							<tr>
								<td>
									문의하신 답변 확인 중입니다.	
								</td>
							</tr>
						</c:when>
						<c:otherwise>
							<tr>
								<td>
									문의하신 내용의 답변입니다	
								</td>
							</tr>
							<tr>
								<td>
									<hr>
								</td>
							</tr>
						</c:otherwise>
					</c:choose>
					<c:forEach items="${answerList }" var="answer">
						<tr>
							<td>
								<div style="font-size: smaller; vertical-align: baseline;">${answer.answerDate }</div>
							</td>
						</tr>
						<tr>
							<td>
								<div style="margin-top: 10px; margin-bottom: 10px;">
									<pre>${answer.answerContent }</pre>
								</div>
								<c:if test="${sessionScope.loginInfo.memId eq 'admin'}">
									<div style="float: right; padding-right: 10px;">
										<button type="button" class="btn btn-success btn-sm" onclick="updateAnswer(this, '${answer.answerNum}', '${answer.qnaNum }');">수정</button>
										<button type="button" class="btn btn-success btn-sm" onclick="deleteAnswer('${answer.answerNum}', '${answer.qnaNum }');">삭제</button>
									</div>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</table>
		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/js/board/qna_board_detail.js?ver=2"></script>
</body>
</html>