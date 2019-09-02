<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-cmn-Hans" class="ua-windows ua-webkit">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <meta name="referrer" content="always">
    <title>${user.username}</title>
    <meta http-equiv="Pragma" content="no-cache">
    <link rel="stylesheet" href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
    <script type="text/javascript" src="static/js/jquery-3.4.1.min.js" ></script>
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link href="static/css/user/douban.css" rel="stylesheet" type="text/css">
    <link href="static/css/user/base.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="static/css/user/6604e3c29e80e55f.css">
    <link href="static/css/user/index.css" rel="stylesheet" type="text/css">
</head>
<body>
<link href="static/css/user/bundle.css" rel="stylesheet" type="text/css">
<div id="db-global-nav" class="global-nav">
    <div class="bd">
        <div class="top-nav-info">
            <ul>
                <li class="nav-user-account">
                    <a target="_blank" href="#" class="bn-more">
                        <span>${user.username}的帐号</span><span class="arrow"></span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="top-nav-reminder">
            <div id="top-nav-notimenu" class="more-items">
                <div class="bd">
                    <p>加载中...</p>
                </div>
            </div>
        </div>
        <div class="global-nav-items">
            <ul>
                <li class="">
                    <a href="index1.jsp" target="_blank">去首页</a>
                </li>
            </ul>
        </div>

    </div>
</div>
<link href="static/css/user/bundle(1).css" rel="stylesheet" type="text/css">
<div id="wrapper">
    <div id="content">
        <div class="grid-16-8 clearfix">
            <div class="article drop-area ui-sortable">

                <div id="db-usr-profile" class="clearfix">
                    <div class="pic">
                        <a href="#">
                            <img src="images/user.jpg" alt="哔哩咕噜">
                        </a>
                    </div>
                    <div class="info">
                        <h1>
                            ${user.username}
                            <div id="edit_signature" class="j a_edit_signature edtext pl">
                                <span id="display" style="display: inline;"></span>
                                <span id="edi" style="display: inline">
        <a class="sign-text" href="javascript:void(0);">添加签名档</a>
    </span>
                                <span id="error" class="attn" style="display: none;"></span>
                            </div>
                        </h1>
                    </div>
                </div>
                <div class="clear"></div>
                <div id="user_guide">
                    <p class="guide">${user.username}，这里是主页，用来展示生活和发现。</p>
                    <ol>
                        <li class="user-icon">
                            <h5 class="done"><span>上传头像</span></h5>
                        </li>
                        <li class="user-intro clearfix">
                            <h5 class="todo"><a href="#">写一段自我介绍</a></h5>
                            <form name="form" action="#" method="post"><div style="display:none;"><input type="hidden" name="ck" value="N-wD"></div>
                                <div class="item">
                                    <textarea name="text" id="text"></textarea>
                                </div>
                                <p class="error"></p>
                                <span class="bn-flat"><input type="button" name="intro_submit" value="更新自我介绍" id="intro_submit"></span>
                            </form>
                        </li>
                    </ol>
                </div>
                <div class="sort " id="book">
                    <h2>
                        我的收藏
                        &nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·
                        <span class="pl">&nbsp;(
                <a href="#" target="_blank">${movies1.size()}本收藏过</a>
                ) </span>
                    </h2>
