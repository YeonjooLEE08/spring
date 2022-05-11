function findId(){
	const memName = document.querySelector('input[name="memName"]').value;
	const memEmail = document.querySelector('input[name="memEmail"]').value;
	const showIdDiv = document.querySelector('div.showIdDiv');
$.ajax({
   url: '/member/findId', //요청경로
    type: 'post',
    data:{'memName':memName, 'memEmail':memEmail}, //필요한 데이터 '데이터이름':값
    success: function(result) {
      //ajax 실행 성공 후 실행할 코드 작성
      let str = '';
      if(result === ''){
			str = '해당 정보와 일치하는 아이디가 존재하지 않습니다.';	
		}
	  else{
	      str += memName + '님의 아이디는<br>';
    	  str += result + '입니다.';
		}
      showIdDiv.innerHTML = str;
    },
    error: function(){
      //ajax 실행 실패 시 실행되는 구간
       alert('실패');
    }
});

}

function findPwd(){
	const memId = document.querySelector('input[name="memId"]').value;
	const memName = document.querySelector('input[name="memName"]').value;
	const memEmail = document.querySelector('input[name="memEmail"]').value;

	$.ajax({
	   url: '/member/findPwd', //요청경로
	    type: 'post',
	    data:{'memId':memId, 'memName':memName,'memEmail':memEmail}, //필요한 데이터 '데이터이름':값
	    success: function(result) {
	      //ajax 실행 성공 후 실행할 코드 작성
	      alert('임시 비밀번호를 메일로 발송했어요.');
	    },
	    error: function(){
	      //ajax 실행 실패 시 실행되는 구간
	       alert('실패');
	    }
	});
}