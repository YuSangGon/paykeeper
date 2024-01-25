<%--
  Created by IntelliJ IDEA.
  User: yusan
  Date: 2024-01-23
  Time: 오후 2:06
  PayKeeper Website's Employee Page
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="common/importTag.jsp" %>
<!DOCTYPE html>
<link>
    <%@ include file="common/head.jsp" %>
    <%@ include file="common/api.jsp" %>

    <%-- Full Calendar --%>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.10/index.global.min.js"></script>

    <%-- Datepicker --%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.5.10/js/ripples.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.5.10/js/material.min.js"></script>
    <script type="text/javascript" src="http://momentjs.com/downloads/moment-with-locales.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap-material-datetimepicker.js"></script>
    <link rel="stylesheet" href="/css/bootstrap-material-datetimepicker.css"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


    <%-- Impoert Other CSS or JS --%>
    <script src="/js/Employee.js"></script>
    <link rel="stylesheet" href="/css/fullCalendar.css">

    <title>Employee</title>
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
                    <h5>알바 목록</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"></span>
                    </button>
                </div>
                <div class="modal-body">
                    <ul class="list-group text-center">
                        <li class="list-group-item cursor-pointer active" id="list1">
                            전체
                        </li>
                        <li class="list-group-item cursor-pointer" id="list2">
                            설빙
                        </li>
                        <li class="list-group-item cursor-pointer" id="list3">
                            하남돼지집
                        </li>
                        <li class="list-group-item cursor-pointer" id="list4">
                            쿠팡 상하차
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <%-- Modal For Company List--%>
    <div class="modal fade" id="inputModal">
        <div class="modal-dialog" role="list" style="top: 10%">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">알바 시간 등록</h5>
                    <button id="inputModalClose" type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close">
                        <span aria-hidden="true"></span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <fieldset>
                            <div class="form-group">
                                <label for="startAt" class="form-label mt-4 ">시작 시간</label>
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text">From</span>
                                        <input type="text" class="form-control" id="startAt" autocomplete="off">
                                        <span class="input-group-text"><i
                                                class="fa-regular fa-calendar-days"></i></span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="endAt" class="form-label mt-4">끝난 시간</label>
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text">&nbsp;&nbsp;To&nbsp;&nbsp;</span>
                                        <input type="text" class="form-control" id="endAt" autocomplete="off">
                                        <span class="input-group-text"><i
                                                class="fa-regular fa-calendar-days"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-label mt-4">시급<small style="font-size: 0.7em">(현재 최저 시급 :
                                    9780)</small></label>
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text">시간 당</span>
                                        <input type="number" id="perPay" class="form-control"
                                               aria-label="Amount (to the nearest dollar)">
                                        <span class="input-group-text">원</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-label mt-4">오늘의 일당</label>
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text">약</span>
                                            <input type="text" id="totalPay" class="form-control"
                                                   aria-label="Total Payment" disabled>
                                            <span class="input-group-text">원</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
                <div class="modal-footer">
                    <button id="jobSave" type="button" class="btn btn-primary">저장</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>

    <%-- Modal For Company List--%>
    <div class="modal fade" id="addCompany">
        <div class="modal-dialog" role="list" style="top: 20%">
            <div class="modal-content">
                <div class="modal-header">
                    <h5>알바 추가</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"></span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>사장님에게 받은 코드 6자리를 입력하세요.</p>
                    <div class="input-group mb-3">
                        <input type="text" id="codeForAdd" class="form-control"
                               aria-label="Validation Code" maxlength="6">
                    </div>
                </div>
                <div class="modal-footer">
                    <button id="companySave" type="button" class="btn btn-primary">추가</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>

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
