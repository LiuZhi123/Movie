<%--
  Created by IntelliJ IDEA.
  User: LiSA
  Date: 2019/8/30
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="no-js h-100" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Shards Dashboard Lite - Free Bootstrap Admin Template – DesignRevision</title>
    <meta name="description" content="A high-quality &amp; free Bootstrap admin dashboard template pack that comes with lots of templates and components.">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" id="main-stylesheet" data-version="1.1.0" href="styles/shards-dashboards.1.1.0.min.css">
    <link rel="stylesheet" href="styles/extras.1.1.0.min.css">
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>
    <script src="scripts/extras.1.1.0.min.js"></script>
    <script src="scripts/shards-dashboards.1.1.0.min.js"></script>
    <link href="static/css/user/base.css" rel="stylesheet" type="text/css">
    <link href="static/css/user/douban.css" rel="stylesheet" type="text/css">
</head>
<body class="h-100">
<div class="color-switcher animated">
    <h5>Accent Color</h5>
    <ul class="accent-colors">
        <li class="accent-primary active" data-color="primary">
            <i class="material-icons">check</i>
        </li>
        <li class="accent-secondary" data-color="secondary">
            <i class="material-icons">check</i>
        </li>
        <li class="accent-success" data-color="success">
            <i class="material-icons">check</i>
        </li>
        <li class="accent-info" data-color="info">
            <i class="material-icons">check</i>
        </li>
        <li class="accent-warning" data-color="warning">
            <i class="material-icons">check</i>
        </li>
        <li class="accent-danger" data-color="danger">
            <i class="material-icons">check</i>
        </li>
    </ul>
    <div class="actions mb-4">
        <a class="mb-2 btn btn-sm btn-primary w-100 d-table mx-auto extra-action" href="#">
            <i class="material-icons">cloud</i> Download</a>
        <a class="mb-2 btn btn-sm btn-white w-100 d-table mx-auto extra-action" href="#">
            <i class="material-icons">book</i> Documentation</a>
    </div>
    <div class="social-wrapper">
        <div class="social-actions">
            <h5 class="my-2">Help us Grow</h5>
            <div class="inner-wrapper">
                <a class="github-button" href="#" data-icon="octicon-star" data-show-count="true" aria-label="Star DesignRevision/shards-dashboard on GitHub">Star</a>
                <!-- <iframe style="width: 91px; height: 21px;"src="https://yvoschaap.com/producthunt/counter.html#href=https%3A%2F%2Fwww.producthunt.com%2Fr%2Fp%2F112998&layout=wide" width="56" height="65" scrolling="no" frameborder="0" allowtransparency="true"></iframe> -->
            </div>
        </div>
        <div id="social-share" data-url="#" data-text="🔥 Check out Shards Dashboard Lite, a free and beautiful Bootstrap 4 admin dashboard template!" data-title="share"></div>
        <div class="loading-overlay">
            <div class="spinner"></div>
        </div>
    </div>
    <div class="close">
        <i class="material-icons">close</i>
    </div>
</div>
<div class="color-switcher-toggle animated pulse infinite">
    <i class="material-icons">settings</i>
