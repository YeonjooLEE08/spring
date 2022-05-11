function applyCancel(memId){
	
	let result = confirm('북클럽 신청을 취소하시겠습니까?');
	
	if(result){
		$.ajax({
			url: '/member/myBookClubCancel', //요청경로
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
	
}