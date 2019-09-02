<%--
  Created by IntelliJ IDEA.
  User: LiSA
  Date: 2019/8/16
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>List</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/faqstyle.css" type="text/css" media="all" />
    <link href="css/medile.css" rel='stylesheet' type='text/css' />
    <link href="css/single.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/contactstyle.css" type="text/css" media="all" />
    <!-- news-css -->
    <link rel="stylesheet" href="news-css/news.css" type="text/css" media="all" />
    <!-- //news-css -->
    <!-- list-css -->
    <link rel="stylesheet" href="list-css/list.css" type="text/css" media="all" />
    <!-- //list-css -->
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <!-- //font-awesome icons -->
    <!-- js -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <!-- //js -->
    <!---<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>--->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <!-- tables -->
    <link rel="stylesheet" type="text/css" href="list-css/table-style.css" />
    <link rel="stylesheet" type="text/css" href="list-css/basictable.css" />
    <script type="text/javascript" src="list-js/jquery.basictable.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#table').basictable();

            $('#table-breakpoint').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint1').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint2').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint3').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint4').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint5').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint6').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint7').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint8').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint9').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint10').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint11').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint12').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint13').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint14').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint15').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint16').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint17').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint18').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint19').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint20').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint21').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint22').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint23').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint24').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint25').basictable({
                breakpoint: 768
            });
            $('#table-breakpoint26').basictable({
                breakpoint: 768
            });
        });
    </script>
    <!-- //tables -->
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
                <input type="text" name="moviename" placeholder="搜索" required="">
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
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">分类 <b class="caret"></b></a>
                            <ul class="dropdown-menu multi-column columns-3">
                                <li>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="genres?genre=动作">动作</a></li>
                                            <li><a href="genres?genre=传记">传记</a></li>
                                            <li><a href="genres?genre=犯罪">犯罪</a></li>
                                            <li><a href="genres?genre=家庭">家庭</a></li>
                                            <li><a href="horror.jsp">恐怖</a></li>
                                            <li><a href="genres?genre=爱情">爱情</a></li>
                                            <li><a href="genres?genre=运动">运动</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="genres?genre=冒险">冒险</a></li>
                                            <li><a href="comedy.jsp">戏剧</a></li>
                                            <li><a href="genres?genre=纪录片">纪录片</a></li>
                                            <li><a href="genres?genre=科幻">科幻</a></li>
                                            <li><a href="genres?genre=惊悚">惊悚</a></li>
                                            <li><a href="genres?genre=战争">战争</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="multi-column-dropdown">
                                            <li><a href="genres?genre=动画">动画</a></li>
                                            <li><a href="genres?genre=古装">古装</a></li>
                                            <li><a href="genres?genre=戏曲">戏曲</a></li>
                                            <li><a href="genres?genre=历史">历史</a></li>
                                            <li><a href="genres?genre=音乐">音乐</a></li>
                                            <li><a href="genres?genre=心理">心理</a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>
                        </li>
                        <li><a href="series">电视系列</a></li>
                        <li><a href="news">影视资讯</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">国家 <b class="caret"></b></a>
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
<script>
    $(function () {
        to_page(1);
    });
    function to_page(pn) {
        $.ajax({
            url:"${pageContext.request.contextPath}/page",
            data:"pn="+pn,
            type:"GET",
            success:function (result) {
                buildusertable(result);
                build_page_info(result);
                build_page_nav(result);
            }
        })
    }
    function build_page_info(result) {
        $("#page_info_area").empty();
        $("#page_info_area").append("当前"+result.extend.pageInfo.pageNum+"页,总"+result.extend.pageInfo.pages+"页,总"+result.extend.pageInfo.total+"条记录");
        totalRecord=result.extend.pageInfo.total;
        currentPage=result.extend.pageInfo.pageNum;
    }

    function build_page_nav(result) {
        $("#page_nav_area").empty();
        var ul=$("<ul></ul>").addClass("pagination");
        var firstPageLi=$("<li></li>").append($("<a></a>").append("首页").attr("href",""));
        var prePageLi=$("<li></li>").append($("<a></a>").append("&laquo;"));
        if (result.extend.pageInfo.hasPreviousPage == false) {
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled")
        }else {
            firstPageLi.click(function () {
                to_page(1);
            })
            prePageLi.click(function () {
                to_page(result.extend.pageInfo.pageNum-1);
            })
        };
        var nextPageLi=$("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi=$("<li></li>").append($("<a></a>").append("末页").attr("href",""));
        if (result.extend.pageInfo.hasNextPage ==false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else{
            lastPageLi.click(function () {
                alert(result.extend.pageInfo.pages);
                to_page(result.extend.pageInfo.pages);
            })
            nextPageLi.click(function () {
                to_page(result.extend.pageInfo.pageNum+1);
            })
        }

        //添加首页和前一页 的提示
        ul.append(firstPageLi).append(prePageLi);
        //1,2，3遍历给ul中添加页码提示
        $.each(result.extend.pageInfo.navigatepageNums,function(index,item){

            var numLi = $("<li></li>").append($("<a></a>").append(item));
            if(result.extend.pageInfo.pageNum == item){
                numLi.addClass("active");
            }
            numLi.click(function(){
                to_page(item);
            });
            ul.append(numLi);
        });
        //添加下一页和末页 的提示
        ul.append(nextPageLi).append(lastPageLi);
        //把ul加入到nav
        var navEle = $("<nav></nav>").append(ul);
        navEle.appendTo("#page_nav_area");
    }


    function buildusertable(result) {
        $("#123 tbody").empty();
        var movie=result.extend.pageInfo.list;
        var size=result.extend.pageInfo.total;
        $("#s1").html(size);
        $.each(movie,function (index,item) {
            var moviename=item.moviename;
            var url=$("<img src=\"images/"+item.moviepic+"\" class=\"img-responsive\">");
            var pic=$("<div></div>").addClass("col-md-2 w3l-movie-gride-agile").append(url);
            var t1=$("<td></td>").append(index+1);
            var t2=$("<td></td>").addClass("w3-list-img").append(pic);
            var t3=$("<span></span>").append(moviename);
            t2=$(t2).append(t3);
            var t4=$("<td></td>").append(item.movieyear);
            var t7=$("<td></td>").append(item.status);
            var t5=$("<td></td>").append(item.moviecountry);
            var t6=$("<td></td>").append(item.genre);
            var t8=$("<td></td>").append(item.score);
            $("<tr></tr>").append(t1).append(t2).append(t4).append(t7).append(t5).append(t6).append(t8).appendTo("#123 tbody");
            // $(size).appendTo("#s1");
        })
    }
</script>
<!-- faq-banner -->
<div class="faq">
    <h4 class="latest-text w3_faq_latest_text w3_latest_text">Movies List</h4>
    <div class="container">
        <div class="agileits-news-top">
            <ol class="breadcrumb">
                <li><a href="index1.jsp">Home</a></li>
                <li class="active">List</li>
            </ol>
        </div>
        <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
            <div id="myTabContent" class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                    <div class="agile-news-table">
                        <div class="w3ls-news-result">
                            <h4>Search Results : <span id="s1"></span></h4>
                        </div>
                        <table id="123">
                            <thead>
                            <tr>
                                <th>No.</th>
                                <th>Movie Name</th>
                                <th>Year</th>
                                <th>Status</th>
                                <th>Country</th>
                                <th>Genre</th>
                                <th>Rating</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                        <div class="row">
                            <!--分页文字信息  -->
                            <div class="col-md-6" id="page_info_area"></div>
                            <!-- 分页条信息 -->
                            <div class="col-md-6" id="page_nav_area"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //faq-banner -->
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
                <a href="Homepage.jsp"><h2>One<span>Movies</span></h2></a>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="col-md-5 w3ls_footer_grid1_left">
            <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        </div>
        <div class="col-md-7 w3ls_footer_grid1_right">
            <ul>
                <li>
                    <a href="genres.html">Movies</a>
                </li>
                <li>
                    <a href="faq.html">FAQ</a>
                </li>
                <li>
                    <a href="horror.html">Action</a>
                </li>
                <li>
                    <a href="genres.html">Adventure</a>
                </li>
                <li>
                    <a href="comedy.html">Comedy</a>
                </li>
                <li>
                    <a href="icons.html">Icons</a>
                </li>
                <li>
                    <a href="contact.html">Contact Us</a>
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
