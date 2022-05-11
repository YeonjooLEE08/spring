//아이템 선택삭제
function deleteItems(){
	var chk = document.querySelectorAll('.chk:checked');
	
	if(chk.length == 0 ){
		alert('삭제할 상품을 선택하세요');
		return;
	}
	
	//선택한 상품코드를 저장할 배열 생성
	var itemCodeArr = [];
	for(var i = 0; i<chk.length; i++){
		itemCodeArr[i] = chk[i].value;
	}
	location.href='/item/deleteItems?itemCodeArr=' + itemCodeArr;
}