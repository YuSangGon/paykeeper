<%--
  Created by IntelliJ IDEA.
  User: yusan
  Date: 2024-01-22
  Time: 오후 2:06
  PayKeeper Website's Rank Page
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
        <%-- Rank : 사장과 알바의 랭크를 보고 검색 --%>
        <section class="mx-auto mt-5" style="max-width: 992px">
            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" data-bs-toggle="tab" href="#employee" aria-selected="true" role="tab">Employee</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" data-bs-toggle="tab" href="#employer" aria-selected="false" role="tab" tabindex="-1">Employer</a>
                </li>
            </ul>
            <div id="myTabContent" class="tab-content mt-3">
                <div class="tab-pane fade active show" id="employee" role="tabpanel">
                    <table class="table table-hover">
                        <thead>
                        <tr class="table-primary">
                            <th scope="col" class="col-2">Rank</th>
                            <th scope="col" class="col-4">Name</th>
                            <th scope="col" class="col-3">Count Of Review</th>
                            <th scope="col" class="col-3">Total Score</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr class="table-light">
                                <th scope="row">Active</th>
                                <td>Column content</td>
                                <td>Column content</td>
                                <td>Column content</td>
                            </tr>
                            <tr>
                                <th scope="row">Default</th>
                                <td>Column content</td>
                                <td>Column content</td>
                                <td>Column content</td>
                            </tr>
                            <tr class="table-light">
                                <th scope="row">Active</th>
                                <td>Column content</td>
                                <td>Column content</td>
                                <td>Column content</td>
                            </tr>
                            <tr>
                                <th scope="row">Default</th>
                                <td>Column content</td>
                                <td>Column content</td>
                                <td>Column content</td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="employer" role="tabpanel">
                    <table class="table table-hover">
                        <thead>
                        <tr class="table-primary">
                            <th scope="col" class="col-2">Rank</th>
                            <th scope="col" class="col-4">Name</th>
                            <th scope="col" class="col-3">Count Of Review</th>
                            <th scope="col" class="col-3">Total Score</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="table-light">
                            <th scope="row">Active</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr>
                            <th scope="row">Default</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr class="table-light">
                            <th scope="row">Active</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>
                        <tr>
                            <th scope="row">Default</th>
                            <td>Column content</td>
                            <td>Column content</td>
                            <td>Column content</td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <%-- Rank --%>

        <%-- 클릭시 해당 사람의 프로필 모달 띄우고 컨택할 수 있도록 하기 --%>

    </main>


    <common:footer />

</body>
</html>
