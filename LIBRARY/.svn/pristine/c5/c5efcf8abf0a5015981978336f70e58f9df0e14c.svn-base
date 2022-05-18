<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

</style>
</head>
<body>
<div class="container">
	<div class="subTit">
      <div class="line_map">홈 > 참여마당 > 공지사항</div>
      <div class="tit">공지사항</div>
   	</div>
   	<div class="detail">
		<table>
			<tbody class="Info">
				<tr>
					<td class="title">${ntBoard.ntTitle}</td>
					<td class="writeTime">${ntBoard.ntCreateDate}</td>
				</tr>
				<tr>
					<td class="writerInfo">${ntBoard.memName}</td>
					<td class="writeInfo">조회수: ${ntBoard.ntRdCnt}</td>
				</tr>
			</tbody>
			<tbody>
				<tr>
					<td class="content" colspan="2">${ntBoard.ntContent}</td>
				</tr>
				<c:if test="${ntBoard.fileName ne null }">
				<tr>
					<td colspan="2"style="border-top: 1px solid #dddddd; padding:5px;"><button style="margin-right: 10px;"type="button" class="btn-default">첨부파일</button><a href="/board/fileDownload?fileName=${ntBoard.fileName}">${ntBoard.fileName}</a></td>
				</tr>
				</c:if>
			</tbody>
		</table>	
		<div class="ntBtn">
			<c:if test="${sessionScope.loginInfo.isAdmin eq 'Y' }" >
				<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="location.href='updateNtBoardForm?ntCode=${ntBoard.ntCode}';">수정</button>
				<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="location.href='deleteNtBoardDetail?ntCode=${ntBoard.ntCode}';">삭제</button>
			</c:if>
			<button type="button" class="btn btn-success btn-sm justify-content-md-end" onclick="location.href='/board/ntBoardList';">목록</button>
	</div>
</div>
</div>
</body>
</html>