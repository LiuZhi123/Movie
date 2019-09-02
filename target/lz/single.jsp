<%--
  Created by IntelliJ IDEA.
  User: LiSA
  Date: 2019/8/16
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Single</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/medile.css" rel='stylesheet' type='text/css' />
    <link href="css/single.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/contactstyle.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/faqstyle.css" type="text/css" media="all" />
    <!-- news-css -->
    <link rel="stylesheet" href="news-css/news.css" type="text/css" media="all" />
    <!-- //news-css -->
    <!-- list-css -->
    <link rel="stylesheet" href="list-css/list.css" type="text/css" media="all" />
    <!-- //list-css -->
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/rating_star.css">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="js/rating_star.js"></script>
    <!-- //js -->
    <!---<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>--->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
<%--    <script type="text/css" href="css/rating_star.css"></script>--%>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/owl.carousel.js"></script>
    <script>
        $(document).ready(function() {
            $("#owl-demo").owlCarousel({

                autoPlay: 3000, //Set AutoPlay to 3 seconds

                items : 5,
                itemsDesktop : [640,5],
                itemsDesktopSmall : [414,4]

            });

        });
    </script>
    <script src="js/simplePlayer.js"></script>
    <script>
        $("document").ready(function() {
            $("#video").simplePlayer();
        });
    </script>

</head>

<body>
<!-- header -->
<div class="header">
    <div class="container">
        <div class="w3layouts_logo">
            <a href=""><h1>花瓣<span>电影点评</span></h1></a>
        </div>
        <div class="w3_search">
            <form action="search" method="post">
                <input type="text" name="search" placeholder="搜索" required="">
                <input type="submit" value="Go">
            </form>
        </div>
        <c:if test="${user==null}" var="aaa">
            <div class="w3l_sign_in_register">
                <ul>
                    <li><i class="fa fa-phone" aria-hidden="true"></i> (+000) 123 345 653</li>
                    <li><a href="#" data-toggle="modal" data-target="#myModal">登录</a></li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </c:if>
        <c:if test="${!aaa}">
            <div class="w31_sign_in_register">
                <ul style="text-align: center">
                    <li><i class="fa fa-phone" aria-hidden="true"></i> (+000) 123 345 653</li>
                    <li><a href="user"> 欢迎您，${user.username}</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </c:if>
    </div>
</div>


<!-- //header -->
<!-- bootstrap-pop-up -->
<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                登录 & 注册
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="w3_login_module">
                        <div class="module form-module">
                            <div class="toggle"><i class="fa fa-times fa-pencil"></i>
                                <div class="tooltip">点我注册</div>
                            </div>
                            <div class="form">
                                <h3>登录你的账户</h3>
                                <form action="login" method="post">
                                    <input type="text" name="username" placeholder="Username" required="">
                                    <input type="password" name="password" placeholder="Password" required="">
                                    <input type="submit" value="登录">
                                </form>
                            </div>
                            <div class="form">
                                <h3>创建一个新账号</h3>
                                <form action="register" method="post">
                                    <input type="text" name="username" placeholder="Username" required="">
                                    <input type="password" name="password" placeholder="Password" required="">
                                    <input type="email" name="email" placeholder="Email Address" required="">
                                    <input type="text" name="phone" placeholder="Phone Number" required="">
                                    <input type="submit" value="注册">
                                </form>
                            </div>
                            <div class="cta"><a href="#">Forgot your password?</a></div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<script>
    $('.toggle').click(function(){
        // Switches the Icon
        $(this).children('i').toggleClass('fa-pencil');
        // Switches the forms
        $('.form').animate({
            height: "toggle",
            'padding-top': 'toggle',
            'padding-bottom': 'toggle',
            opacity: "toggle"
        }, "slow");
    });
