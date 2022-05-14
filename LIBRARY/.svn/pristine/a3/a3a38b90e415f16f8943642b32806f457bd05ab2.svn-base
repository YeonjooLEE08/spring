//상품 등록 버튼 클릭시 실행
function regItem(){
	var selectCate = document.getElementById("category").value;
	
	if(selectCate == 1){
		alert('카테고리 입력이 누락되었습니다.');
		return;
	}
	
	var itemName = document.getElementById("itemName").value;
	if(itemName == ''){
		alert('상품명이 미입력 되었습니다.');
		return;
	}
	
	var itemPrice = document.getElementById("itemPrice").value;
	if(itemPrice == ''){
		alert('상품금액이 미입력 되었습니다.');
		return;
	}
	
	
	var formTag = document.getElementById("regItemForm");
	formTag.submit();
	
}

//파일업로드 css관련
$(document).ready(function(){
   var fileTarget = $('.filebox .upload-hidden');

    fileTarget.on('change', function(){
        if(window.FileReader){
            // 파일명 추출
            var filename = new Array;
            for(var i = 0; i<$(this)[0].files.length; i++){
				filename[i] = $(this)[0].files[i].name;
			}
        } 
        else {
            // Old IE 파일명 추출
            var filename = $(this).val().split('/').pop().split('\\').pop();
        };
        $(this).siblings('.upload-name').val(filename[0]+'('+$(this)[0].files.length+'건)');
    });

    //preview image 
    var imgTarget = $('.preview-image .upload-hidden');

    imgTarget.on('change', function(){
        var parent = $(this).parent();
        parent.children('.upload-display').remove();

        if(window.FileReader){
            //image 파일만
            if (!$(this)[0].files[0].type.match(/image\//)) return;
            
            var reader = new FileReader();
            reader.onload = function(e){
                var src = e.target.result;
                parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
            }
            reader.readAsDataURL($(this)[0].files[0]);
        }

        else {
            $(this)[0].select();
            $(this)[0].blur();
            var imgSrc = document.selection.createRange().text;
            parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

            var img = $(this).siblings('.upload-display').find('img');
            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
        }
    });
});


