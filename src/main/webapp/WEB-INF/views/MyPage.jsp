<%--
  Created by IntelliJ IDEA.
  User: yusan
  Date: 2024-01-22
  Time: 오후 2:06
  PayKeeper Website's My Page
--%>
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

        <%-- Employee & Employer Rank --%>
        <section class="d-lg-flex justify-lg-content-between mx-auto mt-5" style="max-width: 992px">
            <div class="card border-success mb-3 me-lg-1">
                <div class="card-header">Header</div>
                <div class="card-body">
                    <h4 class="card-title">Success card title</h4>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>

            <div class="card border-info mb-3 ms-lg-1">
                <div class="card-header">Header</div>
                <div class="card-body">
                    <h4 class="card-title">Info card title</h4>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>
        </section>
        <%-- Employee & Employer Rank --%>

        <%-- Map : 구인 중인 사장, 알바 --%>
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

    </main>


    <common:footer />

</body>
</html>
