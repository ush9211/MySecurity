$(function(){
    $(document).on('click', '.imgzoom', function(e){
        e.preventDefault();
        const imgPath = $(this).attr("href");
        $('.zoombody').empty();

        // 이미지 너비와 높이 객체 만들기
        var imgHeight = '';
        var imgWidth = '';

        // 새 이미지 객체 생성
        $("<img>")
            .attr('src', imgPath)     // 이미지 경로 설정
            .on('load', function(){     // 이미지 로드 완료시
                imgWidth = this.width;
                imgHeight = this.height;    // 너비와 높이 출력

                let iWidth, iHeight, sWidth, sHeight, top, left;

                // 이미지가 세로형일 경우
                if(imgHeight > imgWidth){
                    const ratio = 800 / imgHeight;      // width, height의 비율
                    imgHeight = 800;
                    imgWidth = this.width * ratio;

                    iWidth = imgWidth + "px";
                    iHeight = "800px";
                    sWidth = imgWidth + 22 + "px";   
                    sHeight = "822px";
                    top = "50px";

                // 이미지가 가로형일 경우    
                }else{
                    const ratio = 800 / imgWidth;
                    iWidth = 800 + "px";
                    iHeight = (imgHeight * ratio) + "px";
                    sWidth = "822px";
                    sHeight = (imgHeight * ratio) + 22 + "px";
                    top = "150px";
                }   
                
                
                left = "calc(50% - " + sWidth / 2 + "px)";
                

                    // 팝업창에 변경한 사진 크기 값 넣어주기
                    $(".zoombody").html("<img src='" + imgPath + "' style='width:" + iWidth + "; height:" + iHeight + ";' alt='" + imgPath + "'/>");
                    $('.zoombox').css({
                       height : sHeight,
                       width : sWidth,
                       left : left,
                       top : top
                    }).fadeIn();
                
            });
    });


    // 팝업창 닫기
    $('.close').click(function(){
		$('.youtube-body, .zoombody').empty();
       	$('.zoombox, .youtube-popup').fadeOut();
    });


    // 유투브 경로에서 비디오 아이디 추출하는 정규식
    $('.card-youtube').click(function(e){
        e.preventDefault;
        const id = $(this).data("id");
        const iframe = '<iframe width="900" height="507" id="youtube" src="https://www.youtube.com/embed/' + id + '" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>';
        
        $(".youtube-body").html(iframe);
        $(".youtube-popup").fadeIn();
    });



    // 회원가입 팝업 열기
    $('.signup').click(function(e){
        e.preventDefault;
        $('.signuppopup').fadeIn();
    });



    // 회원가입 취소
    $('.reset').click(function(e){
        e.preventDefault;
        $('form').each(function(){
            this.reset();
        });
        $('.signuppopup').fadeOut();
    });
    
    
    
    // 회원가입 빈값일 경우
    $("#joinForm").on("submit", function(e){
    	e.preventDefault();
    	
    	if($("#uname").val() == ""){
    		alert("이름을 입력하세요.");
    		$("#uname").focus();
    		return false;
    		
    	}else if($("#username").val() == ""){
    		alert("아이디를 입력하세요.");
    		$("#uname").focus();
    		return false;
    		
		}else if($("#cid").val() == ""){
			alert("아이디 중복확인이 필요합니다.");
			$("#checkid").focus();
			return false;
			
		}else if($("#password").val() == ""){
			alert("비밀번호를 입력하세요.");
    		$("#password").focus();
    		return false;
    		
		}else if($("#repassword").val() == ""){
			alert("비밀번호 확인이 필요합니다.");
			$("#repassword").focus();
			return false;
			
		}else if($("#useremail").val() == ""){
			alert("이메일을 입력하세요.");
			$("#useremail").focus();
			return false;
			
		}else if($("#cemail").val() == ""){
			alert("이메일 중복확인이 필요합니다.");
			$("#checkemail").focus();
			return false;
			
		}else if($("#usertel").val() == ""){
			alert("전화번호를 입력하세요.");
			$("#usertel").focus();
			return false;
		}
	});
	
	
	
	// 아이디 검증 페이지
	$("#checkid").click(function(){
		const username = $("#username").val();
		
		if(username == ""){
			alert("아이디를 입력하세요.");
			return;
		}
		
		var win = window.open("check?usearch=" + username + "&check=1", "", "width=450, height=300, top=150, left=400, scrollbars=no");
	
		if(win = null){
			alert("팝업차단설정이 되어있습니다. 브라우저 설정에서 팝업차단을 풀고 다시 진행해주세요.");
		}
	});
	
	
	
	// 이메일 검증 페이지
	$("#checkemail").click(function(){
		const useremail = $("#useremail").val();
		
		if(useremail == ""){
			alert("이메일을 입력하세요.");
			return;
		}
		
		var win = window.open("check?usearch=" + useremail + "&check=2", "", "width=450, height=300, top=150, left=400, scrollbars=no");
		
		if(win = null){
			alert("팝업차단설정이 되어있습니다. 브라우저 설정에서 팝업차단을 풀고 다시 진행해주세요.");
		}
	});
});

