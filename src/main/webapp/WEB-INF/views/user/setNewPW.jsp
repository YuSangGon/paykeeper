<%--
  Created by IntelliJ IDEA.
  User: yusan
  Date: 2024-01-25
  Time: 오후 3:42
  After email validation, set a new password
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/importTag.jsp" %>
<html lang="ko">
<head>
    <%@ include file="../common/head.jsp" %>

    <%-- Impoert Other CSS or JS --%>
    <link rel="stylesheet" href="/css/register.css">


    <title>PayKeeper</title>
</head>
<body class="vw-100 vh-100 m-0">
<div class="row h-100 w-100 m-0 bg-primary">
    <div class="d-flex h-100 align-items-center justify-content-center">
        <div class="card col-11 col-sm-10 col-md-8 col-lg-5 mx-auto h-auto my-auto opacity-75">
            <div class="card-body col-12 mt-2 mx-auto">
                <h3 class="card-title text-center mb-1">비밀번호 재설정</h3>
                <div class="col-12 d-flex justify-content-center">
                    <div class="col-12">
                        <div class="form-group">
                            <table class="col-12 mt-2">
                                <tbody>
                                <tr>
                                    <td class="col-3">비밀번호</td>
                                    <td class="col-9">
                                        <input type="password" class="form-control" placeholder="PW를 입력하세요."
                                               aria-label="Input PW"
                                               id="password" name="password">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="col-12 text-success">인증 코드가 발송 되었습니다.</td>
                                </tr>
                                <tr>
                                    <td class="col-3">비밀번호 재입력</td>
                                    <td class="col-9">
                                        <input type="password" class="form-control" placeholder="PW를 한번 더 입력하세요."
                                               aria-label="Input PW Again"
                                               id="repassword" name="repassword">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2"><span class="text-danger">비밀번호가 일치하지 않습니다.</span></td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="d-grid gap-2 my-3">
                                <button class="btn btn-primary" type="button" onclick="location.href='/login'">확인</button>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>
