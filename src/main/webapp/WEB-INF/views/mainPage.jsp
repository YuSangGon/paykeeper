<%--
  Created by IntelliJ IDEA.
  User: yusan
  Date: 2024-01-22
  Time: 오후 2:06
  PayKeeper Website's MainPage
--%>
<%@ include file="importTag.jsp"%>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <%-- Bootstrap & Bootswatch --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.3.2/dist/flatly/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    <%-- fontawsome --%>
    <script crossorigin="anonymous" src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"></script>

    <%-- Impoert Other CSS or JS --%>
    <link rel="stylesheet" href="/css/common.css">

    <title>PayKeeper</title>
</head>
<body>

    <common:header />

    <%-- Banner --%>
    <section class="container-fluid">
        <div class="card mx-auto mt-3" style="max-width: 992px; height: 300px">

        </div>
    </section>


    <%-- Body --%>
    <main class="container-fluid">

        <%-- Section A --%>
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
        <%-- Section A --%>

        <%-- Section B --%>
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
        <%-- Section B --%>

    </main>


    <common:footer />

</body>
</html>
