//도서 등록 버튼 클릭 시 실행
function regBook(){
	
	
	//도서명 미기입 시 alert
	var title = document.getElementById('title').value;
	if(title == ''){
		alert('도서명은 필수입력입니다.');
		return ;
	}	
	
	//submit
	var formTag = document.getElementById('regBookForm');
	formTag.submit();
}