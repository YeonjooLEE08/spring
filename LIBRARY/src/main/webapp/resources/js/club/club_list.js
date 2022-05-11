function createClub(){
	let memId = document.getElementById('memId').value;
	let clubAdmin = document.getElementById('clubAdmin').value;
	let clubCode = document.getElementById('clubCode').value;
	
	if(memId == ''){
		alert('로그인이 필요합니다.');
		location.href = '/member/login';
	}
	else if(clubAdmin == 'Y'){
		alert('이미 모임을 생성 하였습니다.')
	}
	else if(clubCode != ''){
		alert('이미 모임에 가입되어있습니다.')
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
	//else if(clubApplyCode != ''){
	//	alert('가입 신청한 모임이 존재합니다. ')
	//}
	else{
		location.href = '/club/clubJoinWrite?clubCode=' + clubCode ;
	}
}

$(".open-msgModal").click(function(){
	var data = $(this).data('id');
    $("#messageModal.messageModal").val(data);
});

//메세지jsp에 id값 넘겨주기
function message(getId){
	location.href = '/club/getMsgList?getId=' + getId;
}

(function(d){ 
	var i = 1; 
	var badge = document.getElementById('badge'); 
	var int = window.setInterval(updateBadge, 2000); 

	var int = window.setInterval(updateBadge, 2000);
	var badgeNum;
	function updateBadge(){
		var badgeChild = badge.children[0]; 
		if(badgeChild.className==='badge-num') {}
			badge.removeChild(badge.children[0]);
		}
	badgeNum = document.createElement('div');
	badgeNum.setAttribute('class','badge-num');
	badgeNum.innerHTML = i++;
	var insertedElement = badge.insertBefore(badgeNum,badge.firstChild);
	console.log(badge.children[0]);

})(document);
