
//제출 버튼$. 클릭 시 실행
$(document).ready(function (){
	$('#search').click(function (){
		var searchSub = $('.searchHopeBook #searchSub').val();
		
		if(searchSub == 'title'){
			var searchTxt = $('.searchHopeBook #bookName').val();
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
							str += '<div calss="result-row-tbody"onclick="pickSearch(this)"><div><img src="'+bk.documents[i].thumbnail+'"onload="resize(this)" ></div>';
							str += '<div>' + bk.documents[i].title+'</div>';
							str += '<div>' +authors +'</div>';
							str += '<div>' + bk.documents[i].publisher+'</div></div>';
							
					}
					document.querySelector('.result').innerHTML = str;
				});
		}
		else{
			var searchTxt = $('.searchHopeBook #bookName').val();
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
							str += '<div calss="result-row-tbody" onclick="pickSearch(this)"><div><img src="'+bk.documents[i].thumbnail+'"onload="resize(this)"></div>';
							str += '<div id="title">' + bk.documents[i].title+'</div>';
							str += '<div id ="writer">' +authors +'</div>';
							str += '<div id ="publisher">' + bk.documents[i].publisher+'</div></div>';
							
					}
					document.querySelector('.result').innerHTML = str;
				});
			
		
		}
		
		
});
});

function pickSearch(selected){
	
	var title = selected.childNodes[1].innerText;
	var writer = selected.childNodes[2].innerText;
	var publisher = selected.childNodes[3].innerText;

	

	$('input[name=title]').attr('value',title);
	$('input[name=writer]').attr('value',writer);
	$('input[name=publisher]').attr('value',publisher);

}

//이미지 크기 조정
function resize(img){
   // 원본 이미지 사이즈 저장
   var width = img.width;
   var height = img.height;
   // 가로, 세로 최대 사이즈 설정
   var maxWidth= 90;   // 원하는대로 설정. 픽셀로 하려면 maxWidth = 100  이런 식으로 입력
   var maxHeight = 130;   // 원래 사이즈 * 0.5 = 50%
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

