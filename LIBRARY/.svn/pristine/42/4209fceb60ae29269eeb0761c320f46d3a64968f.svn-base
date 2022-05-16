function createClub(){
	let memId = document.getElementById('memId').value;
	let clubAdmin = document.getElementById('clubAdmin').value;
	let clubApplyCode = document.getElementById('clubApplyCode').value;
	
	if(memId == ''){
		alert('로그인이 필요합니다.');
		location.href = '/member/login';
	}
	else if(clubAdmin == 'Y'){
		alert('이미 모임을 생성 하였습니다.')
	}
	else if(clubApplyCode != ''){
		alert('이미 신청한 모임이 존재합니다.')
	}
	else{
		location.href = '/club/clubCreate';
	}
}

function clubJoin(clubCode, clubApplyCode){
	let memId = document.getElementById('memId').value;
	let club_Code = document.getElementById('clubCode').value;
	
	if(memId == ''){
		alert('로그인이 필요합니다.');
		location.href = '/member/login';
	}
	else if(club_Code != ''){
		alert('이미 모임에 가입되어있습니다.')
	}
	else if(clubApplyCode != ''){
		alert('이미 신청한 모임이 존재합니다. ')
	}
	else{
		location.href = '/club/clubJoinWrite?clubCode=' + clubCode ;
	}
}

$(".open-msgModal").click(function(){
	var data = $(this).data('id');
    $("#messageModal.messageModal").val(data);
});


// 알림modal
$(document).on('click', '#msgList' , function() {
	
	$('#msgModal').modal('show');
	
});

function msgList(getId){
	
	$.ajax({
		url: '/club/getMsgList', 
		type: 'post',
		data: {'getId':getId}, 
		success: function(result) {
			var tbody =  document.querySelector('#msgModalTable tbody');
			tbody.innerHTML = '';
			
			var str = '';
			$(result).each(function(index, item){
				
					if(item.isRead == 'Y'){
						str += '<tr class="msgDetail">';
						str += '<td style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; color:gray;" id="open-msgDetail" data-msgCode="'+ item.msgCode +'" data-isRead="'+ item.isRead +'">'+ item.msgContent +'</span></td>';
						str += '<td style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden;color:gray;">'+ item.sendDate +'</td>';
						str += '</tr>';
					}
					else{
						str += '<tr class="msgDetail">';
						str += '<td style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden;" id="open-msgDetail" data-msgCode="'+ item.msgCode +'" data-isRead="'+ item.isRead +'">'+ item.msgContent +'</span></td>';
						str += '<td style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden;">'+ item.sendDate +'</td>';
						str += '</tr>';
					}
					
			});	
				$('#msgModalTable tbody').prepend(str);
			
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
}


// 알림창 상세조회
$(document).on('click', '#open-msgDetail' , function() {
	var msgContent= $(this).text();
	var sendDate = $(this).next().text();
	var msgCode = $(this).attr('data-msgCode');
	var isRead = $(this).attr('data-isRead');
	
	if(isRead == 'N'){
		$.ajax({
			url: '/club/updateMsgIsRead', //요청경로
			type: 'post',
			data: {'msgCode':msgCode}, //필요한 데이터 '데이터이름':값
			success: function(result) {
				//ajax 실행 성공 후 실행할 코드 작성
			
			},
			error: function() {
				//ajax 실행 실패 시 실행되는 구간
				alert('읽지못함');
			}
		});
	}		

		$('#msgContent').text(msgContent);
		$('#sendDate').text(sendDate);
		
		$('#msgModal').modal('hide');
		$('#msgDetailModal').modal('show');
	
});

//목록
$(document).on('click', '#openMsgList' , function() {
		$('#msgDetailModal').modal('hide');
		$('#msgModal').modal('show');
	
});

/*setInterval(function(){
	var data = $('#msgList').data('badge');
	$(data).load(location.href+ data);
	
}, 2000);
*/











