function cateItem(cateCode){
	location.href='/item/itemList?cateCode='+cateCode;
}

function search(){
	var keyword = document.getElementById('keyword');
	location.href = '/item/itemList?keyword='+keyword;
}