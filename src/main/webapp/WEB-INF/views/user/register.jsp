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
    <script src="/js/register.js"></script>

    <title>PayKeeper</title>
</head>
<body class="vw-100 vh-100 m-0">
<div class="row h-100 w-100 m-0 bg-primary">
    <div class="d-flex h-100 align-items-center justify-content-center">
        <div class="card col-11 col-sm-10 col-md-8 col-lg-5 mx-auto h-auto my-auto opacity-75">
            <div class="card-body col-12 mt-2 mx-auto">
                <h3 class="card-title text-center mb-1">회원가입</h3>
                <div class="col-12 d-flex justify-content-center">
                    <div class="col-12">
                        <div class="form-group">
                            <table class="col-12 mt-2">
                                <tbody>
                                <tr>
                                    <td class="col-3">구분</td>
                                    <td class="col-6">
                                        <input class="form-check-input" type="radio" name="role" id="employee"
                                               value="employee" checked> 알바 &nbsp;&nbsp;
                                        <input class="form-check-input" type="radio" name="role" id="employer"
                                               value="employer"> 사장
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-3">닉네임</td>
                                    <td class="col-6">
                                        <input type="text" class="form-control" placeholder="닉네임을 입력하세요."
                                               aria-label="Input Nickname"
                                               id="nickname" name="naickname">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-3">아이디</td>
                                    <td class="col-6">
                                        <input type="text" class="form-control" placeholder="ID를 입력하세요."
                                               aria-label="Input ID"
                                               id="username" name="username" aria-describedby="isDuplicated">
                                    </td>
                                    <td class="col-3 ps-2">
                                        <button class="btn btn-primary w-100" type="button" id="isDuplicated">중복확인
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-3">비밀번호</td>
                                    <td class="col-6">
                                        <input type="password" class="form-control" placeholder="비밀번호를 입력하세요."
                                               aria-label="Input Password"
                                               id="password" name="password">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-3">비밀번호확인</td>
                                    <td class="col-6">
                                        <input type="password" class="form-control" placeholder="비밀번호를 한번 더 입력하세요."
                                               aria-label="Input RePassword"
                                               id="repassword" name="repassword">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-3">성별</td>
                                    <td class="col-6">
                                        <input class="form-check-input" type="radio" name="gender" id="male"
                                               value="MALE" checked> 남자 &nbsp;&nbsp;
                                        <input class="form-check-input" type="radio" name="gender" id="female"
                                               value="employer"> 여자
                                    </td>
                                </tr>
                                <tr id="showSelectByRole">
                                    <td class="col-3">구직 여부</td>
                                    <td class="col-6">
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" type="checkbox" id="findJob" checked>
                                            <label class="form-check-label" for="findJob">구직중</label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="col-3">이메일</td>
                                    <td class="col-6">
                                        <input type="email" class="form-control" placeholder="이메일을 입력하세요."
                                               aria-label="Input Email"
                                               id="email" name="email">
                                    </td>
                                    <td class="col-3 ps-2">
                                        <button class="btn btn-primary w-100" type="button" id="checkedEmail">인증
                                        </button>
                                    </td>
                                </tr>
                                <tr class="d-none">
                                    <td class="col-3">이메일</td>
                                    <td class="col-6">
                                        <input type="text" class="form-control" placeholder="인증코드를 입력하세요"
                                               aria-label="Input Code"
                                               id="code" name="code" maxlength="6">
                                    </td>
                                    <td class="col-3 ps-2">
                                        <button class="btn btn-primary w-100" type="button" id="checkedCode">확인</button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="d-grid gap-2 my-3">
                                <button class="btn btn-success" type="button">가입하기</button>
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
