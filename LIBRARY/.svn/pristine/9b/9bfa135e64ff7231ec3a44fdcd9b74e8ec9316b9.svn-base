//비밀번호 체크, 틀리면 뒤로 보냄 

function deletePwdChk(){
	const chkForm = document.getElementById('pwdCheck-form');
	const memId = chkForm.querySelector('input[name="memId"]').value;
	const memPwd = chkForm.querySelector('input[name="memPwd"]').value;
	$.ajax({
	   url: '/member/deleteChk', //요청경로
	    type: 'post',
	    data:{'memId':memId, 'memPwd':memPwd}, //필요한 데이터 '데이터이름':값
	    success: function(result) {
			if(result === 1){
				location.href='/member/deleteMemberInfo';
			}
			else if(result === 0){
				alert('비밀번호를 잘못 입력하셨습니다.');
				location.href='/member/myPageDetail';
			}
	    },
	    error: function(){
	      //ajax 실행 실패 시 실행되는 구간
	       alert('실패');
	    }
	});
}

