

function acceptance(clubCode, memId, getId){
	let result = confirm('수락하시겠습니까?');
	
	if(result){
		
		$.ajax({
			url: '/clubAdmin/clubJoinAcceptance', //요청경로
			type: 'post',
			data: {'clubCode':clubCode, 'memId':memId, 'getId':getId}, //필요한 데이터 '데이터이름':값
			success: function(result) {
				//ajax 실행 성공 후 실행할 코드 작성
				location.reload();
				
			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('실패');
			}
		});
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
//모달에 id값 넘겨주기
$(".open-msgModal").click(function(){
	var data = $(this).data('id');
    $("#get-name.form-control").val(data);
});



function rejection(memId){
	let result = confirm('거절하시겠습니까?');
	
	if(result){
		$.ajax({
			url: '/clubAdmin/clubJoinRejection', //요청경로
			type: 'post',
			data: {'memId':memId}, //필요한 데이터 '데이터이름':값
			success: function(result) {
				//ajax 실행 성공 후 실행할 코드 작성
				location.reload();
				
			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('실패');
			}
		});
	}
	else{
		return;
	}
}

function kick(memId){
	let result = confirm('강퇴하시겠습니까?');
	
	if(result){
		$.ajax({
			url: '/clubAdmin/clubMemKick', //요청경로
			type: 'post',
			data: {'memId':memId}, //필요한 데이터 '데이터이름':값
			success: function(result) {
				//ajax 실행 성공 후 실행할 코드 작성
				location.reload();
				
			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('실패');
			}
		});
	}
	else{
		return;
	}
}

