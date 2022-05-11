function addCate(){
	location.href='/item/itemCateManage?add='+'add';
}

//카테고리 수정
function updateCate(selectTag, cateCode){
	var str1 = '';
	var str2 = '';
	
	str1 += '<form action="/item/cateUpdate" method="post" id="updateForm">';
	str1 += '<input type="text" name="cateName">';
	str1 += '<input type="hidden" name="cateCode" value="'+cateCode+'">';
	str1 += '</form>';
	str2 += '<button type="button" id="updateFin" onclick="cateUpdateFin();">수정완료</button>';
	
	selectTag.closest('td').previousElementSibling.innerHTML = str1;
	selectTag.closest('td').innerHTML = str2;
}
function cateUpdateFin(){
	var updateCate = document.getElementById('updateForm');
	updateCate.submit();
}




