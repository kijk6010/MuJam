<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>MuJaM</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}../resources/images/logo_M.png">
    <!-- Custom Stylesheet -->
    <link href="${pageContext.request.contextPath}../resources/css/style.css" rel="stylesheet">
</head>
<!--*******************
       Preloader start
   ********************-->
<div id="preloader">
    <div class="loader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
        </svg>
    </div>
</div>
<!--*******************
    Preloader end
********************-->
<body>


<!--**********************************
    Main wrapper start
***********************************-->
<div id="main-wrapper">

    <jsp:include page="../main/header.jsp"></jsp:include>
    <!--**********************************
        Content body start
    ***********************************-->
    <div class="content-body">

        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">PUBLIC</a></li>
                    <li class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/new">NEW Music</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="container-fluid">
            <div class="row">
                <div class="col-12 m-b-30">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2 class="d-inline">NEW MUSIC</h2>
                        </div>
                        <div class="col-sm-3 input-group">
                            <label class="input-group-prepend">Genre 1:&nbsp;</label>
                            <select class="custom-select" id="sel1">
                                <option>전체</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                            </select>
                        </div>
                        <div class="col-sm-3 input-group">
                            <label class="input-group-prepend">Genre 2:&nbsp;</label>
                            <select class="custom-select" id="sel2">
                                <option>전체</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                            </select>
                        </div>
                    </div><br><br>
                    <div class="card-deck">
                        <div class="card">
                            <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">비와이 킬링벌스 - 비와이</h5>
                                <p class="card-text"></p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                        <div class="card">
                            <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">비와이 킬링벌스 - 비와이</h5>
                                <p class="card-text"></p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                        <div class="card">
                            <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">비와이 킬링벌스 - 비와이</h5>
                                <p class="card-text"></p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div><br>
                    <div class="card-deck">
                        <div class="card">
                            <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">비와이 킬링벌스 - 비와이</h5>
                                <p class="card-text"></p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                        <div class="card">
                            <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">비와이 킬링벌스 - 비와이</h5>
                                <p class="card-text"></p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                        <div class="card">
                            <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">비와이 킬링벌스 - 비와이</h5>
                                <p class="card-text"></p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div><br>
                    <div class="card-deck">
                        <div class="card">
                            <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">비와이 킬링벌스 - 비와이</h5>
                                <p class="card-text"></p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                        <div class="card">
                            <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">비와이 킬링벌스 - 비와이</h5>
                                <p class="card-text"></p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                        <div class="card">
                            <iframe width="auto" height="250" src="https://www.youtube.com/embed/4tJ7cVpONo4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                            <div class="card-body">
                                <h5 class="card-title">비와이 킬링벌스 - 비와이</h5>
                                <p class="card-text"></p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- #/ container -->
    </div><br>
    <!--**********************************
        Content body end
    ***********************************-->

    <jsp:include page="../main/footer.jsp"></jsp:include>
</div>
<!--**********************************
    Main wrapper end
***********************************-->
<!--**********************************
       Scripts
   ***********************************-->
<script src="${pageContext.request.contextPath}../resources/plugins/common/common.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/settings.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/gleek.js"></script>
<script src="${pageContext.request.contextPath}../resources/js/styleSwitcher.js"></script>

</body>

</html>