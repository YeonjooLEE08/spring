<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	margin: 0 auto;
}
.subTitleDiv{
	margin-top: 100px;
	font-size: large;
	font-weight: bold;
}
.tels, .memTels{
	width: 60px;
}
</style>
</head>
<body>
<div class="container">
	<div>주문결제</div>
	<div>
		<table>
		<colgroup>
			<col width="25%">
			<col width="45%">
			<col width="10%">
			<col width="20%">
		</colgroup>
			<thead>
				<tr>
					<td colspan="2">상품명</td>
					<td>수량</td>
					<td>가격</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${buyList }" var="item">
					<tr>
						<td>
							<img alt="..." src="/resources/images/item/${item.itemAtImgName}" height="100px">
						</td>
						<td>
							<div>${item.itemName }</div>
						</td>
						<td>
							<div>${item.itemCnt }</div>
						</td>
						<td>
							<div>${item.totalPrice }</div>
							<input type="hidden" class="itemCode" value="${item.itemCode }">
							<input type="hidden" class="itemCnt" value="${item.itemCnt }">
						</td>
					</tr>
				</c:forEach>
					<tr>
						<td colspan="3">
							<input type="hidden" id="itemName" value="${buyList[0].itemName }">
							<input type="hidden" id="itemsCnt" value="${buyList.size()-1 }">
							<input type="hidden" id="totalPrice" value="${totalPrice }">
							<div>
								상품구매금액 : ${totalPrice }  + 배송비 0 (무료) = 합계 : 
							</div>
						</td>
						<td>
							<div>
								 ${totalPrice } 원 
							</div>						
						</td>
					</tr>
			</tbody>
		</table>
	</div>
	<div>
		<div class="subTitleDiv">주문자정보</div>
		<div>
			<table>
				<tr>
					<th>이름</th>
					<td id="mName">${mem.memName }</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>
					   	<div class="col-sm-6">
							<div class="input-group mb-3">
							  <input type="text" class="form-control"value="${fn:split(mem.memEmail,'@')[0]}">
							  <span class="input-group-text">@</span>
							  <input type="text" class="form-control" value="${fn:split(mem.memEmail,'@')[1]}">
							  <input type="hidden" name="memEmail" id="memEmail" value="${mem.memEmail }">
							</div>
					    </div>
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						<input type="text" class="tels" value="${fn:substring(mem.memTell,0,3)}"> - 
						<input type="text" class="tels" value="${fn:substring(mem.memTell,4,8)}"> - 
						<input type="text" class="tels" value="${fn:substring(mem.memTell,9,13)}">
						<input type="hidden" id="tels" value="${mem.memTell }">
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div>
		<div class="subTitleDiv">배송정보</div>
		<div>
			<input type="checkbox" class="chk" onclick="eqAddr();"> 위 정보와 같음
			<table>
				<tr>
					<th>이름</th>
					<td>
						<input type="text" name="memName" id="memName">
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>
						<input type="text" name="memTells" class="memTels"> - 
						<input type="text" name="memTells"  class="memTels"> - 
						<input type="text" name="memTells"  class="memTels"> 
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>
						<div>
							<input type="text" id="postcode" placeholder="우편번호">
							<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" id="roadAddress" name="memAddr" placeholder="도로명주소">
							<span id="guide" style="color:#999;display:none"></span>
							<input type="text" id="detailAddress" name="memAddr" placeholder="상세주소">
						</div>
					</td>
				</tr>
				<tr>
					<th>
						<div>배송메세지</div>
						<div>(100자내외)</div>
					</th>
					<td>
						<textarea rows="3" 
		                    class="form-control" 
		                    id="textArea_byteLimit" 
		                    name="textArea_byteLimit" 
		                    onkeyup="fn_checkByte(this)"></textarea>
						<br><sup><span id="nowByte">0</span>/200bytes</sup> (* 영문/숫자 기준 200자, 한글 기준 자까지 입력 가능합니다.)
					</td>
				</tr>
			</table>
			<div>
				<input type="checkbox" id="chkAddr" >
				해당 배송지 정보를 나의 회원정보로 등록합니다.
			</div>
		</div>
	</div>
	<div>
		<div class="subTitleDiv">
			결제예정금액	
		</div>
		<div>
			<table>
				<thead>
					<tr>
						<td>상품금액</td>
						<td></td>
						<td>배송비</td>
						<td></td>
						<td>결제예정금액</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${totalPrice }</td>
						<td> + </td>
						<td>무료</td>
						<td> = </td>
						<td>${totalPrice }</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div>
		<div class="subTitleDiv">결제정보</div>
		<div>
			<table>
				<tr>
					<th>결제방법</th>
					<td>
						<input type="hidden" id="pay" name="payCode" value="html5_inicis">신용카드(+간단결제)<br>
					</td>
				</tr>
			</table>
		</div>
		<div>
			<div>
				<input type="checkbox" id="agrChk">
				&nbsp; 상기 결제정보를 확인하였으며, 구매진행에 동의합니다.
			</div>
			<div>
				<table>
					<tr>
						<td>최종 결제금액</td>
						<td>
							<span>${totalPrice }</span>원
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	
	<div>
		<button type="button" id="check_module" onclick="payment();">주문하기</button>
		<button type="button" onclick="deleteBuy();">취소하기</button>
	</div>
</div>
<script type="text/javascript" src="/resources/js/item/buy.js?var=41"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 아임포트결제api -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- 아래 제이쿼리는 1.0이상이면 원하는 버전을 사용하셔도 무방합니다. -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
</body>
</html>