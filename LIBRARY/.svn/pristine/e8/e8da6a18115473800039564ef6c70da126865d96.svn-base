function bookPlanerDelete(){
	if(confirm('삭제할까요?')){
		deleteBookPlaner();
	} else {
	}

}

function deleteBookPlaner(){
	const code = document.querySelector('.hiddenComplitCode').value;
	$.ajax({
			url: '/member/bookPlanerDelete', //요청경로
			type: 'post',
			data: {'complitCode':code}, //필요한 데이터 '데이터이름':값
			success: function(result) {
				alert('삭제 되었습니다.');
				location.href='/member/bookPlaner';
			},
			error: function() {
				alert('실패');
			}
		});
}


		