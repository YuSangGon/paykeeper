<%--
  Created by IntelliJ IDEA.
  User: yusan
  Date: 2024-01-22
  Time: 오후 2:06
  PayKeeper Website's Login
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="common/importTag.jsp" %>
<html lang="ko">
<head>
    <%@ include file="common/head.jsp" %>

    <%-- Impoert Other CSS or JS --%>
    <script src="/js/login.js"></script>
    <script crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v19.0"
            nonce="bsfnmgyp"></script>
    <link rel="stylesheet" href="/css/login.css">

    <title>PayKeeper</title>

</head>
<body class="vw-100 vh-100 m-0">
<div class="row h-100 w-100 m-0 bg-primary">
    <div class="d-flex h-100 align-items-center justify-content-center">
        <div class="card col-11 col-sm-10 col-md-8 col-lg-7 mx-auto h-auto my-auto opacity-75">
            <div class="card-body col-12 mt-4 mx-auto">
                <h3 class="card-title text-center mb-3 mb-lg-5">WELCOME TO PAYKEEPER</h3>
                <div class="col-12 d-flex justify-content-center">
                    <%-- manually login --%>
                    <div class="col-lg-6 col-11 px-3 px-lg-5">
                        <h6 class="card-subtitle mb-3 text-muted text-center">회원 로그인</h6>
                        <div class="form-group">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control border-primary" id="userId" placeholder="ID">
                                <label for="userId">ID</label>
                            </div>
                            <div class="form-floating">
                                <input type="password" class="form-control border-primary" id="password"
                                       placeholder="Password"
                                       autocomplete="off">
                                <label for="password">Password</label>
                            </div>
                            <div class="d-grid gap-2 my-3">
                                <button class="btn btn-lg btn-success" type="button">Login</button>
                                <button class="btn btn-lg btn-primary" type="button">회원가입</button>
                            </div>
                            <p class="text-center">
                                <span style="font-size: 0.8em">비밀번호를 잊으셨다면? <a class="text-danger" href="#"
                                                                               style="font-size: 0.8em">비밀번호찾기</a> </span>
                            </p>
                        </div>
                    </div>
                    <%-- another account login : lg 이상일 때에만 표시 --%>
                    <div class="d-none d-lg-block col-6 px-5" style="border-left: 2px solid #2c3e50">
                        <h6 class="card-subtitle mb-3 text-muted text-center">다른 계정으로 로그인</h6>
                        <div class="form-group pt-1">
                            <div class="d-grid gap-3 my-3">
                                <img class="img-fluid imgIcon" src="/img/kakaoLogin.png" alt="kakao"
                                     style="width: 100%; height: 45px;">
                                <img class="img-fluid imgIcon" src="/img/naverLogin.png" alt="naver"
                                     style="width: 100%; height: 45px;">
                                <img class="img-fluid imgIcon" src="/img/googleLogin.png" alt="google"
                                     style="width: 100%; height: 45px;">
                            </div>
                        </div>
                    </div>
                </div>

                <%-- lg 이내에서 드러나는 div => 다른 계정으로 로그인을 아이콘으로 표시 --%>
                <div class="d-block d-lg-none col-12">
                    <div id="orLine">
                        또는
                    </div>
                    <div id="iconLogin" class="d-lg-none d-block col-12 text-center px-3">
                        <h6 class="card-subtitle my-3 text-muted text-center">다른 계정으로 로그인</h6>
                        <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
                             alt="kakao login"/>
                        <img src="/img/naver.png" alt="naver"/>
                        <img src="/img/google-symbol.png" alt="google"/>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>
