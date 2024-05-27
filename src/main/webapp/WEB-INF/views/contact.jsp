<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>


<!-- MAIN -->
        <div class="main mt-5 mb-5">
            <div class="container-fluid">
                <div class="row">
                    <h1 class="mb-3 fw-bold">Contact Me</h1>
                    <h3 class="mb-5 me-4 ">궁금한 것이 있으시면 언제든 연락주세요!</h3>
                    <div class="col-md-6">
                        <address>
                            <ul class="address me-4">
                                <li class="py-2 border-bottom"><label>Company :</label> Free</li>
                                <li class="py-2 border-bottom"><label>Address :</label> 경기도 김포시</li>
                                <li class="py-2 border-bottom"><label>WebSite :</label> http://www.com</li>
                                <li class="py-2 border-bottom"><label>Github :</label> https://github.com/ush9211?tab=repositories</li>
                            </ul>
                        </address>
                    </div>
                    <div class="col-md-6">
                        <form>
                            <div class="mb-3 me-4">
                                <label for="name" class="form-label">Your Name</label>
                                <input type="text" class="form-control" id="name" placeholder="성함">
                            </div>
                            <div class="mb-3 me-4">
                                <label for="email" class="form-label">Email Address</label>
                                <input type="email" class="form-control" id="email" placeholder="이메일">
                            </div>
                            <div class="mb-3 me-4">
                                <label for="tel" class="form-label">Phone Number</label>
                                <input type="tel" class="form-control" id="tel" placeholder="연락처">
                            </div>
                            <div class="mb-3 me-4">
                                <label for="text" class="form-label">Message</label>
                                <textarea class="form-control" id="text" rows="4" placeholder="보내실 말씀"></textarea>
                            </div>
                            <div class="mb-3 me-4">
                                <button type="submit" class="btn logbtn">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    <!-- /MAIN -->
    
    
<%@ include file="include/footer.jsp" %>