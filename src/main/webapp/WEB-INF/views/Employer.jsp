<%--
  Created by IntelliJ IDEA.
  User: yusan
  Date: 2024-01-23
  Time: 오후 2:06
  PayKeeper Website's Employer Page
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="common/importTag.jsp" %>
<html lang="ko">
<head>
        <%@ include file="common/head.jsp" %>
        <%@ include file="common/api.jsp"%>

    <%-- Full Calendar --%>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.10/index.global.min.js"></script>

    <%-- 주소 검색 API --%>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <%-- Impoert Other CSS or JS --%>
    <script src="/js/Employer.js"></script>
    <link rel="stylesheet" href="/css/fullCalendar.css">

    <title>사장</title>
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
                    <h5>매장별 알바 목록</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"></span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12 col-lg-6">
                            <div class="list-group" id="list-tab" role="tablist">
                                <a class="list-group-item list-group-item-action disabled">매장 리스트</a>
                                <a class="list-group-item list-group-item-action active" id="company1"
                                   data-bs-toggle="list" href="#company1-list" role="tab" aria-controls="company1">Company1</a>
                                <a class="list-group-item list-group-item-action" id="company2" data-bs-toggle="list"
                                   href="#company2-list" role="tab" aria-controls="company2">Company2</a>
                                <a class="list-group-item list-group-item-action" id="company3" data-bs-toggle="list"
                                   href="#company3-list" role="tab" aria-controls="company3">Company3</a>
                            </div>
                        </div>

                        <div class="col-12 col-lg-6 mt-3 mt-lg-0">
                            <div class="tab-content" id="employee-list">
                                <div class="tab-pane fade show active" id="company1-list" role="tabpanel"
                                     aria-labelledby="company1">
                                    <div class="list-group">
                                        <div class="list-group-item list-group-item-action active">
                                            전체
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

                                <div class="tab-pane fade" id="company2-list" role="tabpanel"
                                     aria-labelledby="company2">
                                    <div class="list-group">
                                        <div class="list-group-item list-group-item-action active">
                                            전체
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

                                <div class="tab-pane fade" id="company3-list" role="tabpanel"
                                     aria-labelledby="company3">
                                    <div class="list-group">
                                        <div class="list-group-item list-group-item-action active">
                                            전체
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
                    <h5 class="modal-title">알바 근무 목록</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"></span>
                    </button>
                </div>
                <div class="modal-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">이름</th>
                            <th scope="col">시간</th>
                            <th scope="col">총 알바비</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">홍길동</th>
                            <td>4시간(11:00~15:00)</td>
                            <td>36,000 원</td>
                        </tr>
                        <tr>
                            <th scope="row">이순신</th>
                            <td>4시간(11:00~15:00)</td>
                            <td>36,000 원</td>
                        </tr>
                        <tr>
                            <th scope="row">김구</th>
                            <td>4시간(11:00~15:00)</td>
                            <td>36,000 원</td>
                        </tr>
                        <tr class="text-center">
                            <td colspan="4"> 총 108,000 원 </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <%-- Modal Trigger Button --%>
    <button id="inputModalTrigger" type="button" class="visually-hidden" data-bs-toggle="modal"
            data-bs-target="#inputModal"></button>

    <%-- Modal : Company를 추가하기 위한 모달 --%>
    <%-- 이름, 주기, 구인중 --%>
    <div class="modal fade" id="createModal">
        <div class="modal-dialog" role="list" style="top: 15%">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Create New Company</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"></span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <fieldset>
                            <div class="form-group">
                                <label for="name" class="form-label fs-4">Name</label>
                                <input type="text" class="form-control" id="name" autocomplete="off" placeholder="매장 이름을 입력하세요.">
                            </div>
                            <div class="form-group">
                                <div class="form-label mt-3 fs-4">Frequency(Per Month)</div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="frequency" id="frequency1"
                                           value="WEEK" checked>
                                    <label class="form-check-label" for="frequency1">
                                        4 TIMES ( once a week )
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="frequency" id="frequency2"
                                           value="TEN">
                                    <label class="form-check-label" for="frequency2">
                                        3 TIMES ( once every 10 days )
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="frequency" id="frequency3"
                                           value="HALF">
                                    <label class="form-check-label" for="frequency3">
                                        2 TIMES ( once every 2 weeks )
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="frequency" id="frequency4"
                                           value="MONTH">
                                    <label class="form-check-label" for="frequency4">
                                        1 TIMES ( once a month )
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-label mt-3 fs-4">Recruitment status</div>
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" id="recruiting" checked>
                                    <label class="form-check-label" for="recruiting">Recruiting</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-label mt-3 fs-4">Location</div>
                                <label for="address" class="form-label fs-5">Address &nbsp;&nbsp;<button type="button" id="addressBtn" class="btn btn-secondary fs-6">Search</button></label>
                                <input type="text" class="form-control" id="address" autocomplete="off" placeholder="도로명 주소를 입력하세요.">

                                <label for="detailAddress" class="form-label fs-5">Detailed Address</label>
                                <input type="text" class="form-control" id="detailAddress" autocomplete="off" placeholder="상세 주소를 입력하세요.">
                            </div>
                        </fieldset>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="createBtn">Create</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <%-- Modal Trigger Button --%>
    <button id="createModalTrigger" type="button" class="visually-hidden" data-bs-toggle="modal"
            data-bs-target="#createModal"></button>

    <%-- Modal : 방 생성하고 코드 보여주는 모달 --%>
    <div class="modal fade" id="showCodeModal">
        <div class="modal-dialog" role="list" style="top: 20%">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Company Code</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"></span>
                    </button>
                </div>
                <div class="modal-body">
                    Creating a Random Code ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <%-- Modal Trigger Button --%>
    <button id="showCodeModalTrigger" type="button" class="visually-hidden" data-bs-toggle="modal"
            data-bs-target="#showCodeModal"></button>

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
                <h4 class="card-title">한글</h4>
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