<%--                    <c:forEach items="${userBooks}" var="userbook">--%>
<%--                    <div class="obssin">--%>
<%--                        <div class="substatus">收藏过</div>--%>
<%--                        <ul>--%>
<%--                            <c:forEach items="${books}" var="book">--%>
<%--                                <c:if test="${book.bookid eq userbook.bid}">--%>
<%--                                    <li class="aob"><a href="#" target="_blank"><img src="static/${book.bookimage}" class="climg"></a></li>--%>
<%--                                </c:if>--%>
<%--                            </c:forEach>--%>
<%--                        </ul>--%>
<%--                        <div class="clear"></div>--%>
<%--                        <div style="float: right;"><a href="del?bid=${userbook.bid}&uid=${userbook.uid}"><span>删除</span></a></div>--%>
<%--                    </div>--%>
<%--                    </c:forEach>--%>
                    <c:forEach items="${movies1}" var="movie">
                        <div class="obssin">
                            <div class="substatus">收藏过</div>
                            <ul>
                                        <li class="aob"><a href="#" target="_blank"><img src="images/${movie.moviepic}" class="climg"></a></li>
                            </ul>
                            <div class="clear"></div>
                            <div style="float: right;"><a href="del?movieid=${movie.movieid}"><span>删除</span></a></div>
                        </div>
                    </c:forEach>
                </div>
                <div class="sort" id="pinglun">
                    <h2>
                        我的评论
                        &nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·&nbsp;·
                        <span class="pl">&nbsp;(
                <a href="#" target="_blank">${message.size()}本评论过</a>
                ) </span>
                    </h2>
                    <c:forEach items="${message}" var="comment">
                    <div class="obssin">
                        <div class="substatus">评论过</div>
                        <br>
                        <ul>
                            <c:set var="isDoing" value="0"></c:set>
                            <c:forEach items="${movies}" var="movie">
                                <c:if test="${movie.movieid eq comment.movieid and isDoing==0}">
                                    <c:set var="isDoing" value="1"></c:set>
                                    <li class="aob"><a href="single?movieid=${movie.movieid}" target="_blank"><img src="images/${movie.moviepic}" class="climg"></a></li>
                                </c:if>
                            </c:forEach>
                        </ul>
                        ${comment.cminfo}
                        <div class="clear"></div>
                        <div style="float: right;"><a href="del1?cmid=${comment.cmid}"><span>删除</span></a></div>
                    </div>
                        <br>
                    </c:forEach>
                </div>
            </div>
            <div class="aside drop-area ui-sortable">
                <div id="profile">
                    <div class="infobox">
                        <div class="ex1"><span></span></div>
                        <div class="bd">
                            <div class="basic-info">
                                <img src="images/user.jpg" class="userface" alt="">
                                <div class="user-info">
                                    <a href="loginout">退出登录</a>
                                </div>
                            </div>
                            <div class="sep-line"></div>
                            <div class="user-intro">
                                <div id="edit_intro" class="j edtext pl">
                                    <span id="intro_display"></span>
                                    <span id="intro_disp_act" style="display: inline">
                              <p>名字：${user.username}</p>
        </span>
                                    <span id="intro_error" class="attn" style="display: none;"></span>
                                </div>
                            </div>
                        </div>
                        <div class="ex2"><span></span></div>
                    </div>
                </div>
<%--                <div id="friend">--%>
<%--                    <div class="panel-group" id="accordion">--%>
<%--                        <div class="panel panel-default">--%>
<%--                            <div class="panel-heading">--%>
<%--                                <h4 class="panel-title">--%>
<%--                                    <a data-toggle="collapse" data-parent="#accordion"--%>
<%--                                       href="#collapseOne">--%>
<%--                                        我关注的人--%>
<%--                                    </a>--%>
<%--                                </h4>--%>
<%--                            </div>--%>
<%--                            <div id="collapseOne" class="panel-collapse collapse in">--%>
<%--                                <div class="panel-body">--%>
<%--                                    <ul class="list-group">--%>
<%--                                        <c:forEach items="${human}" var="human">--%>
<%--                                        <li class="list-group-item">${human.username}</li>--%>
<%--                                        </c:forEach>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="panel-group" id="accordion1">--%>
<%--                        <div class="panel panel-default">--%>
<%--                            <div class="panel-heading">--%>
<%--                                <h4 class="panel-title">--%>
<%--                                    <a data-toggle="collapse" data-parent="#accordion1"--%>
<%--                                       href="#collapseTwo">--%>
<%--                                        关注我的人--%>
<%--                                    </a>--%>
<%--                                </h4>--%>
<%--                            </div>--%>
<%--                            <div id="collapseTwo" class="panel-collapse collapse in">--%>
<%--                                <div class="panel-body">--%>
<%--                                    <ul class="list-group">--%>
<%--                                        <c:forEach items="${humaned}" var="humaned">--%>
<%--                                            <li class="list-group-item">${humaned.username}</li>--%>
<%--                                        </c:forEach>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <div class="sort " id="doulist">
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<div id="footer">
    <a href="#" style="display: none;"></a>
</div>
</div>
</body></html>