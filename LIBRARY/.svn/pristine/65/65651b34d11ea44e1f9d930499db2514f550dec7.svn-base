/*const reg = /[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/ ]/gi;
let inputId = document.querySelector('#inputId').value;
function removeSpecData(){
	inputId = inputId.replace(reg, "");
}	

inputId.addEventListener('keyup', removeSpecData);

*/
/*유효성 검사*/
$('#joinForm').validate({
	debug: false,
	groups:{
		username1: 'memTell1 memTell2',
		username2: 'memEmail1 memEmail2'
	},
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
		memTell1: {
		digits: true,
		required: true,
		minlength: 3,
		maxlength: 4
		},
		memTell2:{
		digits: true,
		required: true,
		minlength: 4,
		maxlength: 4
		},
		memEmail1:{
		required: true
		},
		memEmail2:{
		required: true
		},
		memAddr:{
		required: true
		}
      },
	messages: {
  	  memId: {
			required: '필수 입력 항목입니다.',
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
	memTell1: {
		digits: '올바른 전화번호 표기 형식이 아닙니다.',
		required: '필수입력 항목입니다.',
		minlength: '3~4자리의 숫자를 입력해 주세요.',
		maxlength: '4자리의 숫자를 입력해 주세요.'
		},
	memTell2: {
		digits: '올바른 전화번호 표기 형식이 아닙니다.',
		required: '필수입력 항목입니다.',
		minlength: '3~4자리의 숫자를 입력해 주세요.',
		maxlength: '4자리의 숫자를 입력해 주세요.'
		},
	memEmail1: {
		required: '필수입력 항목입니다.'
		},
	memEmail2: {
		required: '필수입력 항목입니다.'
		},
	memAddr:{
		required: '필수입력 항목입니다.'
		}
      },
	errorElement:'div',
	errorPlacement: function(error,element){
		if($(element).attr('id') == 'inputTell1' || $(element).attr('id') == 'inputTell2'){
			error.insertAfter($('#joinTell'));
		}
		else if($(element).attr('id') == 'inputEmail1' || $(element).attr('id') == 'inputEmail2'){
			error.insertAfter($('#joinEmail'));
		}
		else{
			error.insertAfter(element);
		}
		error.css('color', 'red');
		error.css('font-size', '12px');
		error.css('margin-top', '2px');
	  },
      submitHandler: function(form) {
		$('#inputTell1').attr('name', 'memTell');
		$('#inputTell2').attr('name', 'memTell');
		$('#inputEmail1').attr('name', 'memEmail');
		$('#inputEmail2').attr('name', 'memEmail');
		removeSpecData(form);
        form.submit();   //유효성 검사를 통과시 전송
      }
   });

/*아이디 중복 체크 */
const memId = document.getElementById('inputId').value;
function checkId(){
$.ajax({
		url: '/member/checkId', //요청경로
		type: 'post',
		data: {'memId':memId}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			if(result === 1){
				$('.id-unavailable').css("display", "inline-block");
				$('.id-available').css("display", "none");
			}
			else if(result === 0) {
				$('.id-available').css("display", "inline-block");
				$('.id-unavailable').css("display", "none");
				$(".wrapper > submit").attr("disabled", false);
			}
			
		},
		error: function() {
			
			alert('실패');
		}
	});
}
function lockId(){
	$(".wrapper > submit").attr("disabled", true);
}
document.querySelector('#inputId').addEventListener('keyup', lockId);


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


    	