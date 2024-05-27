<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>

<!-- MAIN -->
        <div class="main" id="youtube">
            <div class="container-fluid">
                <div class="row">
                    <h1 class="mb-5 fw-bold">My Youtube Link</h1>
                    <!-- loop -->
                    <!-- youtube 썸네일 이미지에 링크 걸어주는 방법 -->
                    <!-- 썸네일 이미지 가져오는 고정 경로 : https://i1.ytimg.com/vi/유튜브아이디/hqdefault.jpg -->
                    <div class="col-md-4 mb-4">
                        <a href="#" data-id="DPg8wNTLQPg" class="card-youtube border d-block">  
                            <img src="https://i1.ytimg.com/vi/DPg8wNTLQPg/hqdefault.jpg" class="img-fluid" alt="YouTube video player"/>  
                            <h5 class="p-3">순천에 이렇게 아름다운곳이!</h5>
                        </a> 
                    </div>
                    <div class="col-md-4 mb-4">
                        <a href="#" data-id="QE_MBUXGp3c" class="card-youtube border d-block">  
                            <img src="https://i1.ytimg.com/vi/QE_MBUXGp3c/hqdefault.jpg" class="img-fluid" alt="YouTube video player"/>  
                            <h5 class="p-3">꼬물이부터 독립 준비까지! 푸바오 성장기</h5>
                        </a> 
                    </div>
                    <div class="col-md-4 mb-4">
                        <a href="#" data-id="zadxEvylsw8" class="card-youtube border d-block">  
                            <img src="https://i1.ytimg.com/vi/zadxEvylsw8/hqdefault.jpg" class="img-fluid" alt="YouTube video player"/>  
                            <h5 class="p-3">일본 최대 규모의 고양이 카페 방문</h5>
                        </a> 
                    </div>
                    <div class="col-md-4 mb-4">
                        <a href="#" data-id="m3QLOhJG5YM" class="card-youtube border d-block">  
                            <img src="https://i1.ytimg.com/vi/m3QLOhJG5YM/hqdefault.jpg" class="img-fluid" alt="YouTube video player"/>  
                            <h5 class="p-3">건강하게 오래살고 살빠지는 레시피 13개 모음</h5>
                        </a> 
                    </div>
                    <div class="col-md-4 mb-4">
                        <a href="#" data-id="bS6a9w3Om_8" class="card-youtube border d-block">  
                            <img src="https://i1.ytimg.com/vi/bS6a9w3Om_8/hqdefault.jpg" class="img-fluid" alt="YouTube video player"/>  
                            <h5 class="p-3">도시락 15가지 영상 모음</h5>
                        </a> 
                    </div>
                    <div class="col-md-4 mb-4">
                        <a href="#" data-id="a7i_qeHDqTs" class="card-youtube border d-block">  
                            <img src="https://i1.ytimg.com/vi/a7i_qeHDqTs/hqdefault.jpg" class="img-fluid" alt="YouTube video player"/>  
                            <h5 class="p-3">6가지 폭신폭신 맛있는 베이킹 영상 모음</h5>
                        </a> 
                    </div>
                    <div class="col-md-4 mb-4">
                        <a href="#" data-id="SeaiInbr92k" class="card-youtube border d-block">  
                            <img src="https://i1.ytimg.com/vi/SeaiInbr92k/hqdefault.jpg" class="img-fluid" alt="YouTube video player"/>  
                            <h5 class="p-3">3년간 만든 집밥 중 맛있는 요리만 모은 영상</h5>
                        </a> 
                    </div>
                    <!-- /loop -->
                    
                    
                    <!-- youtube 가져오는 또 다른방법 : youtube 영상 퍼오기 
                    <div class="col-md-4 mb-4">
                        <a href="https://www.youtube.com/embed/uTuuz__8gUM?si=WVE7SW-akU1mMnbP" class="card-youtube border d-block">  
                            <iframe width="100%" height="180" src="https://www.youtube.com/embed/uTuuz__8gUM?si=WVE7SW-akU1mMnbP" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                            <h5 class="p-3">일할때 듣기 좋은 Jazz</h5>
                        </a> 
                    </div>
                    -->
                </div>
            </div>
        </div>
    <!-- /MAIN -->
    
    <!-- 팝업창 -->
    <div class="youtube-popup">
        <div class="close"><i class="ri-close-line"></i></div>
        <div class="youtube-body"></div>
    </div>
    
    
<%@ include file="include/footer.jsp" %>