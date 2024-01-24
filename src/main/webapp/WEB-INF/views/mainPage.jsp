<%--
  Created by IntelliJ IDEA.
  User: yusan
  Date: 2024-01-22
  Time: 오후 2:06
  PayKeeper Website's Main Page
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.project.pay.domain.Geolocation" %>
<%@ include file="common/importTag.jsp" %>
<html lang="ko">
<head>
    <%@ include file="common/head.jsp"%>
    <%@ include file="common/api.jsp"%>
    <title>PayKeeper</title>
</head>
<body>

    <common:header />

    <%-- Banner --%>
    <section class="container-fluid">
        <div class="card mx-auto mt-3" style="max-width: 992px; height: 400px">

        </div>
    </section>


    <%-- Body --%>
    <main class="container-fluid">

        <%-- Employee & Employer Rank --%>
        <div style="max-width: 992px" class="mt-5 mx-auto">
            <h2>Rank</h2>
            <hr>
            <section class="d-lg-flex justify-lg-content-between">
                <div class="card border-success mb-3 me-lg-1" style="height: 200px">
                    <div class="card-header fs-4">Employee</div>
                    <div class="card-body">
                        <h4 class="card-title">Success card title</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                </div>

                <div class="card border-info mb-3 ms-lg-1" style="height: 200px">
                    <div class="card-header fs-4">Employer</div>
                    <div class="card-body">
                        <h4 class="card-title">Info card title</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div>
                </div>
            </section>
        </div>
        <%-- Employee & Employer Rank --%>

        <%-- Map : 구인 중인 사장, 알바 --%>
        <section class="mx-auto mt-5" style="max-width: 992px">
            <h2>Map</h2>
            <hr>
            <div class="mb-3 fs-5">
                <span class="badge bg-primary cursor-pointer">All</span>
                <span class="badge bg-secondary cursor-pointer">Employee</span>
                <span class="badge bg-secondary cursor-pointer">Employer</span>

                <span class="badge bg-secondary float-end cursor-pointer">Research</span>
            </div>
            <div id="map" style="width: 100%; height: 500px">
            </div>
        </section>

        <%-- Map --%>

    </main>


    <common:footer />

</body>
<script>
    const postions = [];

    <c:forEach var="geolocation" items="${geolocations}">
        postions.push({
            'latitude' : ${geolocation.latitude},
            'longitude' : ${geolocation.longitude},
        })
    </c:forEach>

</script>
<script src="/js/mainPage.js"></script>
</html>
