<%--
  Created by IntelliJ IDEA.
  User: yusan
  Date: 2024-01-25
  Time: 오후 3:42
  Select Employer or Employee For Register
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
                <h3 class="card-title text-center mb-1">아이디 검증</h3>
                <div class="col-12 d-flex justify-content-center">
                    <div class="col-12">
                        <div class="form-group">
                            <table class="col-12 mt-2">
                                <tbody>
                                <tr>
                                    <td class="col-3">아이디</td>
                                    <td class="col-6">
                                        <input type="text" class="form-control" placeholder="ID를 입력하세요."
                                               aria-label="Input ID"
                                               id="username" name="username" aria-describedby="isDuplicated">
                                    </td>
                                    <td class="col-3 ps-2">
                                        <button class="btn btn-primary w-100" type="button" id="isDuplicated">확인
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" class="col-12 text-success">인증 코드가 발송 되었습니다.</td>
                                </tr>
                                <tr>
                                    <td class="col-3">인증코드</td>
                                    <td class="col-6">
                                        <input type="text" class="form-control" placeholder="인증 코드를 입력하세요."
                                               aria-label="Input Code"
                                               id="code" name="code" maxlength="6">
                                    </td>
                                    <td class="col-3 ps-2">
                                        <button class="btn btn-primary w-100" type="button" id="checkedEmail">인증
                                        </button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="d-grid gap-2 my-3">
                                <button class="btn btn-primary" type="button" onclick="location.href='/login'">Login하러가기</button>
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