</script>
<!-- //bootstrap-pop-up -->
<!-- nav -->
<div class="movies_nav">
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="navbar-header navbar-left">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                <nav>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index1.jsp">首页</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Genres <b class="caret"></b></a>
                            <ul class="dropdown-menu multi-column columns-3">
                                <li>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="genres.jsp">动作</a></li>
                                            <li><a href="genres.jsp">传记</a></li>
                                            <li><a href="genres.jsp">犯罪</a></li>
                                            <li><a href="genres.jsp">家庭</a></li>
                                            <li><a href="horror.jsp">恐怖</a></li>
                                            <li><a href="genres.jsp">爱情</a></li>
                                            <li><a href="genres.jsp">运动</a></li>
                                            <li><a href="genres.jsp">战争</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="genres.jsp">冒险</a></li>
                                            <li><a href="comedy.jsp">戏剧</a></li>
                                            <li><a href="genres.jsp">纪录片</a></li>
                                            <li><a href="genres.jsp">科幻</a></li>
                                            <li><a href="genres.jsp">惊悚</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="genres.jsp">动画</a></li>
                                            <li><a href="genres.jsp">古装</a></li>
                                            <li><a href="genres.jsp">戏曲</a></li>
                                            <li><a href="genres.jsp">历史</a></li>
                                            <li><a href="genres.jsp">音乐</a></li>
                                            <li><a href="genres.jsp">心理</a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>
                        </li>
                        <li><a href="series.jsp">电视系列</a></li>
                        <li><a href="news.jsp">影视资讯</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">国家<b class="caret"></b></a>
                            <ul class="dropdown-menu multi-column columns-3">
                                <li>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="genres.jsp">亚洲</a></li>
                                            <li><a href="genres.jsp">法国</a></li>
                                            <li><a href="genres.jsp">台湾</a></li>
                                            <li><a href="genres.jsp">美国</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="genres.jsp">中国</a></li>
                                            <li><a href="genres.jsp">香港</a></li>
                                            <li><a href="genres.jsp">日本</a></li>
                                            <li><a href="genres.jsp">泰国</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="genres.jsp">欧洲</a></li>
                                            <li><a href="genres.jsp">非洲</a></li>
                                            <li><a href="genres.jsp">韩国</a></li>
                                            <li><a href="genres.jsp">英国</a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>
                        </li>
                        <li><a href="short-codes.jsp">Short Codes</a></li>
                        <li><a href="list.jsp">A - z 列表</a></li>
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
</div>
<!-- //nav -->
<div class="general_social_icons">
    <nav class="social">
        <ul>
            <li class="w3_twitter"><a href="#">Twitter <i class="fa fa-twitter"></i></a></li>
            <li class="w3_facebook"><a href="#">Facebook <i class="fa fa-facebook"></i></a></li>
            <li class="w3_dribbble"><a href="#">Dribbble <i class="fa fa-dribbble"></i></a></li>
            <li class="w3_g_plus"><a href="#">Google+ <i class="fa fa-google-plus"></i></a></li>
        </ul>
    </nav>
</div>
<!-- single -->
<div class="single-page-agile-main">
    <div class="container">
        <!-- /w3l-medile-movies-grids -->
        <div class="agileits-single-top">
            <ol class="breadcrumb">
                <li><a href="index1.jsp">Home</a></li>
                <li class="active">Single</li>
            </ol>
        </div>
        <div class="single-page-agile-info">
            <!-- /movie-browse-agile -->
            <div class="show-top-grids-w3lagile">
                <div class="col-sm-8 single-left">
                    <div class="song">
                        <div class="song-info">
                            <h3>${movie.moviename}</h3>
                        </div>
                        <div class="video-grid-single-page-agileits">
                            <div data-video="dLmKio67pVQ" id="video">
                                <img src="images/${movie.infopic}" alt="" class="img-responsive"/>
                            </div>
                    </div>
                    <div class="clearfix"> </div>
                    <ul>
                        <li>国家:${movie.moviecountry}</li>
                        <li>上映时间:${movie.movieyear}</li>
                        <li>电影简介:${movie.movieinfo}</li>
                        <li id="score">综合评分:${movie.score}分 </li>
                    </ul>
                        <c:if test="${f1==null}">
                        <button id="button">加入收藏</button>
                        </c:if>
                        <c:if test="${f1!=null}">
                            <button id="button">取消收藏</button>
                        </c:if>
                    <div class="all-comments">
                        <div class="all-comments-info">
                            <h>你的看法</h>

                            <div id="comment1">
                            <div class="agile-info-wthree-box">
                                <form>
                                    <input type="hidden" name="movieid" value="${movie.movieid}">
                                    <textarea name="cminfo" placeholder="Message" required=""></textarea>
                                    <input name="cmscore" value="1" id="rating_simple2" type="hidden">
                                    <div class="clearfix"> </div>
                                </form>
                                <button id="submit1">发表</button>
                                </div>
                            </div>
                        </div>
                    </div>

