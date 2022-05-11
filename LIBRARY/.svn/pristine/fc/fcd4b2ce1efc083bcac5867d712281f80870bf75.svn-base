function allChk(obj){
	var chkObj = document.getElementsByName("RowCheck");
	var rowCnt = chkObj.length-1;
	var check = obj.checked;
	
	if(check) {
		for(var i=0; i<=rowCnt; i++){
				chkObj[i].checked=true;
		}
	}else{
		for(var i=0; i<=rowCnt; i++){
				chkObj[i].checked=false;
		}
		
	}
}

function updateChecked(){
	
	//선택된 체크박스
	var chk = document.querySelectorAll('.chk:checked');
	
	if(chk.length==0){
		alert('변경할 신청항목을 선택하세요');
		return;
	}
	
	var objArr = [];
	for(var i = 0; i<chk.length; i++){
		var obj = new Object();
		
		obj.hopeCode = chk[i].value;
		obj.status = chk[i].closest('tr').querySelector('#status').value;
		
		objArr[i] = obj;
	}
	
	//JSON.stringify(objArr);
	$.ajax({
		url:'/book/updateHp',
		type:'post',
		data:{'data':JSON.stringify(objArr)},
		success: function(result){
			alert('상태를 변경했습니다.');
			
			location.href ='/book/hopeBookList';
		},
		error: function(){
			alert('실패');
		}
		
	})
	
	
	
	
	
	
	
	
	
	
	/*
	var hopeCodeArr = [];
	var hopeStatusArr = [];
	
	for(var i = 0; i<chk.length; i++){
		hopeCodeArr[i] = chk[i].value;
		hopeStatusArr[i] = chk[i].closest('tr').querySelector('#status').value;
	}
	
	for(var i=0; i<hopeCodeArr.length; i++)
	*/
	
}