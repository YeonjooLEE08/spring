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
.buy_container{
	margin: 0 auto;
	width: 90%;
}
.buytitleDiv{
	margin-top: 100px;
	margin-bottom: 10px;
	font-size: x-large;
}
.tels, .memTels{
	width: 60px;
}
textarea{
	resize: none;
}
.buysubDiv{
	width: 100%;
	border:2px solid #c7e2d1;;
	border-radius: 8px;
	padding: 10px;

}
.itembuytable{
	width: 90%;
	margin: 0 auto;
}
.buymemTb{
	width: 90%;
}
.buymemTb tr th{
	text-align: right;
	vertical-align: middle;
	padding-top: 10px;
}
.buymemTb tr td{
	text-align: left;
	padding-left: 10px;
	vertical-align: middle;
	padding-top: 10px;
}
input{
	border:1px solid #CCCDCD;
	border-radius: 3px;
	padding-left: 5px;
}
.checks {
	position: relative;
	vertical-align: middle;
}
.checks input[type="checkbox"] {  /* 실제 체크박스는 화면에서 숨김 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0
}
.checks input[type="checkbox"] + label {
  display: inline-block;
  position: relative;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
}
.checks input[type="checkbox"] + label:before {  /* 가짜 체크박스 */
  content: ' ';
  display: inline-block;
  width: 15px;  /* 체크박스의 너비를 지정 */
  height: 15px;  /* 체크박스의 높이를 지정 */
  line-height: 15px; /* 세로정렬을 위해 높이값과 일치 */
  margin: -2px 8px 0 0;
  text-align: center; 
  vertical-align: middle;
  background: #fafafa;
  border: 1px solid #16784B;;
  border-radius : 3px;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}
.checks input[type="checkbox"] + label:active:before,
.checks input[type="checkbox"]:checked + label:active:before {
  box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
}

.checks.etrans input[type="checkbox"] + label {
  padding-left: 30px;
}
.checks.etrans input[type="checkbox"] + label:before {
  position: absolute;
  left: 0;
  top: 0;
  margin-top: 0;
  opacity: .6;
  box-shadow: none;
  border-color: #16784B;;
  -webkit-transition: all .12s, border-color .08s;
  transition: all .12s, border-color .08s;
}
.checks.etrans input[type="checkbox"]:checked + label:before {
  position: absolute;
  content: "";
  width: 10px;
  top: -5px;
  left: 5px;
  border-radius: 0;
  opacity:1; 
  background: transparent;
  border-color:transparent #6cc0e5 #6cc0e5 transparent;
  border-top-color:transparent;
  border-left-color:transparent;
  -ms-transform:rotate(45deg);
  -webkit-transform:rotate(45deg);
  transform:rotate(45deg);
}
.no-csstransforms .checks.etrans input[type="checkbox"]:checked + label:before {
  /*content:"\2713";*/
  content: "\2714";
  top: 0;
  left: 0;
  width: 21px;
  line-height: 21px;
  color: #16784B;;
  text-align: center;
  border: 1px solid #16784B;;
}

.footerTb{
	border-bottom: 2px solid #c7e2d1;
	width: 100%;
	text-align: center;
	margin: 0 auto;
	margin-bottom: 20px;
	margin-top: 20px;
}
</style>
</head>
<body>
<div class="nonSide-container">
<div class="buy_container">
	<div class="buytitleDiv">주문결제</div>
	<div class="buysubDiv">
		<table class="table table-border text-center itembuytable">
		<colgroup>
			<col width="25%">
			<col width="*">
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
						<td style="text-align: left; padding-left: 10px;">
							<div>${item.itemName }</div>
						</td>
						<td>
							<div>${item.itemCnt } 개</div>
						</td>
						<td>
							<div>${item.totalPrice } 원</div>
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
								상품구매금액 : ${totalPrice }원  + 배송비<span style="font-size: x-small;">(무료)</span> 0원  = 합계 : 
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
		<div class="buytitleDiv">주문자정보</div>
		<div class="buysubDiv">
			<table class="buymemTb">
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
		<div class="buytitleDiv">배송정보</div>
		<div class="buysubDiv">
			<div class="checks etrans">
				<input type="checkbox" class="chk" id="ex_chk3" onclick="eqAddr();">
			  	<label for="ex_chk3">위 정보와 같음</label> 
			</div>
			<table class="buymemTb">
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
							<input type="text" id="postcode" placeholder="우편번호" required="required">
							<button type="button" class="btn btn-success btn-sm"  onclick="sample4_execDaumPostcode()">우편번호 찾기</button><br>
							<input type="text" id="roadAddress" name="memAddr" placeholder="도로명주소" style="margin-top: 10px; width: 400px;" required>
							<span id="guide" style="color:#999;display:none"></span>
							<input type="text" id="detailAddress" name="memAddr" placeholder="상세주소" style="width: 400px;" required>
						</div>
					</td>
				</tr>
				<tr>
					<th>
						배송메세지<br>
						<span style="font-size: x-small;">(100자내외)</span>
					</th>
					<td>
						<textarea rows="3" 
		                    class="form-control" 
		                    id="textArea_byteLimit" 
		                    name="textArea_byteLimit" 
		                    onkeyup="fn_checkByte(this)"></textarea>
						<sup><span id="nowByte">0</span>/200bytes</sup>
						<span style="font-size: small;">(* 영문/숫자 기준 200자, 한글 기준 자까지 입력 가능합니다.)</span>
					</td>
				</tr>
			</table>
			<div>
				<div class="checks etrans">
					<input type="checkbox" id="chkAddr" >
				  	<label for="chkAddr">해당 배송지 정보를 나의 회원정보로 등록합니다.</label> 
				</div>
			</div>
		</div>
	</div>
	<div>
		<div class="buytitleDiv">
			결제예정금액	
		</div>
		<div class="buysubDiv">
			<table style="width: 90%; text-align: center;">
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
						<td>${totalPrice } 원</td>
						<td> + </td>
						<td>무료</td>
						<td> = </td>
						<td>${totalPrice } 원</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div>
		<div class="buytitleDiv">결제정보</div>
		<div class="buysubDiv">
			<table>
				<tr>
					<th>결제방법</th>
					<td>
						<input type="hidden" id="pay" name="payCode" value="html5_inicis">신용카드(+간단결제)<br>
					</td>
				</tr>
			</table>
		</div>
		<div style="margin-top: 10px;">
			<div class="checks etrans">
				<input type="checkbox" id="agrChk">
			  	<label for="agrChk">상기 결제정보를 확인하였으며, 구매진행에 동의합니다.</label> 
			</div>
			<div>
				<table class="footerTb">
					<tr>
						<td>최종 결제금액 &nbsp; : &nbsp;&nbsp;<span>${totalPrice }</span>원
					</tr>
				</table>
			</div>
		</div>
	</div>
	
	<div style="text-align: right;">
		<button type="button" class="btn btn-success btn-sm" id="check_module" onclick="payment();">주문하기</button>
		<button type="button" class="btn btn-success btn-sm" onclick="deleteBuy();">취소하기</button>
	</div>
</div>
</div>
<script type="text/javascript" src="/resources/js/item/buy.js?var=42"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 아임포트결제api -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- 아래 제이쿼리는 1.0이상이면 원하는 버전을 사용하셔도 무방합니다. -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
</body>
</html>