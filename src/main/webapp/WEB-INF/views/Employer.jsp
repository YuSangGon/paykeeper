<%--
  Created by IntelliJ IDEA.
  User: yusan
  Date: 2024-01-23
  Time: 오후 2:06
  PayKeeper Website's Employee Page
--%>
<%@ include file="common/importTag.jsp" %>
<html lang="ko">
<head>
    <%@ include file="common/head.jsp"%>

    <%-- Full Calendar --%>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.10/index.global.min.js"></script>

    <%-- Impoert Other CSS or JS --%>
    <script src="/js/Employer.js"></script>

    <title>Employer</title>
</head>
<body>

<common:header/>

<%-- MenuBar --%>
<nav>

</nav>


<%-- Body --%>
<main class="container-fluid">

    <%-- Calendar --%>
    <div class="mx-auto mt-5" style="max-width: 992px">
        <div id="calendar"></div>
    </div>
    <%-- Calendar --%>

    <%-- Modal For Company List--%>
    <div class="modal fade" id="listModal">
        <div class="modal-dialog" role="list" style="top: 20%">
            <div class="modal-content">
                <div class="modal-header">
                    <h5>Employee list</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"></span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12 col-lg-6">
                            <div class="list-group" id="list-tab" role="tablist">
                                <a class="list-group-item list-group-item-action disabled">Company List</a>
                                <a class="list-group-item list-group-item-action active" id="company1" data-bs-toggle="list" href="#company1-list" role="tab" aria-controls="company1">Company1</a>
                                <a class="list-group-item list-group-item-action" id="company2" data-bs-toggle="list" href="#company2-list" role="tab" aria-controls="company2">Company2</a>
                                <a class="list-group-item list-group-item-action" id="company3" data-bs-toggle="list" href="#company3-list" role="tab" aria-controls="company3">Company3</a>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6 mt-3 mt-lg-0">
                            <div class="tab-content" id="employee-list">
                                <div class="tab-pane fade show active" id="company1-list" role="tabpanel" aria-labelledby="company1">
                                    <div class="list-group">
                                        <div class="list-group-item list-group-item-action disabled">
                                            Company1
                                        </div>
                                        <div class="list-group-item list-group-item-action">
                                            Employee 1
                                        </div>
                                        <div class="list-group-item list-group-item-action">
                                            Employee 2
                                        </div>
                                        <div class="list-group-item list-group-item-action">
                                            Employee 3
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="company2-list" role="tabpanel" aria-labelledby="company2">
                                    <div class="list-group">
                                        <div class="list-group-item list-group-item-action disabled">
                                            Company2
                                        </div>
                                        <div class="list-group-item list-group-item-action">
                                            Employee 4
                                        </div>
                                        <div class="list-group-item list-group-item-action">
                                            Employee 5
                                        </div>
                                        <div class="list-group-item list-group-item-action">
                                            Employee 6
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="company3-list" role="tabpanel" aria-labelledby="company3">
                                    <div class="list-group">
                                        <div class="list-group-item list-group-item-action disabled">
                                            Company3
                                        </div>
                                        <div class="list-group-item list-group-item-action">
                                            Employee 7
                                        </div>
                                        <div class="list-group-item list-group-item-action">
                                            Employee 8
                                        </div>
                                        <div class="list-group-item list-group-item-action">
                                            Employee 9
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%-- Modal Trigger Button --%>
    <button id="listModalTrigger" type="button" class="visually-hidden" data-bs-toggle="modal"
            data-bs-target="#listModal"></button>

    <%-- Modal : 해당 요일의 알바들이 일한 시간 목록 --%>
    <div class="modal fade" id="inputModal">
        <div class="modal-dialog" role="list" style="top: 20%">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Today's Work</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"></span>
                    </button>
                </div>
                <div class="modal-body">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <%-- Modal Trigger Button --%>
    <button id="inputModalTrigger" type="button" class="visually-hidden" data-bs-toggle="modal"
            data-bs-target="#inputModal"></button>

    <%-- Info : 현재 총 어느 시간 알바를 했고 월급이 얼마고 지급일까지 얼마 남았는지 --%>
    <%-- 알바생이 알바 연결을 끊을 때, 알바평 작성 가능 --%>
    <section class="mx-auto mt-5" style="max-width: 992px">
        <div class="card" style="height: 300px">
            <div class="card-body">
                <h4 class="card-title">Card title</h4>
                <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's content.</p>
                <a href="#" class="card-link">Card link</a>
                <a href="#" class="card-link">Another link</a>
            </div>
        </div>
    </section>
    <%-- Info --%>

    <%-- Map : 근처 구인 중인 알바님들 보여주기 --%>
    <section class="mx-auto mt-5" style="max-width: 992px">
        <div class="card" style="height: 300px">
            <div class="card-body">
                <h4 class="card-title">Card title</h4>
                <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                    card's content.</p>
                <a href="#" class="card-link">Card link</a>
                <a href="#" class="card-link">Another link</a>
            </div>
        </div>
    </section>
    <%-- Map --%>

</main>


<common:footer/>

</body>
</html>