<script>
    $(function() {
        var sc="";
        var s=${movie.score};
        for (var i=0;i<5-s;i++){
        sc=sc+"                        <div class=\"block-stars\">\n" +
            "                            <ul class=\"w3l-ratings\">\n" +
            "                                <li><a href=\"#\"><i class=\"fa fa-star-o\" aria-hidden=\"true\"></i></a></li>\n"+
            "                            </ul>\n" +
            "                        </div>";
        }
        for (var i=0;i<s;i++){
            sc=sc+"                        <div class=\"block-stars\">\n" +
                "                            <ul class=\"w3l-ratings\">\n" +
                "                                <li><a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i></a></li>\n"+
                "                            </ul>\n" +
                "                        </div>";
        }
        $("#score").append(sc);
        topage();
    });

    <%--$("#button1").click(function () {--%>
    <%--    $.ajax({--%>
    <%--        url:"${pageContext.request.contextPath}/like",--%>
    <%--        type:"POST",--%>
    <%--        data:"movieid="+${movie.movieid},--%>
    <%--        success:function () {--%>
    <%--            $("#buttto1").html("取消收藏");--%>
    <%--            topage();--%>
    <%--        }--%>
    <%--    })--%>
    <%--})--%>
    $("#rating_simple2").webwidget_rating_sex({
        rating_star_length: '5',
        rating_initial_value: '1',
        rating_function_name: '',//this is function name for click
        directory: 'images/'
    })
    $("#button").click(function () {
        var xx=document.getElementById("button").innerText;
        if ("加入收藏"==xx) {
            $("#button").html("取消收藏");
            $.ajax({
                url:"${pageContext.request.contextPath}/like",
                type:"POST",
                data:"movieid="+${movie.movieid},
                success:function () {
                    topage();
                }
            })
        }
        else {
            var a=confirm("确定要取消收藏吗");
            if (a==true){
                $.ajax({
                    url:"${pageContext.request.contextPath}/dislike",
                    type:"POST",
                    data:"movieid="+${movie.movieid},
                    success:function () {
                        $("#button").html("加入收藏");
                        topage();
                    }
                })
            }

        }

    })



    $("#submit1").click(function () {
       $.ajax({
           url:"${pageContext.request.contextPath}/comment",
           type:"POST",
           data:$("#comment1 form").serialize(),
           success:function () {
               topage();
    }
    });
    });
    
    function topage() {
        $.ajax({
            url:"${pageContext.request.contextPath}/list1",
            type:"POST",
            data:"movieid="+${movie.movieid},
            success:function(result) {
                showDetail(result);
            }
        });
    };
    
    function showDetail(result) {
       // $("#commenttable d1").empty();
       $("#commenttable").empty();
        var list=result.extend.list1;
        $.each(list,function (index,item) {
            var useridTd=item.username;
            var cminfoTd=item.cminfo;
            var star=item.cmscore;
            var t4="";
            for (var i=0;i<5-star;i++){
                t4=t4+"                        <div class=\"block-stars\">\n" +
                    "                            <ul class=\"w3l-ratings\">\n" +
                    "                                <li><a href=\"#\"><i class=\"fa fa-star-o\" aria-hidden=\"true\"></i></a></li>\n"+
                    "                            </ul>\n" +
                    "                        </div>";
            }
            for (var i=0;i<star;i++){
                t4=t4+"                        <div class=\"block-stars\">\n" +
                    "                            <ul class=\"w3l-ratings\">\n" +
                    "                                <li><a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i></a></li>\n"+
                    "                            </ul>\n" +
                    "                        </div>";
            }
            var img=$("<a href=\"user\"><img src=\"images/user.jpg\"></a>");
            var t2=$("<div></div>").addClass("media-left").append(img);
            var t3=$("<div></div>").addClass("media-body").append("<p></p>").append(cminfoTd);
            var t5=$("<div></div>").append(t4);
            var t1=$("<div></div>").addClass("media").append("<h5></h5>").append(useridTd);
            $(t1).append(t2);
            $(t1).append(t3);
            $(t1).append(t5);
            $(t1).appendTo("#commenttable")
        });
    }
