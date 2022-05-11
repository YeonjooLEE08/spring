function login(){
	const memId = document.querySelector('input[name="memId"]').value;
	const memPwd = document.querySelector('input[name="memPwd"]').value;
	let loginCheck = '';
	$.ajax({
		url: '/member/login', //요청경로
		type: 'post',
		data: {'memId':memId, 'memPwd':memPwd}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			if(result === 0){
				location.href='/admin/test';
				
			}
			else if(result === 1){
				alert('로그인 실패');
				loginCheck += '아이디 또는 비밀번호를 잘못 입력했습니다.';
				document.querySelector('span.loginChk').innerHTML = loginCheck;
			}
			
		},
		error: function() {
			
			alert('실패');
		}
	});
}