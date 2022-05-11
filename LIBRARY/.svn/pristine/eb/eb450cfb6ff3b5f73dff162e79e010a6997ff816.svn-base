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
	let preview = document.getElementById('thumbnail');

	
	preview.src = '/resources/images/member/profile_sample.jpg';
	

	
}


//기본정보 유효성 검사

$('#basicForm').validate({
      debug: false,

      rules: {
		memTell:{
			digits:true
		}
      },
      messages: {
		memTell:{
			digits:'전화번호 표기 방식이 올바르지 않습니다'
		}
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
    	
