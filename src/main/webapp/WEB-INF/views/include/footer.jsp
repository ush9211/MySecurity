<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- FOOTER -->
        <aside>
            <h4 class="fw-bold">Latest Posts</h4>
            <div class="recent-post">
                <a href="#" class="thumb">
                    <div class="recent-post-box"><i class="ri-links-line"></i></div>
                    <img src="res/images/travel01.webp" alt="travel01">
                </a>
                <a href="#" class="post-text travel">
                    <h6 class="fw-bold">이번 여행에서 <br>건진 사진</h6>
                </a>
            </div>
            <div class="recent-post">
                <a href="#" class="thumb">
                    <div class="recent-post-box"><i class="ri-links-line"></i></div>
                    <img src="res/images/fashion01.avif" alt="fashion01">
                </a>
                <a href="#" class="post-text fashion">
                    <h6 class="fw-bold">24 ss 패션위크 <br>스냅촬영</h6>
                </a>
            </div>
            <div class="recent-post">
                <a href="#" class="thumb">
                    <div class="recent-post-box"><i class="ri-links-line"></i></div>
                    <img src="res/images/camp01.jpg" alt="camp01">
                </a>
                <a href="#" class="post-text camping">
                    <h6 class="fw-bold">수도권 오토캠핑장 <br>30곳 추천</h6>
                </a>
            </div>
            <div class="recent-post">
                <a href="#" class="thumb">
                    <div class="recent-post-box"><i class="ri-links-line"></i></div>
                    <img src="res/images/photo01.avif" alt="photo01">
                </a>
                <a href="#" class="post-text photography">
                    <h6 class="fw-bold">취미 사진작가 <br>존잘 모멘트</h6>
                </a>
            </div>
            <div class="searchbox">
                <form class="search">
                    <input type="search" placeholder="SEARCH">
                    <button type="submit"><i class="ri-search-2-line"></i></button>
                </form>
            </div>
            <div class="posttag">
                <h4 class="fw-bold">Popular Tags</h4>
                <div class="d-flex flex-wrap">
                    <a href="#">Bike</a>
                    <a href="#">제주도</a>
                    <a href="#">야구</a>
                    <a href="#">국가대표</a>
                    <a href="#">뛰어다니기</a>
                    <a href="#">Jumping</a>
                    <a href="#">Lake</a>
                    <a href="#">Motivation</a>
                    <a href="#">Notebook</a>
                </div>
            </div>
        </aside>
    </div>

    <!-- 이미지 줌 팝업창 -->
    <div class="zoombox">
        <div class="close"><i class="ri-close-line"></i></div>
        <div class="zoombody"></div>
    </div>

    <!-- 회원가입 팝업 -->
    <div class="signuppopup">
        <h4 class="fw-bold mb-5 text-center">Sign Up</h4>
        <form name="joinForm" id="joinForm" method="post">
            <div class="mb-3 row">
                <label for="uname" class="form-label col-2 text-end">Name</label>
                <div class="col-7">
                	<input type="text" class="form-control" name="uname" id="uname" placeholder="성함">
               	</div>
            </div>
            <div class="mb-3 row">
                <label for="username" class="form-label col-2 text-end">ID</label>
                <div class="col-7">
                	<input type="text" class="form-control" name="username" id="username" placeholder="아이디">
                	<input type="hidden" id="cid">
               	</div>
               	<div class="col-3">
                	<button type="button" class="btn logbtn" id="checkid">중복확인</button>
               	</div>
            </div>
            <div class="mb-3 row">
                <label for="password" class="form-label col-2 text-end">Password</label>
                <div class="col-7">
                	<input type="password" class="form-control" name="password" id="password" placeholder="비밀번호">
               	</div>
            </div>
            <div class="mb-3 row">
                <label for="repassword" class="form-label col-2 text-end">Password</label>
                <div class="col-7">
                	<input type="password" class="form-control" name="repassword" id="repassword" placeholder="비밀번호 확인">
               	</div>
            </div>
            <div class="mb-3 row">
                <label for="useremail" class="form-label col-2 text-end">E-mail</label>
                <div class="col-7">
                	<input type="email" class="form-control" id="useremail" name="useremail" placeholder="이메일">
                	<input type="hidden" id="cemail">
               	</div>
               	<div class="col-3">
                	<button type="button" class="btn logbtn" id="checkemail">중복확인</button>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="usertel" class="form-label col-2 text-end">Number</label>
                <div class="col-7">
                	<input type="tel" class="form-control" name="usertel" id="usertel" placeholder="전화번호">
               	</div>
            </div>
            <div class="mt-5 mb-2 text-center">
                <button type="button" class="btn btn-secondary me-2 reset">취 소</button>
                <button type="submit" class="btn logbtn ms-2">회 원 가 입</button>
            </div>
        </form>
    </div>

    <!-- id/pw 찾기 팝업 -->
    <div class="find-id">
        아이디/패스워드 찾기
    </div>
</body>
</html>