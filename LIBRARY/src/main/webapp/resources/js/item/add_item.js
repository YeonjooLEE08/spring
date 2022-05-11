//상품 등록 버튼 클릭시 실행
function regItem(){
	var selectCate = document.getElementById("category").value;
	
	if(selectCate == 1){
		alert('카테고리 입력이 누락되었습니다.');
		return;
	}
	
	var itemName = document.getElementById("itemName").value;
	if(itemName == ''){
		alert('상품명이 미입력 되었습니다.');
		return;
	}
	
	var itemPrice = document.getElementById("itemPrice").value;
	if(itemPrice == ''){
		alert('상품금액이 미입력 되었습니다.');
		return;
	}
	
	
	var formTag = document.getElementById("regItemForm");
	formTag.submit();
	
}