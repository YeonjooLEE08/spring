function showModal(){
		$('#searchBook').modal('show');
	
}
$('#closeModalBtn').on('click', function(){
$('#searchBook').modal('hide');
console.log("click close");
});
//모달 창 뜰 떄 사전 작업
$('#searchBook').on('show.bs.modal', function (e) {
	console.log("show.bs.modal");
});
$('#searchBook').on('shown.bs.modal', function (e) {
console.log("shown.bs.modal");
});

//모달창 닫힐 떄 실행 코드
$('#searchBook').on('hidden.bs.modal', function (e) {
	$('#searchBook input').val('');
	$('div').removeClass("active");
});

//제출 버튼$. 클릭 시 실행
$(document).ready(function (){
	$('.searchBar #search').click(function (){
		var searchSub = $('.searchBar #searchSub').val();
		//const memId = document.getElementById('memId').value;
		if(searchSub == 'title'){
			//var searchTxt = $('.searchBar #bookName').val();
			const searchTxt = document.getElementById('bookName').value;
			alert(searchTxt);
			$.ajax({
				method: 'GET',
				url: "https://dapi.kakao.com/v3/search/book?target=title",
				data: { query: searchTxt },
				headers: {Authorization: "KakaoAK 9ac7c779abb75c8cf021af960faffa9e"},
			})
			
				.done(function(bk){
					
						let str =''
						for(let i = 0 ; i < 10 ; i++){
							
							var authors = bk.documents[i].authors.join();
							str += '<div class="result-row-tbody1" onclick="pickSearch(this)"><div class="img"><img src="'+bk.documents[i].thumbnail+'"onload="resize(this) id="mbThumbnail" ></div>';
							str += '<div>' + bk.documents[i].title+'</div>';
							str += '<div>' +authors +'</div>';
							str += '<div>' + bk.documents[i].publisher+'</div></div>';
							
					}
					document.querySelector('.result').innerHTML = str;
					//console.log(str);
				});
		}
		else{
			const searchTxt = document.getElementById('bookName').value;
			alert(searchTxt);
			$.ajax({
				method: 'GET',
				url: "https://dapi.kakao.com/v3/search/book?target=authors",
				data: { query: searchTxt },
				headers: {Authorization: "KakaoAK 9ac7c779abb75c8cf021af960faffa9e"},
			})
			
				.done(function(bk){
					
						let str =''
						for(let i = 0 ; i < 10 ; i++){
							
							var authors = bk.documents[i].authors.join();
							str += '<div calss="result-row-tbody2"  onclick="pickSearch(this)" style="border-bottom: 1px solid #dddddd;padding-bottom: 10px;"><div class="img" style="height: 90px;width:25%; display: inline-block;text-align: center;padding-top: 0px;paddin-bottom:20px; "><img src="'+bk.documents[i].thumbnail+'"onload="resize(this)" id="mbThumbnail"></div>';
							str += '<div style="height: 90px;width:25%; display: inline-block;text-align: center;padding-top: 40px;">' + bk.documents[i].title+'</div>';
							str += '<div style="height: 90px;width:25%; display: inline-block;text-align: center;padding-top: 40px;">' +authors +'</div>';
							str += '<div style="height: 90px;width:25%; display: inline-block;text-align: center;padding-top: 40px;">' + bk.documents[i].publisher+'</div></div>';
							
					}
					document.querySelector('.result').innerHTML = str;
				});
			
		
		}
		
		
});
});

function pickSearch(selected){
	
	var thumbnail = $('#mbThumbnail').attr("src");
	var title = selected.childNodes[1].innerText;
	var writer = selected.childNodes[2].innerText;
	var publisher = selected.childNodes[3].innerText;
		
	$('div').removeClass("active");
	$(selected).addClass("active");

	
	$('#searchForm').click(function (){
		
		$('input[name=mbThumbnail]').attr('value',thumbnail);
		$('input[name=mbTitle]').attr('value',title);
		$('input[name=mbWriter]').attr('value',writer);
		$('input[name=mbPublisher]').attr('value',publisher);
		$('#searchBook').modal('hide');
	});
	
}

function submit(){
	
	var formTag = document.getElementById('monthlyBookForm');
	formTag.submit();
}

//이미지 크기 조정
function resize(img){
   // 원본 이미지 사이즈 저장
   var width = img.width;
   var height = img.height;
   // 가로, 세로 최대 사이즈 설정
   var maxWidth= 70;   // 원하는대로 설정. 픽셀로 하려면 maxWidth = 100  이런 식으로 입력
   var maxHeight = 90;   // 원래 사이즈 * 0.5 = 50%
   // 가로나 세로의 길이가 최대 사이즈보다 크면 실행  
   if(width > maxWidth || height > maxHeight){
      // 가로가 세로보다 크면 가로는 최대사이즈로, 세로는 비율 맞춰 리사이즈
      if(width > height){
         resizeWidth = maxWidth;
         resizeHeight = Math.round((height * resizeWidth) / width);
      // 세로가 가로보다 크면 세로는 최대사이즈로, 가로는 비율 맞춰 리사이즈
      }else{
         resizeHeight = maxHeight;
         resizeWidth = Math.round((width * resizeHeight) / height);
      }
   // 최대사이즈보다 작으면 원본 그대로
   }else{
      resizeWidth = width;
      resizeHeight = height;
   }
   // 리사이즈한 크기로 이미지 크기 다시 지정
   img.width = resizeWidth;
   img.height = resizeHeight;
}


