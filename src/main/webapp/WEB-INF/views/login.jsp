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
    <%@ include file="common/head.jsp"%>

    <%-- Impoert Other CSS or JS --%>
    <script src="/js/login.js"></script>

    <title>PayKeeper</title>
</head>
<body class="vw-100 vh-100 m-0">
    <div class="row h-100 w-100">
        <div class="col-md-6 d-md-block d-none h-100">
            문구
        </div>
        <div class="col-md-6 col-12 h-100 bg-primary p-0">
            <div class="d-flex h-100 align-items-center justify-content-center">
                <div class="card col-10 col-md-9 mx-auto h-75 my-auto opacity-75">
                    <div class="card-body col-12 col-md-9 mt-3 mx-auto">
                        <h3 class="card-title text-center">WELCOME TO PAYKEEPER</h3>
                        <h6 class="card-subtitle mb-3 text-muted text-center">로그인 후 사이트를 이용할 수 있습니다.</h6>

                        <div class="form-group">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control border-primary" id="userId" placeholder="ID">
                                <label for="userId">ID</label>
                            </div>
                            <div class="form-floating">
                                <input type="password" class="form-control border-primary" id="password" placeholder="Password" autocomplete="off">
                                <label for="password">Password</label>
                            </div>
                            <div class="d-grid gap-2 my-3">
                                <button class="btn btn-lg btn-success" type="button">Login</button>
                                <button class="btn btn-lg btn-primary" type="button">회원가입</button>
                            </div>
                            <p class="text-center">
                                <span style="font-size: 0.8em">비밀번호를 잊으셨다면? <a class="text-danger" href="#" style="font-size: 0.8em">비밀번호 찾기</a> </span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
