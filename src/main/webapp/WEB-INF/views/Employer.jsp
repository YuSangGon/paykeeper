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
                    <h5>Part Time list</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"></span>
                    </button>
                </div>
                <div class="modal-body">
                    <ul class="list-group">
                        <li class="list-group-item d-flex justify-content-center align-items-center">
                            Company 1
                        </li>
                        <li class="list-group-item d-flex justify-content-center align-items-center">
                            Company 2
                        </li>
                        <li class="list-group-item d-flex justify-content-center align-items-center">
                            Company 3
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <%-- Modal Trigger Button --%>
    <button id="listModalTrigger" type="button" class="visually-hidden" data-bs-toggle="modal"
            data-bs-target="#listModal"></button>

    <%-- Modal For Company List--%>
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
                    <form>
                        <fieldset>
                            <div class="form-group">
                                <label for="startAt" class="form-label mt-4">Start Time</label>
                                <input type="date" class="form-control" id="startAt" autocomplete="off">
                            </div>
                            <div class="form-group">
                                <label for="endAt" class="form-label mt-4">Finish Time</label>
                                <input type="date" class="form-control" id="endAt" autocomplete="off">
                            </div>
                            <div class="form-group">
                                <label class="form-label mt-4">Pay</label>
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text">Per Hour</span>
                                        <input type="text" class="form-control"
                                               aria-label="Amount (to the nearest dollar)">
                                        <span class="input-group-text">&#8361;</span>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Save</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <%-- Modal Trigger Button --%>
    <button id="inputModalTrigger" type="button" class="visually-hidden" data-bs-toggle="modal"
            data-bs-target="#inputModal"></button>

    <%-- Info : 현재 총 어느 시간 알바를 했고 월급이 얼마고 지급일까지 얼마 남았는지 --%>
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

    <%-- Map : 근처 구인 중인 사장님들 보여주기 --%>
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
