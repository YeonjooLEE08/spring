
//장바구니 삭제
function deleteCart(tag, itemCode){
	var result = confirm('삭제하시겠습니까?');
	
	if(result){
		location.href='/cart/deleteCart?itemCode='+itemCode;
	}	
}

//장바구니 수량변경
function turnCnt(selectTag, itemCode, itemPrice){
	var itemCnt = selectTag.parentElement.previousElementSibling.firstElementChild.value;
	
	$.ajax({
		url: '/cart/updateitemCnt', //요청경로
		type: 'post',
		data: {'itemCode':itemCode, 'itemCnt':itemCnt}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			//총 가격 변경
			var totalPrice = itemCnt * itemPrice;
			//closes() : 선택한 태그 기준으로 가장 가까운 부모태그를 찾아감. 
			selectTag.closest('td').nextElementSibling.innerText = '￦' + totalPrice.toLocaleString();
			
			//구매가격 변경
			var buyPrice = 0;
			var totalPriceTds = document.getElementsByClassName('totalPriceTd');
			for(var i = 0 ; i < totalPriceTds.length ; i++){
				var originPrice = totalPriceTds[i].innerText;//￦10,000
				//substr(시작인덱스, 길이): 문자열자르기 함수
				var price = parseInt(originPrice.substr(1, originPrice.length-1).replace(/,/g, ''));//10,000
				buyPrice += price;
		}	
			document.getElementById('buyPriceDiv').innerText =  '￦' + buyPrice.toLocaleString();
			document.getElementById('buytotalPriceDiv').innerText =  '￦' + buyPrice.toLocaleString();	
			
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
}

//체크박스 전체선택, 전체해제
function Allcheck(){
	var isChecked = document.getElementById('chk').checked;
	var checkBoxes = document.getElementsByClassName('chk');
	
	//제목줄의 체크박스가 체크됐을때
	if(isChecked){
		for(var i = 0; i<checkBoxes.length; i++){
			checkBoxes[i].checked = true;
		}
	}
	else{
		for(var i = 0; i<checkBoxes.length; i++){
			checkBoxes[i].checked = false;
		}	
	}
}

//선택삭제
function deleteCarts(){
	var chk = document.querySelectorAll('.chk:checked');
	
	if(chk.length == 0){
		alert('삭제할 상품을 선택하세요');
		return;
	}
	
	//선택한 상품코드를 저장할 배열
	var itemCodes = [];
	for(var i = 0; i<chk.length; i++){
		itemCodes[i] = chk[i].value;
	}
	
	location.href='/cart/deleteCarts?itemCodes='+itemCodes;
}


//선택 구매 클릭시 구매화면 넘어가기
function buy(){
	//필요한 데이러틀 가져온다(상품코드, 수량)
	//체크한 상품의 상품코드
	var checkBoxes = document.querySelectorAll('.chk:checked');
	var objArr = [];
	for(var i = 0; i<checkBoxes.length; i++){
		var obj = new Object();
		
		obj.itemCode = checkBoxes[i].value;
		obj.itemCnt = checkBoxes[i].closest('tr').querySelector('input[type="number"]').value;
		objArr[i] = obj;
	}
	
	//JSON.stringify(objArr);
	$.ajax({
		url: '/buy/insertBuy', //요청경로
		type: 'post',
		data: {'data':JSON.stringify(objArr)}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			//ajax 실행 성공 후 실행할 코드 작성
			alert('구매페이지로 넘어갑니다.');
			
			location.href = '/buy/buyPage';
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
}