</div>
<div class="container-fluid">
    <div class="row">
        <!-- Main Sidebar -->
        <aside class="main-sidebar col-12 col-md-3 col-lg-2 px-0">
            <div class="main-navbar">
                <nav class="navbar align-items-stretch navbar-light bg-white flex-md-nowrap border-bottom p-0">
                    <a class="navbar-brand w-100 mr-0" href="#" style="line-height: 25px;">
                        <div class="d-table m-auto">
                            <img id="main-logo" class="d-inline-block align-top mr-1" style="max-width: 25px;" src="images/shards-dashboards-logo.svg" alt="Shards Dashboard">
                            <span class="d-none d-md-inline ml-1">Shards Dashboard</span>
                        </div>
                    </a>
                    <a class="toggle-sidebar d-sm-inline d-md-none d-lg-none">
                        <i class="material-icons">&#xE5C4;</i>
                    </a>
                </nav>
            </div>
            <form action="#" class="main-sidebar__search w-100 border-right d-sm-flex d-md-none d-lg-none">
                <div class="input-group input-group-seamless ml-3">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <i class="fas fa-search"></i>
                        </div>
                    </div>
                    <input class="navbar-search form-control" type="text" placeholder="Search for something..." aria-label="Search"> </div>
            </form>
            <div class="nav-wrapper">
                <ul class="nav flex-column">
                    <%--              <li class="nav-item">--%>
                    <%--                <a class="nav-link " href="index.html">--%>
                    <%--                  <i class="material-icons">edit</i>--%>
                    <%--                  <span>Blog Dashboard</span>--%>
                    <%--                </a>--%>
                    <%--              </li>--%>
                    <%--              <li class="nav-item">--%>
                    <%--                <a class="nav-link " href="components-blog-posts.html">--%>
                    <%--                  <i class="material-icons">vertical_split</i>--%>
                    <%--                  <span>Blog Posts</span>--%>
                    <%--                </a>--%>
                    <%--              </li>--%>
                    <li class="nav-item">
                        <a class="nav-link " href="test">
                            <i class="material-icons">note_add</i>
                            <span>电影管理</span>
                        </a>
                    </li>
                    <%--              <li class="nav-item">--%>
                    <%--                <a class="nav-link " href="form-components.html">--%>
                    <%--                  <i class="material-icons">view_module</i>--%>
                    <%--                  <span>Forms &amp; Components</span>--%>
                    <%--                </a>--%>
                    <%--              </li>--%>
                    <li class="nav-item">
                        <a class="nav-link active" href="user">
                            <i class="material-icons">table_chart</i>
                            <span>用户及留言管理</span>
                        </a>
                    </li>
                    <%--              <li class="nav-item">--%>
                    <%--                <a class="nav-link " href="user-profile-lite.html">--%>
                    <%--                  <i class="material-icons">person</i>--%>
                    <%--                  <span>User Profile</span>--%>
                    <%--                </a>--%>
                    <%--              </li>--%>
                    <%--              <li class="nav-item">--%>
                    <%--                <a class="nav-link " href="errors.html">--%>
                    <%--                  <i class="material-icons">error</i>--%>
                    <%--                  <span>Errors</span>--%>
                    <%--                </a>--%>
                    <%--              </li>--%>
                </ul>
            </div>
        </aside>
        <!-- End Main Sidebar -->
        <main class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">
            <div class="main-navbar sticky-top bg-white">
                <!-- Main Navbar -->
                <nav class="navbar align-items-stretch navbar-light flex-md-nowrap p-0">
                    <form action="#" class="main-navbar__search w-100 d-none d-md-flex d-lg-flex">
                        <div class="input-group input-group-seamless ml-3">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <i class="fas fa-search"></i>
                                </div>
                            </div>
                            <input class="navbar-search form-control" type="text" placeholder="Search for something..." aria-label="Search"> </div>
                    </form>
                    <ul class="navbar-nav border-left flex-row ">
                        <li class="nav-item border-right dropdown notifications">
                            <a class="nav-link nav-link-icon text-center" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <div class="nav-link-icon__wrapper">
                                    <i class="material-icons">&#xE7F4;</i>
                                    <span class="badge badge-pill badge-danger">2</span>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-small" aria-labelledby="dropdownMenuLink">
                                <a class="dropdown-item" href="#">
                                    <div class="notification__icon-wrapper">
                                        <div class="notification__icon">
                                            <i class="material-icons">&#xE6E1;</i>
                                        </div>
                                    </div>
                                    <div class="notification__content">
                                        <span class="notification__category">Analytics</span>
                                        <p>Your website’s active users count increased by
                                            <span class="text-success text-semibold">28%</span> in the last week. Great job!</p>
                                    </div>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <div class="notification__icon-wrapper">
                                        <div class="notification__icon">
                                            <i class="material-icons">&#xE8D1;</i>
                                        </div>
                                    </div>
                                    <div class="notification__content">
                                        <span class="notification__category">Sales</span>
                                        <p>Last week your store’s sales count decreased by
                                            <span class="text-danger text-semibold">5.52%</span>. It could have been worse!</p>
                                    </div>
                                </a>
                                <a class="dropdown-item notification__all text-center" href="#"> View all Notifications </a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-nowrap px-3" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                <img class="user-avatar rounded-circle mr-2" src="images/user.jpg" alt="User Avatar">
                                <span class="d-none d-md-inline-block">Sierra Brooks</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-small">
                                <a class="dropdown-item" href="user-profile-lite.html">
                                    <i class="material-icons">&#xE7FD;</i> Profile</a>
                                <a class="dropdown-item" href="components-blog-posts.html">
                                    <i class="material-icons">vertical_split</i> Blog Posts</a>
                                <a class="dropdown-item" href="add-new-post.html">
                                    <i class="material-icons">note_add</i> Add New Post</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item text-danger" href="loginout">
                                    <i class="material-icons text-danger">&#xE879;</i> Logout </a>
                            </div>
                        </li>
                    </ul>
                    <nav class="nav">
                        <a href="#" class="nav-link nav-link-icon toggle-sidebar d-md-inline d-lg-none text-center border-left" data-toggle="collapse" data-target=".header-navbar" aria-expanded="false" aria-controls="header-navbar">
                            <i class="material-icons">&#xE5D2;</i>
                        </a>
                    </nav>
                </nav>
            </div>
            <!-- / .main-navbar -->
            <div class="main-content-container container-fluid px-4">
                <!-- Page Header -->
                <div class="page-header row no-gutters py-4">
                    <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
                        <span class="text-uppercase page-subtitle">Overview</span>
                        <h3 class="page-title">Data Tables</h3>
                    </div>
                </div>
                <!-- End Page Header -->
                <!-- Default Light Table -->
                <div class="row">
                    <div class="col">
                        <div class="card card-small mb-4">
                            <div class="card-header border-bottom">
                                <h6 class="m-0">电影列表</h6>
                                <div class="row">
                                    <div class="col-md-4 col-md-offset-8">
                                        <button class="btn btn-primary" id="add1">新增</button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body p-0 pb-3 text-center">
                                <table class="table mb-0">
                                    <thead class="bg-light">
                                    <tr>
                                        <th scope="col" class="border-0">#</th>
                                        <th scope="col" class="border-0">电影名</th>
                                        <th scope="col" class="border-0">预览图</th>
                                        <th scope="col" class="border-0">简介</th>
                                        <th scope="col" class="border-0">上映时间</th>
                                        <th scope="col" class="border-0">分类</th>
                                        <th scope="col" class="border-0">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${movies}" var="movie" varStatus="index">
                                        <tr>
                                            <td>${index.index+1}</td>
                                            <td>${movie.moviename}</td>
                                            <div class="obssin"><td class="aob"><a href="single?movieid=${movie.movieid}" target="_blank"><img src="images/${movie.moviepic}" class="climg" width="80%" height="100%"></a></td></div>
                                            <td>${movie.movieinfo}</td>
                                            <td>${movie.movieyear}</td>
                                            <td>${movie.genre}</td>
                                            <td><a href="del4?movieid=${movie.movieid}">删除</a></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Default Light Table -->
                <!-- Default Dark Table -->
