<%--
  Created by IntelliJ IDEA.
  User: yusan
  Date: 2024-01-22
  Time: 오후 2:06
  PayKeeper Website's My Page
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="common/importTag.jsp" %>
<html lang="ko">
<head>
    <%@ include file="common/head.jsp"%>
    <title>PayKeeper</title>
</head>
<body>

    <common:header />

    <%-- Body --%>
    <main class="container-fluid">

        <%-- 개인 프로필 : 랭크, 유저 정보 --%>
        <section class="mx-auto mt-5" style="max-width: 992px">
            <div class="card" style="height: 300px">
                <div class="card-body">
                    <h4 class="card-title">Card title</h4>
                    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Another link</a>
                </div>
            </div>
        </section>
        <%-- Map --%>

        <%-- 자신의 리뷰 보기 --%>


        <%-- 리뷰를 작성할 수 있는 알바생 목록 또는 사장 목록 : 계약 마감 기준 3일 이내 작성 가능 --%>

    </main>


    <common:footer />

</body>
</html>
