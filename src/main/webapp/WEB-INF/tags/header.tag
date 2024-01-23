<%--
  Created by IntelliJ IDEA.
  User: yusan
  Date: 2024-01-22
  Time: 오후 2:20
  This is for PayKeepr Website's common header
--%>
<%@ tag pageEncoding="UTF-8" language="java" description="header" body-content="empty" %>
<header>
    <nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
        <div class="container-fluid mx-3 mx-lg-auto px-0" style="max-width: 992px">
            <a class="navbar-brand fs-3" href="/">PayKeeper</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse fs-6 justify-content-end" id="navbarColor01">
                <ul class="navbar-nav me-0">
                    <li class="nav-item">  <%-- 사장이냐 알바냐에 따라 링크 다르게 --%>
                        <a class="nav-link" href="#">Calendar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Rank</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Login/Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

