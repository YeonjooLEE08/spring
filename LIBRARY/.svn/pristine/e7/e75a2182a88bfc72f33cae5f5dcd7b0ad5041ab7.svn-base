function clubCreate(tag){
	if ($("#clubName").val() == "") {
	alert("클럽명을 정확히 입력해주세요");
	return;
}
	else{
		var result = confirm('모임을 생성하시겠습니까?');
		var formTag = document.getElementById('regClub');
		if(result){
			alert('이달의 책을 등록해주십시오.');
			formTag.submit();
		}
		else{
			return;
		}
	}
	
}

function byteCheck(obj, maxByte){
	
	var str = obj.value;
    var str_len = str.length;


    var rbyte = 0;
    var rlen = 0;
    var one_char = "";
    var str2 = "";


    for(var i=0; i<str_len; i++)
    {
        one_char = str.charAt(i);
        if(escape(one_char).length > 4) {
            rbyte += 2;                                         //한글2Byte
        }else{
            rbyte++;                                            //영문 등 나머지 1Byte
        }
        if(rbyte <= maxByte){
            rlen = i+1;                                          //return할 문자열 갯수
        }
     }
     if(rbyte > maxByte)
     {
        // alert("한글 "+(maxByte/2)+"자 / 영문 "+maxByte+"자를 초과 입력할 수 없습니다.");
        alert("메세지는 최대 " + maxByte + "byte를 초과할 수 없습니다.")
        str2 = str.substr(0,rlen);                                  //문자열 자르기
        obj.value = str2;
        fnChkByte(obj, maxByte);
     }
     else
     {
        document.getElementById('byteInfo').innerText = rbyte;
     }	
}

//아이디 중복검사
$('#clubName').on("propertychange change keyup paste input", function(){

var clubName = $('#clubName').val();			// .id_input에 입력되는 값
	var data = {clubName : clubName}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
	
	$.ajax({
		type : "post",
		url : "/club/clubNameChk",
		data : data,
		success : function(result){
			
				if(result != 'fail'){
				$('.name_input_re_1').css("display","inline-block");
				$('.name_input_re_2').css("display", "none");				
			} else {
				$('.name_input_re_2').css("display","inline-block");
				$('.name_input_re_1').css("display", "none");				
			}			
		}
	}); // ajax 종료
});


$('#regClub').validate({
	//true : 유효성 검사 성공 시에도 submit이 되지 않음.
	debug: false,
	
	//유효성 검사 대상 설정 
	rules: {
		clubName: { //input 태그의 name 속성으로 검사 대상을 지정
			required: true, //필수입력
			minlength: 2, //최소길이
			maxlength: 10 //최대길이
		}
	},
	//유효성 검사 실패 시 나타날 메세지 설정
	messages: {
		clubName: {//input 태그의 name 속성으로 검사 대상을 지정
			required: "북클럽명을 입력하시오.",
			minlength: "이름은 2자 이상 입력해주세요!",
			maxlength: "이름은 10글자 이하로 작성해주세요."
		}
	},
	//유효성 실패 시 추가할 태그 (defalut:label)
	errorElement: 'div',
	//유효성 검사 실패 시 메세지 출력 방식
	errorPlacement: function(error, element) {
		//element: 유효성 검사 실패한 태그(input)
		//error: 검사 실패 시 자동 추가되는 태그
		error.insertAfter(element);
		error.css('color', 'red');
		error.css('font-size','14px');
	},
	//유효성 검사 성공 시 실행
	submitHandler: function(form) {
		form.submit();   //유효성 검사를 통과시 전송
	}
});






























