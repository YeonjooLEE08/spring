//기본정보 조회 시, value값 표시하기
const birth = document.querySelector('.modal-body-plus input[type="hidden"]').value;
const result = birth.replace(/[^0-9]/g, '').replace(/^(\d{0,4})(\d{0,2})(\d{0,2})$/g, '$1-$2-$3');

document.querySelector('.modal-body-plus input[type="date"]').value = result;

//기본정보 변경 시 변경되는 프로필 이미지 미리보기
function previewFile(){
	let preview = document.getElementById('thumbnail');
	let file = document.querySelector('input[type=file]').files[0];
	let reader = new FileReader();
	
	reader.addEventListener("load", function(){
		preview.src = reader.result;
	}, false);

	if(file){
		reader.readAsDataURL(file);
	}
}
//프사 삭제

function deleteProfileImage(){
	const hiddenMemImg = document.querySelector('#basicForm input[name="memImage"]');
	
	let preview = document.getElementById('thumbnail');
	preview.src = '/resources/images/member/profile_sample.jpg';
	hiddenMemImg.value = 'profile_sample.jpg';
	
}


//기본정보 유효성 검사

$('#basicForm').validate({
      debug: false,
	  groups: {
      	username: 'memTell1 memTell2'
      },	
      rules: {
		memName:{
			required: true
		},
		memTell1:{
			required: true,
			digits:true,
			minlength: 3,
			maxlength: 4
		},
		memTell2:{
			required: true,
			digits:true,
			minlength: 4,
			maxlength: 4
		},
		memEmail:{
			required: true
		}
      },
      messages: {
		memName:{
			required: '필수 입력 사항입니다'
		},
		memTell1:{
			required: '필수 입력 사항입니다',
			digits:'전화번호 표기 방식이 올바르지 않습니다',
			minlength: '3~4자리의 숫자를 입력해 주세요.',
			maxlength: '4자리의 숫자를 입력해 주세요.'
		},
		memTell2:{
			required: '필수 입력 사항입니다',
			digits:'전화번호 표기 방식이 올바르지 않습니다',
			minlength: '3~4자리의 숫자를 입력해 주세요.',
			maxlength: '4자리의 숫자를 입력해 주세요.'
		},
		memEmail:{
			required: '필수 입력 사항입니다'
		}
      },
      errorElement:'div',
      errorPlacement: function(error,element){
		if($(element).attr('id') == 'validateTell_1' || $(element).attr('id') == 'validateTell_2' ){
			error.insertAfter($('#validateTell_2'));
		}
		else{
			error.insertAfter(element);
		}
	
		error.css('color', 'red');
		error.css('font-size', '12px');
	  },
      submitHandler: function(form) {
		$('#validateTell_1').attr('name', 'memTell');
		$('#validateTell_2').attr('name', 'memTell');
	
         form.submit();   //유효성 검사를 통과시 전송
      }
   });

//보안정보 현재 비밀번호 확인
const secretInfoForm = document.getElementById('secretForm');
const memId = document.querySelector('input[name="memId"]').value;
const submitBtn = secretInfoForm.querySelector('button');
const nowPwd = secretInfoForm.querySelector('input[type="password"]');
function nowPwdChk(){
	$.ajax({
		url: '/member/checkPwd', //요청경로
		type: 'post',
		data: {'memPwd':nowPwd.value, 'memId':memId}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			if(result === 1){
				submitBtn.className = 'btn btn-success';
			}
		},
		error: function() {
			
			alert('실패');
		}
	});
	
}

nowPwd.addEventListener('keyup', nowPwdChk);
//보안정보 유효성 검사

$('#secretForm').validate({
      debug: false,

      rules: {
		memPwdCheck: { 
            equalTo: '#inputPwd'
         }
      },
      messages: {
		memPwdCheck: {
			equalTo: '위에 입력하신 비밀번호랑 일치하지 않아요😥'
		},
      },
      errorElement:'div',
      errorPlacement: function(error,element){
		error.insertAfter(element);
		error.css('color', 'red');
		error.css('font-size', '12px');
	  },
      submitHandler: function(form) {
         form.submit();   //유효성 검사를 통과시 전송
      }
   });
   
//추가 정보 수정 시 우편번호
function sample4_execDaumPostcode() {
	new daum.Postcode({
	oncomplete: function(data) {
    var roadAddr = data.roadAddress; // 도로명 주소 변수
    // 우편번호와 주소 정보를 해당 필드에 넣는다.
    document.getElementById("inputAddr").value = roadAddr;
			}
 	 	}).open();
	}
    	

    	
function showPopup(){
	$('#myPageDetail-basic .modal-body-top-right input').each(function(index, element){
		$(element).val('');
	});
	
	$('#myPageDetail-basic').modal('show');
}    	
    	
    	