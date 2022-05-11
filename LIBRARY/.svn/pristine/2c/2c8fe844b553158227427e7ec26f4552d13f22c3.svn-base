

//모달창 띄우기
function showModal(selectedTag){
   //현재 클릭한 대여 버튼의 memID, ISBN 값을 
   //MODEL 안의 INPUT태그 데이터로 세팅
   //memId
   var memId = $(selectedTag).closest('tr').children().eq(1).text();
   //isbn
   var isbn = $(selectedTag).closest('tr').children().eq(3).text();
   
   $('#insertBorrow #originMemId').val(memId);
   $('#insertBorrow #originIsbn').val(isbn);
   
   $('#insertBorrow').modal('show');

}


   
//대여버튼 클릭 시 진행..
function insertBorrow(){
   var inputMemId = $('#insertBorrow #memId').val();
   var inputIsbn = $('#insertBorrow #isbn').val();
   
   var originMemId = $('#insertBorrow #originMemId').val();
   var originIsbn = $('#insertBorrow #originIsbn').val();
   
   const memId = document.getElementById('memId').value;
   const isbn = document.getElementById('isbn').value;
   
   //rtDate 가져오기
   $.ajax({
      url: '/book/selectRtDate',
      type: 'post',
      data: {'memId':memId, 'isbn':isbn},
      success: function(result){
         var originRtDate = result;
         
         if(originRtDate != null){
         
            var now = new Date();
            var reBorrow = new Date(originRtDate);
            
            reBorrow.setDate(now.getDate()+3);
            
            
            
            /*var year = reBorrow.getFullYear();
            var month = ('0'+(reBorrow.getMonth()+1)).slice(-2);
            var date =('0'+reBorrow.getDate()).slice(-2);
            
            var reBorrow = year+'-'+month+'-'+date;*/
            
            //이전 반납일에서 3일이 지나지 않았을 때
            if(reBorrow.getTime()> now.getTime()){
               alert('반납 후 3일 이내에 같은 도서 재대출은 불가합니다.\n(이전반납일: '+originRtDate+')');
               $('#insertBorrow').modal('hide');
            }
            else{
               
               var returnDate = rtDate();
               
               if((inputMemId==originMemId) && (inputIsbn==originIsbn)){
               alert(inputMemId+'님 대출되었습니다.\n반납일은 '+returnDate+'입니다.');
               //'location.href = '/book/borrowBook?memId=' + originMemId + '&isbn=' + originIsbn;
               
               var formTag = document.getElementById('borrow');
               formTag.submit();
                  
               }else if(inputMemId==originMemId){
                  alert('예약한 도서와 ISBN이 일치하지 않습니다.');
               }else if(inputIsbn==originIsbn){
                  alert('예약한 회원이 아닙니다.');
               }
            }
         }
         else{
            var returnDate = rtDate();
            
            if((inputMemId==originMemId) && (inputIsbn==originIsbn)){
               alert(inputMemId+'님 대출되었습니다.\n반납일은 '+returnDate+'입니다.');
               //'location.href = '/book/borrowBook?memId=' + originMemId + '&isbn=' + originIsbn;
               
               var formTag = document.getElementById('borrow');
               formTag.submit();
                  
            }else if(inputMemId==originMemId){
               alert('예약한 도서와 ISBN이 일치하지 않습니다.');
            }else if(inputIsbn==originIsbn){
               alert('예약한 회원이 아닙니다.');
            }
         
         }
         
      },
      error: function(){
         alert('실패');
      }
   })
   
   
   
   

   
}

function rtDate(){
   var now = new Date();
   var reDate = new Date(now);
   
   reDate.setDate(now.getDate()+14);
   
   var year = reDate.getFullYear();
   var month = ('0'+(reDate.getMonth()+1)).slice(-2);
   var date =('0'+reDate.getDate()).slice(-2);
   
   var returnDate = year+'-'+month+'-'+date;
   
   return returnDate;
}

$('#closeModalBtn').on('click', function(){
$('#insertBorrow').modal('hide');
console.log("click close");
});
//모달 창 뜰 떄 사전 작업
$('#insertBorrow').on('show.bs.modal', function (e) {
   console.log("show.bs.modal");
});
$('#insertBorrow').on('shown.bs.modal', function (e) {
console.log("shown.bs.modal");
});

//모달창 닫힐 떄 실행 코드
$('#insertBorrow').on('hidden.bs.modal', function (e) {
   $('#insertBorrow input').val('');
});


   


/*var rsvCode="";
var mem*/