<%--                <div class="row">--%>
<%--                    <div class="col">--%>
<%--                        <div class="card card-small overflow-hidden mb-4">--%>
<%--                            <div class="card-header bg-dark">--%>
<%--                                <h6 class="m-0 text-white">留言列表</h6>--%>
<%--                            </div>--%>
<%--                            <div class="card-body p-0 pb-3 bg-dark text-center">--%>
<%--                                <table class="table table-dark mb-0">--%>
<%--                                    <thead class="thead-dark">--%>
<%--                                    <tr>--%>
<%--                                        <th scope="col" class="border-bottom-0">#</th>--%>
<%--                                        <th scope="col" class="border-bottom-0">留言用户</th>--%>
<%--                                        <th scope="col" class="border-bottom-0">留言电影</th>--%>
<%--                                        <th scope="col" class="border-bottom-0">电影预览图</th>--%>
<%--                                        <th scope="col" class="border-bottom-0">留言内容</th>--%>
<%--                                        <th scope="col" class="border-bottom-0">操作</th>--%>
<%--                                    </tr>--%>
<%--                                    </thead>--%>
<%--                                    <tbody>--%>
<%--                                    <c:forEach items="${comments}" var="comment" varStatus="index">--%>
<%--                                        <tr>--%>
<%--                                            <td>${index.index+1}</td>--%>
<%--                                            <c:set var="isDoing" value="0"></c:set>--%>
<%--                                            <c:forEach items="${users1}" var="user">--%>
<%--                                                <c:if test="${user.userid eq comment.userid and isDoing==0}">--%>
<%--                                                    <c:set var="isDoing" value="1"></c:set>--%>
<%--                                                    <td>${user.username}</td>--%>
<%--                                                </c:if>--%>
<%--                                            </c:forEach>--%>
<%--                                            <c:set var="is" value="0"></c:set>--%>
<%--                                            <c:forEach items="${movies}" var="movie">--%>
<%--                                                <c:if test="${movie.movieid eq comment.movieid and is==0}">--%>
<%--                                                    <c:set var="is" value="1"></c:set>--%>
<%--                                                    <td>${movie.moviename}</td>--%>
<%--                                                    <div class="obssin">--%>
<%--                                                        <td class="aob"><a href="single?movieid=${movie.movieid}" target="_blank"><img src="images/${movie.moviepic}" class="climg"></a></td></div>--%>
<%--                                                </c:if>--%>
<%--                                            </c:forEach>--%>
<%--                                            <td>${comment.cminfo}</td>--%>
<%--                                            <td><a href="del3?cmid=${comment.cmid}">删除</a></td>--%>
<%--                                        </tr>--%>
<%--                                    </c:forEach>--%>
<%--                                    </tbody>--%>
<%--                                </table>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <!-- End Default Dark Table -->
            </div>
            <script>
                function reset_form(ele){
                    $(ele)[0].reset();
                    //清空表单样式
                    $(ele).find("*").removeClass("has-error has-success");
                    $(ele).find(".help-block").text("");
                }

                $("#add1").click(function(){
                    //清除表单数据（表单完整重置（表单的数据，表单的样式））
                    reset_form("#userAddModal form");
                    //弹出模态框
                    $("#userAddModal").modal({
                        backdrop:"static"
                    });
                });
            </script>
            <div class="modal fade" id="userAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">添加新电影</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" action="${pageContext.request.contextPath}/addnew" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">电影名</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="moviename" class="form-control" id="id_add_input" placeholder="moviename">
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">电影简介</label>
                                    <div class="col-sm-10">
                                        <textarea name="movieinfo" class="form-control" id="username_add_input" placeholder="movieinfo"></textarea>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">电影封面</label>
                                    <div class="col-sm-10">
                                        <input type="file" name="moviepic1" class="form-control" id="sex_add_input" >
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">上映时间</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="movieyear" class="form-control">
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">上映国家</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="moviecountry" class="form-control">
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">画质</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="status" class="form-control">
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">电影分类</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="genre" class="form-control">
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <input type="reset" class="btn btn-default" data-dismiss="modal"></button>
                                    <input type="submit" class="btn btn-primary" id="user_save_btn">
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
            <footer class="main-footer d-flex p-2 px-3 bg-white border-top">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Blog</a>
                    </li>
                </ul>
                <span class="copyright ml-auto my-auto mr-2">Copyright © 2018  DesignRevision - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></span>
            </footer>
        </main>
    </div>
</div>
<div class="promo-popup animated">
    <a href="#" class="pp-cta extra-action">
        <img src="https://dgc2qnsehk7ta.cloudfront.net/uploads/sd-blog-promo-2.jpg"> </a>
    <div class="pp-intro-bar"> Need More Templates?
        <span class="close">
          <i class="material-icons">close</i>
        </span>
        <span class="up">
          <i class="material-icons">keyboard_arrow_up</i>
        </span>
    </div>
    <div class="pp-inner-content">
        <h2>Shards Dashboard Pro</h2>
        <p>A premium & modern Bootstrap 4 admin dashboard template pack.</p>
        <a class="pp-cta extra-action" href="#">Download</a>
    </div>
</div>
</body>
</html>
