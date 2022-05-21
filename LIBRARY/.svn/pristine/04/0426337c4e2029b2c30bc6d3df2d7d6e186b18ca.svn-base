

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

function deleteClub(clubCode, memId){
	let result = confirm('삭제된 북클럽은 복구할 수 없습니다. 정말 삭제하시겠습니까? ');
	
	if(result){
		
		$.ajax({
			url: '/clubAdmin/deleteClub', //요청경로
			type: 'post',
			data: {'clubCode':clubCode, 'memId':memId}, //필요한 데이터 '데이터이름':값
			success: function(result) {
				//ajax 실행 성공 후 실행할 코드 작성
				location.href = '/club/clubList';
				
			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('실패');
			}
		});
	}
}

