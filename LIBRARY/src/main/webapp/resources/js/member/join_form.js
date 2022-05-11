 //특수 문자 제거
 
const joinForm = document.querySelector('#joinForm');

function removeSpecData(){
	const reg = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/ ]/gi;
	let id = form.querySelector('#inputId');
	
	id = id.replace(reg, "");
	alert(id);
}




joinForm.addEventListener('submit', removeSpecData);


/*유효성 검사*/
$('#joinForm').validate({
      debug: false,

      rules: {
		memId: {
			required: true,
			minlength: 5,
			maxlength: 12
		},
        memPwdCheck: { 
			required: true,
            equalTo: '#inputPwd'
         },
         memName: {
			required: true
		},
         memBirth: {
			required: true
		},
        memGender:{
			required: true
		},
		memTell: {
			number: true,
			required: true
		},
		memEmail:{
			required: true
		},
		memAddr:{
			required: true
		}
      },
      messages: {
         memId: {
			required: '필수입력 항목입니다.',
            minlength: '5자 이상 입력해 주셔야 해요.',           
            maxlength: '12자 이하로 입력해 주셔야 해요.'            
         },
         memPwdCheck: {
		required: '필수입력 항목입니다.',
			equalTo: '위에 입력하신 비밀번호랑 일치하지 않아요😥'
		},
		memName:{
			required: '필수입력 항목입니다.',
		},
		memBirth: {
			required: '필수입력 항목입니다.'
		},
		memGender:{
			required: '필수입력 항목입니다.'
		},
		memTell: {
			number: '전화번호 표기 방식이 올바르지 않습니다',
			required: '필수입력 항목입니다.'
		},
		memEmail: {
			required: '필수입력 항목입니다.'
		},
		memAddr:{
			required: '필수입력 항목입니다.'
		}
      },
      errorElement:'div',
      errorPlacement: function(error,element){
		error.insertAfter(element);
		error.css('color', 'red');
		error.css('font-size', '12px');
		error.css('margin-top', '2px');
	  },
      submitHandler: function(form) {
		removeSpecData(form);
        form.submit();   //유효성 검사를 통과시 전송
      }
   });

/*아이디 중복 체크 */
function checkId(){
const memId = document.getElementById('inputId').value;

$.ajax({
		url: '/member/checkId', //요청경로
		type: 'post',
		data: {'memId':memId}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			if(result === 1){
				$('.id-unavailable').css("display", "inline-block");
				$('.id-available').css("display", "none");
				$('button[type="submit"]').css("disabled", true);
			}
			else if(result === 0) {
				$('.id-available').css("display", "inline-block");
				$('.id-unavailable').css("display", "none");
			}
			
		},
		error: function() {
			
			alert('실패');
		}
	});
}



/*우편번호 api*/
function sample4_execDaumPostcode() {
	new daum.Postcode({
	    oncomplete: function(data) {
	        var roadAddr = data.roadAddress; // 도로명 주소 변수
	        // 우편번호와 주소 정보를 해당 필드에 넣는다.
	        document.getElementById("inputAddr").value = roadAddr;
	    	}
	  }).open();
}

    	