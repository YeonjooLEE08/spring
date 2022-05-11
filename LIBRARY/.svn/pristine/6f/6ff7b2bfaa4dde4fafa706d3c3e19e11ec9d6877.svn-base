//----수량 변경 시 이벤트 지행 코드------//
var ea = document.getElementById('ea');

ea.addEventListener('change', setTotalPrice);
ea.addEventListener('keyup', setTotalPrice);

function setTotalPrice(){
	if(ea.value > 10){
		ea.value = 10;
	}
	
	var price = document.getElementById('priceSpan').dataset.price;
	var cnt = ea.value;
	
	var totalPrice = (price * cnt).toLocaleString();
	document.getElementById('totalPriceSpan').innerHTML = totalPrice + '원 ('+cnt+'개)';
}

function goCart(memId, itemCode){
	if(memId == ''){
		alert('로그인 후 이용바랍니다.');
		location.href='/member/login'
	}
	else{
		
	$.ajax({
	   url: '/cart/insertCart', //요청경로
	    type: 'post',
	    data:{'itemCode':itemCode, 'itemCnt':ea.value}, //필요한 데이터 '데이터이름':값
	    success: function(result) {
	      //ajax 실행 성공 후 실행할 코드 작성
			var result = confirm(`장바구니에 상품을 담았습니다. 
장바구니로 이동할까요?`);
	    	if(result){
				location.href='/cart/cartView';
			}
			else{
				location.href='/item/itemList'
			}
	    },
	    error: function(){
	      //ajax 실행 실패 시 실행되는 구간
	       alert('실패');
	    }
	});	

	}	
}


function buy(memId, itemCode){
	if(memId == ''){
		alert('로그인 후 이용바랍니다.');
		location.href='/member/login'
	}
	else{
		$.ajax({
	   url: '/buy/insertBuyAtOnce', //요청경로
	    type: 'post',
	    data:{'itemCode':itemCode, 'itemCnt':ea.value}, //필요한 데이터 '데이터이름':값
	    success: function(result) {
	      //ajax 실행 성공 후 실행할 코드 작성
			location.href='/buy/buyPage';
			
	    },
	    error: function(){
	      //ajax 실행 실패 시 실행되는 구간
	       alert('실패');
	    }
	});	
	}
	
	/*var cart = document.getElementById('itemForm');
	cart.action = '/cart/buyForm';
	cart.submit();*/
}
