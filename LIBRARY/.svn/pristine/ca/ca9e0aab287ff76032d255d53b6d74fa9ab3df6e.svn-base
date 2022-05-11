function updateItemState(selectedTag){
	var updateItemState = selectedTag.closest('td').previousElementSibling.firstElementChild;
	updateItemState.submit();
	alert('적용되었습니다');
}

//체크박스 전체선택, 전체해제
function Allcheck(){
	var isChecked = document.getElementById('chk').checked;
	var checkBoxes = document.getElementsByClassName('chk');
	
	//제목줄의 체크박스가 체크됐을때
	if(isChecked){
		for(var i = 0; i<checkBoxes.length; i++){
			checkBoxes[i].checked = true;
		}
	}
	else{
		for(var i = 0; i<checkBoxes.length; i++){
			checkBoxes[i].checked = false;
		}	
	}
}

//상태 일괄변경 클릭시
function updateItemsStates(){
	var itemState = document.getElementById('itemState').value;
	var checkBoxes = document.querySelectorAll('.chk:checked');
	var orderNumArr = [];
	for(var i = 0; i<checkBoxes.length; i++){
		orderNumArr[i] = checkBoxes[i].value;
	}
	
	//JSON.stringify(objArr);
	$.ajax({
		url: '/sales/updateItemsStates', //요청경로
		type: 'post',
		traditional: true,
		data: {'orderNums' : orderNumArr
				,'itemState' : itemState}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			//ajax 실행 성공 후 실행할 코드 작성
			alert('주문상태 일괄 변경되었습니다');
			location.href = '/sales/orderStateManage';
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
}


//선택삭제
function deleteOrders(){
	var chk = document.querySelectorAll('.chk:checked');
	
	if(chk.length == 0){
		alert('삭제할 주문내역을 선택하세요');
		return;
	}
	
	//선택한 상품코드를 저장할 배열
	var orderNums = [];
	for(var i = 0; i<chk.length; i++){
		orderNums[i] = chk[i].value;
	}
	alert("선택하신 주문내역이 삭제되었습니다");
	location.href='/sales/deleteOrders?orderNums='+orderNums;
}

function searchKindState(selectedTag){
	var itemState = selectedTag.innerText;
	location.href='/sales/searchKindState?itemState='+itemState;
}

