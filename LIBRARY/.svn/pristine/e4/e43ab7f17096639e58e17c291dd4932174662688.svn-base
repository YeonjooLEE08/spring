
//삭제 확인 모달창 띄우기
function showModal(){
	
	var bookCode = $('#manageBook #bookCode').val();
	$('#deleteBook #originBookCode').val(bookCode);
	$('#deleteBook').modal('show');
	
	
}
	


$('#closeModalBtn').on('click', function(){
$('#deleteBook').modal('hide');
});
$('#deleteBook').on('show.bs.modal', function (e) {
});
$('#deleteBook').on('shown.bs.modal', function (e) {
});
$('#deleteBook').on('hide.bs.modal', function (e) {
});
$('#deleteBook').on('hidden.bs.modal', function (e) {
});


function modifyBk(){
	
	alert('수정페이지로 이동합니다.');
	
	var bookCode = $('#manageBook #bookCode').val();
	
	location.href = '/book/updateBookForm?bookCode='+bookCode;
}

function deleteBk(){
	var bookCode = $('#deleteBook #originBookCode').val();
	
	location.href = '/book/deleteBook?bookCode='+bookCode;
}