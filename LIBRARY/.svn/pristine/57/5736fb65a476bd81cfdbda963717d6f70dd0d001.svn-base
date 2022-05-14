function checkPw(){
	var qnaPw = document.getElementById('qnaPw').value;
	
	$.ajax({
   url: '/otherB/checkPw', //요청경로
    type: 'post',
    data:{"qnaPw":qnaPw}, //필요한 데이터 '데이터이름':값
    success: function(result) {
      location.href='/otherB/qnaDetail';
    },
    error: function(){
      //ajax 실행 실패 시 실행되는 구간
      qnaPw = '';
       alert('비밀번호가 잘못입력되었습니다. 다시입력해주세요');
    }
});
}

//qnaPwModal 선택
var qnaPwModal = document.getElementById('qnaPwModal');

//lginModal이 닫힐 때 자동시작하는 이벤트
qnaPwModal.addEventListener('hidden.bs.modal', function (event) {
	//joinModal안에 있는 모든 input태드 선택
	var tags = document.querySelectorAll('#qnaPwModal input');
	
	//선택된 태그들의 value값을 빈값으로 세팅
	for(var i = 0; i < tags.length ; i++){
		tags[i].value = '';
	}
});

//모달에 qnaNum값 가져가기
$(document).on("click", ".qnaPwSpan", function () {
     var qnaNum = $(this).data('id');
     $(".modal-body #qnaNum").val(qnaNum);
});


var filter = 0;
//답변유무로 필터
function answerFilter(){
	filter ++;
	alert(filter);
	
	location.href='/otherB/qnaBoard?answerFilter='+filter;
}
