function insertRecommend(){
	var memId =$('#rcdBook #memId').val();
	var bookCode =$('#rcdBook #bookCode').val();
	var rcdStatus =$('#rcdBook #rcdStatus').val();
	
	
	if(rcdStatus == 1){
		alert('이미 추천된 도서입니다.');
	}else{
		alert('추천되었습니다.')
		location.href = '/book/rcdBook?bookCode='+bookCode+'&memId='+memId;
	}
}