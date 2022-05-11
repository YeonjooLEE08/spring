
function limitBrCnt(){
	
	alert('대여권수가 5권을 초과할 수 없습니다.');
}

function limitOverdue(){
	
	alert('연체이력으로 대여할 수 없습니다.');
}

function reserveBook(){
	
	var brCnt = $('#reserveBook #brCnt').val();	
	var rsvCnt = $('#reserveBook #rsvCnt').val(); 
	var isOd = $('#reserveBook #isOd').val(); 
	var memId =$('#reserveBook #memId').val(); 
	var isbn =$('#reserveBook #isbn').val(); 
	/*ajax로 memid , isbn 넘기고 reserveVO에 있는지 조회 후 값 넘겨주기(reserve코드 string 타입으로)
	 alert 예약한 도서는 중복예약이 불가합니다
	 위에랑 똑같은 방법으로 하되 status 0인 borrow코드 넘겨줌 
	 alert 대여 중인 도서는 예약이 불가합니다 이*/
	
	var sum = parseInt(brCnt)+parseInt(rsvCnt) ;

	if((sum)<5 && isOd !='Y'){
	
		$.ajax({
		url: '/book/selectRsvCode',
		type: 'post',
		data: {'memId':memId, 'isbn':isbn},
		success: function(result){
			if(result != ''){
				alert('이미 예약한 도서입니다.');
			}else{
				
				//대여중인지 확인
				$.ajax({
				url: '/book/selectBrCode',
				type: 'post',
				data: {'memId':memId, 'isbn':isbn},
				success: function(result){
					//대여중이라면
					if(result != '' ){
						alert('대여중인 도서는 예약할 수 없습니다.');
					}
					//대여중도 아니라면
					else{
							alert('대여가 예약되었습니다.');
							var formTag = document.getElementById('insertRsv');
							formTag.submit();
					}
				},
				error: function(){
					alert('실패');
				}
				})
			}
		},
		error: function(){
			alert('실패');
		}
		})
	}
	else if(isOd =='Y'){
		alert('연체이력으로 대여할 수 없습니다.');
	}
	else{
		alert('대여와 예약은 합하여 5권까지 가능합니다.');
	}
}


/////////////////// 마이페이지 예약 목록////////////////////

//모달창 띄우기
function showModal(selectedTag){
	//memId
	var memId = $('#cancleRsv #memId').val();
	//isbn
	var isbn = $(selectedTag).closest('tr').children().eq(2).text();

	$('#cancleReserve #originMemId').val(memId);
	$('#cancleReserve #originIsbn').val(isbn);
	

	$('#cancleReserve').modal('show');
}	
	
function cancleRsv(){
	var memId = $('#cancleReserve #originMemId').val();
	var isbn = $('#cancleReserve #originIsbn').val();
	
	location.href='/member/cancleReserve?memId='+memId+'&isbn='+isbn;
	
}

$('#closeModalBtn').on('click', function(){
$('#cancleReserve').modal('hide');
console.log("click close");
});
//모달 창 뜰 떄 사전 작업
$('#cancleReserve').on('show.bs.modal', function (e) {
	console.log("show.bs.modal");
});
$('#cancleReserve').on('shown.bs.modal', function (e) {
console.log("shown.bs.modal");
});

//모달창 닫힐 떄 실행 코드
$('#insertBorrow').on('hidden.bs.modal', function (e) {
	$('#insertBorrow input').val('');
});

