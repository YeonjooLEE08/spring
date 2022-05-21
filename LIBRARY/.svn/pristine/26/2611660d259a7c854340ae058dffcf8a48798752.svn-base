
/*유효성 검사*/
$.validator.setDefaults({
    onkeyup: false,
    onclick: false,
    onfocusout: false,
    showErrors: function(errorMap,errorList){
        if(this.numberOfInvalids()){ // 에러가 있으면
            alert(errorList[0].message); // 경고창으로 띄움
        }
    }
});


$('#bookPlanerForm1').validate({
	debug: true,
	rules: {
		title:{required: true}
		,writer:{required: true}
      },
	messages: {
		title: {required: '도서 제목을 입력해 주세요.'}
		,writer:{required: '저자명을 입력해 주세요.'}
      },
	errorPlacement: function(error,element){
	  },
    submitHandler: function(form) {
        form.submit();   //유효성 검사를 통과시 전송
      }
   });
/*$('#bookPlanerForm1').validate({
	debug: true,
	onkeyup: false,
	rules: {
		title:{required: true}
		,writer:{required: true}
      },
	messages: {
		title: {required: '도서 제목을 입력해 주세요.'}
		,writer:{required: '저자명을 입력해 주세요.'}
      },
	errorPlacement: function(error,element){
		//alert(11);
		//alert($(element).attr('name'));
			if($(element).attr('name') == 'title'){
				alert(error.html());
			}
	  },
    submitHandler: function(form) {
        form.submit();   //유효성 검사를 통과시 전송
      }
   });*/

//완독도서 검색
function bookPlanerSearch(){
	const title = document.querySelector('.bookPlaner-search input[name="title"]').value;
	const writer = document.querySelector('.bookPlaner-search input[name="writer"]').value;
	
	$.ajax({
	   url: '/member/bookPlanerSearch', //요청경로
	    type: 'post',
	    data:{'title':title, 'writer':writer}, //필요한 데이터 '데이터이름':값
	    success: function(result) {
			let str = '<div class="result-row-thead"><div>이미지</div><div>책 제목</div><div>작가</div></div>';

			if(result != ""){
				for(let i = 0 ; i < result.length ; i++){
					str += '<div class="result-row-tbody" onclick="resultChoice(this)" ><div><img  src="' + result[i].bkImg + '"></div>';
					str += '<div>' + result[i].title + '</div>';
					str += '<div>' + result[i].writer + '</div></div>';
				}
			}
		
			else{
				str += '<div class="result-row-tbody">해당 검색어에 조회되는 도서가 없습니다.</div>';
			}	
			
			
			
			document.querySelector('.bookPlaner-search-result').innerHTML = str;
			
	    },
	    error: function(){
	      //ajax 실행 실패 시 실행되는 구간
	       alert('실패');
	    }
	});
}




//검색한 완독도서 제목에 넣어주기
function resultChoice(v){
	
	document.querySelector('.hs-write-form input[name="title"]').value = v.childNodes[1].innerText;
	document.querySelector('.hs-write-form input[name="writer"]').value = v.childNodes[2].innerText;
	
	}