</script>


                                        <div class="media-grids">
                                            <table id="commenttable">
                                            </table>
                                        </div>

                    </div>
                </div>
                <div class="col-md-4 single-right">
                    <h3>Up Next</h3>
                    <div class="single-grid-right">
                        <div class="single-right-grids">
                            <div class="col-md-4 single-right-grid-left">
                                <a href="single.jsp"><img src="images/m1.jpg" alt="" /></a>
                            </div>
                            <div class="col-md-8 single-right-grid-right">
                                <a href="single.jsp" class="title"> Nullam interdum metus</a>
                                <p class="author"><a href="#" class="author">John Maniya</a></p>
                                <p class="views">2,114,200 views</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="single-right-grids">
                            <div class="col-md-4 single-right-grid-left">
                                <a href="single.jsp"><img src="images/m2.jpg" alt="" /></a>
                            </div>
                            <div class="col-md-8 single-right-grid-right">
                                <a href="single.jsp" class="title"> Nullam interdum metus</a>
                                <p class="author"><a href="#" class="author">John Maniya</a></p>
                                <p class="views">2,114,200 views </p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="single-right-grids">
                            <div class="col-md-4 single-right-grid-left">
                                <a href="single.jsp"><img src="images/m3.jpg" alt="" /></a>
                            </div>
                            <div class="col-md-8 single-right-grid-right">
                                <a href="single.jsp" class="title"> Nullam interdum metus</a>
                                <p class="author"><a href="#" class="author">John Maniya</a></p>
                                <p class="views">2,114,200 views</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="single-right-grids">
                            <div class="col-md-4 single-right-grid-left">
                                <a href="single.jsp"><img src="images/m4.jpg" alt="" /></a>
                            </div>
                            <div class="col-md-8 single-right-grid-right">
                                <a href="single.jsp" class="title"> Nullam interdum metus</a>
                                <p class="author"><a href="#" class="author">John Maniya</a></p>
                                <p class="views">2,114,200 views</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="single-right-grids">
                            <div class="col-md-4 single-right-grid-left">
                                <a href="single.jsp"><img src="images/m5.jpg" alt="" /></a>
                            </div>
                            <div class="col-md-8 single-right-grid-right">
                                <a href="single.jsp" class="title"> Nullam interdum metus</a>
                                <p class="author"><a href="#" class="author">John Maniya</a></p>
                                <p class="views">2,114,200 views</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="single-right-grids">
                            <div class="col-md-4 single-right-grid-left">
                                <a href="single.jsp"><img src="images/c5.jpg" alt="" /></a>
                            </div>
                            <div class="col-md-8 single-right-grid-right">
                                <a href="single.jsp" class="title"> Nullam interdum metus</a>
                                <p class="author"><a href="#" class="author">John Maniya</a></p>
                                <p class="views">2,114,200 views</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="single-right-grids">
                            <div class="col-md-4 single-right-grid-left">
                                <a href="single.jsp"><img src="images/m6.jpg" alt="" /></a>
                            </div>
                            <div class="col-md-8 single-right-grid-right">
                                <a href="single.jsp" class="title"> Nullam interdum metus</a>
                                <p class="author">By <a href="#" class="author">John Maniya</a></p>
                                <p class="views">2,114,200 views</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="single-right-grids">
                            <div class="col-md-4 single-right-grid-left">
                                <a href="single.jsp"><img src="images/m15.jpg" alt="" /></a>
                            </div>
                            <div class="col-md-8 single-right-grid-right">
                                <a href="single.jsp" class="title"> Nullam interdum metus</a>
                                <p class="author">By <a href="#" class="author">John Maniya</a></p>
                                <p class="views">2,114,200 views</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>

                    </div>
                </div>



                <div class="clearfix"> </div>
            </div>
            <!-- //movie-browse-agile -->
            <!--body wrapper start-->
            <div class="w3_agile_banner_bottom_grid">
                <div id="owl-demo" class="owl-carousel owl-theme">
                    <c:forEach items="${movelist1}" var="movie">
                        <div class="item">
                            <div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
                                <a href="single?movieid=${movie.movieid}" class="hvr-shutter-out-horizontal">
                                    <img src="images/${movie.moviepic}" title="album-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single?movieid=${movie.movieid}"}></a>${movie.moviename}</h6>
                                    </div>
                                    <div class="mid-2 agile_mid_2_home">
                                        <p>${movie.movieyear}</p>
                                        <div class="block-stars">
                                            <ul class="w3l-ratings">
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="ribben">
                                    <p>NEW</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <!--body wrapper end-->


        </div>
        <!-- //w3l-latest-movies-grids -->
    </div>
</div>
<!-- //w3l-medile-movies-grids -->

<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="w3ls_footer_grid">
            <div class="col-md-6 w3ls_footer_grid_left">
                <div class="w3ls_footer_grid_left1">
                    <h2>Subscribe to us</h2>
                    <div class="w3ls_footer_grid_left1_pos">
                        <form action="#" method="post">
                            <input type="email" name="email" placeholder="Your email..." required="">
                            <input type="submit" value="Send">
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-6 w3ls_footer_grid_right">
                <a href="index1.jsp"><h2>One<span>Movies</span></h2></a>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="col-md-5 w3ls_footer_grid1_left">
            <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        </div>
        <div class="col-md-7 w3ls_footer_grid1_right">
            <ul>
                <li>
                    <a href="genres.jsp">Movies</a>
                </li>
                <li>
                    <a href="faq.jsp">FAQ</a>
                </li>
                <li>
                    <a href="horror.jsp">Action</a>
                </li>
                <li>
                    <a href="genres.jsp">Adventure</a>
                </li>
                <li>
                    <a href="comedy.jsp">Comedy</a>
                </li>
                <li>
                    <a href="icons.jsp">Icons</a>
                </li>
                <li>
                    <a href="contact.jsp">Contact Us</a>
                </li>
            </ul>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){
        $(".dropdown").hover(
            function() {
                $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
                $(this).toggleClass('open');
            },
            function() {
                $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
                $(this).toggleClass('open');
            }
        );
    });
</script>
<!-- //Bootstrap Core JavaScript -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->
</body>
</html>