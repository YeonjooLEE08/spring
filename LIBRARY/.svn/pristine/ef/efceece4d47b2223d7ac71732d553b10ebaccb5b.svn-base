function showModal(selectedTag){
	
	var isbn = $(selectedTag).closest('tr').children().eq(3).text();
	var memId = $(selectedTag).closest('tr').children().eq(1).text();
	var brCode = $(selectedTag).closest('tr').children().eq(0).text();
	
	$('#returnBook #originIsbn' ).val(isbn);
	$('#returnBook #originBrCode' ).val(brCode);
	$('#returnBook #originMemId' ).val(memId);
	
	$('#returnBook').modal('show');
	
}

function returnBook(){
	//rtDate 바꿔주기 위한 현재시각
	var nowDate = new Date();
	
	var year = nowDate.getFullYear();
	var month = ('0'+(nowDate.getMonth()+1)).slice(-2);
	var date = ('0'+nowDate.getDate()).slice(-2);
	
	var rtDate = year +'-'+ month +'-'+ date;
	
	alert(rtDate);
	
	
	var isbn = $('#returnBook #originIsbn').val();
	var brCode = $('#returnBook #originBrCode').val();
	var memId = $('#returnBook #originMemId').val();
	
	

	

	
	
	location.href = '/book/returnBook?isbn='+isbn+'&brCode='+brCode+'&memId='+memId+'&rtDate='+rtDate;
	alert('반납되었습니다.');
	
/*	var formTag = document.getElementById('rtBook');
	formTag.submit();
	
	*/
}


$('#closeModalBtn').on('click', function(){
$('#returnBook').modal('hide');
console.log("click close");
});
$('#returnBook').on('show.bs.modal', function (e) {
console.log("show.bs.modal");
});
$('#returnBook').on('shown.bs.modal', function (e) {
console.log("shown.bs.modal");
});
$('#returnBook').on('hide.bs.modal', function (e) {
console.log("hide.bs.modal");
});
$('#returnBook').on('hidden.bs.modal', function (e) {
console.log("hidden.bs.modal");
});




	


/*var rsvCode="";
var mem*/