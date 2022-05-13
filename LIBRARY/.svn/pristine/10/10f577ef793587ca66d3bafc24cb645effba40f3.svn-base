 
 
function eqAddr(){
	var chk = document.querySelectorAll('.chk:checked');
	var name = document.getElementById('mName').innerText;
	var tels = document.getElementById('tels').value;
	
	if(chk.length != 0){
		var memName = document.getElementById('memName');
		memName.value = name;
		
		var memTels = document.getElementsByClassName('memTels');
		memTels[0].value = tels.substr(0, 3);
		memTels[1].value = tels.substr(4, 4);
		memTels[2].value = tels.substr(9);
	}
}

//주소검색
 function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수


                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("roadAddress").value = roadAddr;
                

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } 
                else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
  }
  
//textarea 바이트 수 체크하는 함수
function fn_checkByte(obj){
    const maxByte = 200; //최대 100바이트
    const text_val = obj.value; //입력한 문자
    const text_len = text_val.length; //입력한 문자수
    
    let totalByte=0;
    for(let i=0; i<text_len; i++){
    	const each_char = text_val.charAt(i);
        const uni_char = escape(each_char); //유니코드 형식으로 변환
        if(uni_char.length>4){
        	// 한글 : 2Byte
            totalByte += 2;
        }else{
        	// 영문,숫자,특수문자 : 1Byte
            totalByte += 1;
        }
    }
    
    if(totalByte>maxByte){
    	alert('최대 100Byte까지만 입력가능합니다.');
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "red";
        }else{
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "green";
        }
    }
    
    
//구매하기
function payment(){
	var itemName = document.getElementById('itemName').value+'외 '+document.getElementById('itemsCnt').value+'건';
	var totalPrice = document.getElementById('totalPrice').value;
	var email = document.getElementById('memEmail').value;
	var name = document.getElementById('mName').innerText;
	var toName = document.getElementById('memName').value;
	var toTels = document.getElementsByClassName('memTels');
	var tels = document.getElementById('tels').value;
	var addr = document.getElementById('roadAddress').value+', '+document.getElementById('detailAddress').value;
	var postcode = document.getElementById('postcode').value;
	var deliMsg = document.getElementById('textArea_byteLimit').value;
	var agrChk = document.getElementById('agrChk');
	var chkAddr = document.getElementById('chkAddr');
	
	if(agrChk.checked){
		if(chkAddr.checked){
			$.ajax({
			url: '/buy/updateMemAddr', //요청경로
			type: 'post',
			data: {'memAddr':addr}, //필요한 데이터 '데이터이름':값
			success: function(result) {
				alert('주소가 변경되었습니다')
			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('실패');
			}
		});
		}
		var IMP = window.IMP; // 생략가능
		 IMP.init('imp13381691');
		 // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		 // i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
		 IMP.request_pay({
			 pg: 'html5_inicis' , // version 1.1.0부터 지원.
			
			 pay_method: 'card',
			
			 merchant_uid: 'merchant_' + new Date().getTime(),
			 name: itemName,
			 //결제창에서 보여질 이름
			 amount: totalPrice,
			 //가격
			 buyer_email: email,
			 buyer_name: name,
			 buyer_tel: tels,
			 buyer_addr: addr,
			 buyer_postcode: postcode,
			 m_redirect_url: ''
			
		 }, function(rsp) {
			 console.log(rsp);
			 if (rsp.success) {
				 var msg = '결제가 완료되었습니다.';
				 msg += '고유ID : ' + rsp.imp_uid;
				 msg += '상점 거래ID : ' + rsp.merchant_uid;
				 msg += '결제 금액 : ' + rsp.paid_amount;
				 msg += '카드 승인번호 : ' + rsp.apply_num;
				 //JSON.stringify(objArr);
				$.ajax({
					url: '/buy/insertOrder', //요청경로
					type: 'post',
					data: {'totalPrice':totalPrice
							, 'toName' : toName
							, 'toAddr' : addr
							, 'toTell' : toTels[0].value+'-'+toTels[1].value+'-'+toTels[2].value
							, 'payCode' : '신용카드(+간편결제)'
							, 'deliMsg' : deliMsg}, //필요한 데이터 '데이터이름':값
					success: function(result) {
						//ajax 실행 성공 후 실행할 코드 작성
						alert('주문완료페이지로 넘어갑니다.');
						
						location.href = '/buy/buyFin?orderNum='+result;
					},
					error: function() {
						//ajax 실행 실패 시 실행되는 구간
						alert('실패');
					}
				});
			 } else {
				 var msg = '결제에 실패하였습니다.';
				 msg += '에러내용 : ' + rsp.error_msg;
			 }
			 alert(msg);
		 });
			
	}else{
		alert('결제동의에 체크해주세요');
	}
	
	}

function deleteBuy(){
		var itemCode = document.getElementsByClassName('itemCode');
		var itemCnt = document.getElementsByClassName('itemCnt');
		var objArr = [];
		for(var i = 0; i<itemCode.length; i++){
			var obj = new Object();
			
			obj.itemCode = itemCode[i].value;
			obj.itemCnt = itemCnt[i].value;
			objArr[i] = obj;
		}
		$.ajax({
			url: '/buy/deleteBuy', //요청경로
			type: 'post',
			data: {'data':JSON.stringify(objArr)}, //필요한 데이터 '데이터이름':값
			success: function(result) {
				//ajax 실행 성공 후 실행할 코드 작성
				alert('장바구니페이지로 이동합니다.');		
				alert('result');		
				location.href = '/cart/cartView?orderNum='+result;
			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('실패');
			}
		});
	
}
