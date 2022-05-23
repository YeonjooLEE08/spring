function cbDetail(){
	
	alert('모임에 가입된 멤버만 열람할 수 있습니다.');
}

function search(nowPage){
	document.getElementById('nowPage').value = nowPage;
	var formTag = document.getElementById('searchForm');
	formTag.submit();
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
$(document).ready(function(){
	var now = new Date();	// 현재 날짜 및 시간
	var month = now.getMonth();	// 월
	$('#month').text(month + 1);

});