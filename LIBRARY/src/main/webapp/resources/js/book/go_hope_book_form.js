function goHpBookForm(){
	
	var memId =$('#memId').val();
	
	if(memId != ''){
		location.href ='/book/hopeBookForm';
	}
	else {
		alert('로그인 후 이용가능합니다.');
		location.href='/member/login';
	}
}