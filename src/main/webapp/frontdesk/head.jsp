<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>
    <meta charset="utf-8" />
    <title>Music | Web Application</title>
    <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link rel="stylesheet" href="/js/jPlayer/jplayer.flat.css" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="/css/animate.css" type="text/css" />
    <link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css" />
    <link rel="stylesheet" href="/css/simple-line-icons.css" type="text/css" />
    <link rel="stylesheet" href="/css/font.css" type="text/css" />
    <link rel="stylesheet" href="/css/app.css" type="text/css" />
    <!--[if lt IE 9]>
    <script src="/js/ie/html5shiv.js"></script>
    <script src="/js/ie/respond.min.js"></script>
    <script src="/js/ie/excanvas.js"></script>
    <![endif]-->
</head>
<body>
  <header class="bg-white-only header header-md navbar navbar-fixed-top-xs">
        <div class="navbar-header aside bg-info nav-xs">
            <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
                <i class="icon-list"></i>
            </a>
            <a href="/index.jsp" class="navbar-brand text-lt">
                <i class="icon-earphones"></i>
                <img src="/images/logo.png" alt="." class="hide">
                <span class="hidden-nav-xs m-l-sm">Music</span>
            </a>
            <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".user">
                <i class="icon-settings"></i>
            </a>
        </div>      <ul class="nav navbar-nav hidden-xs">
        <li>
            <a href="#nav,.navbar-header" data-toggle="class:nav-xs,nav-xs" class="text-muted">
                <i class="fa fa-indent text"></i>
                <i class="fa fa-dedent text-active"></i>
            </a>
        </li>
    </ul>
        <form class="navbar-form navbar-left input-s-lg m-t m-l-n-xs hidden-xs" role="search">
            <div class="form-group">
                <div class="input-group">
                <span class="input-group-btn">
                  <button type="submit" class="btn btn-sm bg-white btn-icon rounded"><i class="fa fa-search"></i></button>
                </span>
                    <input type="text" class="form-control input-sm no-border rounded" placeholder="搜索歌名">
                </div>
            </div>
        </form>
        <div class="navbar-right ">
            <ul class="nav navbar-nav m-n hidden-xs nav-user user">
                <c:choose>
                    <c:when test="${empty sessionScope.user}">
                        <li class="hidden-xs">
                            <a href="/frontdesk/signin.jsp" class="dropdown-toggle lt">
                                登录
                            </a>
                        </li>
                        <li class="hidden-xs">
                          <a href="/frontdesk/signup.jsp" class="dropdown-toggle lt"  style="color:#428bca">
                            注册
                          </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle bg clear" data-toggle="dropdown">
                          <span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
                            <img src="/images/a0.png" alt="...">
                          </span>
                                    ${sessionScope.user.userName}<b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight">
                                <li>
                                    <span class="arrow top"></span>
                                    <a href="/frontdesk/musiccollection.jsp">我的音乐收藏</a>
                                </li>
                                <li>
                                    <a href="/vip/${sessionScope.user.userId}">我的会员</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="/userlogout" >退出</a>
                                </li>
                            </ul>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </header>
    <section>
     <section class="hbox stretch">
        <!-- .aside -->
        <aside class="bg-black dk nav-xs aside hidden-print" id="nav">
            <section class="vbox">
                <section class="w-f-md scrollable">
                    <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="10px" data-railOpacity="0.2">
                        <!-- nav -->
                        <nav class="nav-primary hidden-xs">
                            <ul class="nav bg clearfix">
                                <li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
                                    Discover
                                </li>
                                <li>
                                    <a href="/index.jsp">
                                        <i class="icon-disc icon text-success"></i>
                                        <span class="font-bold">热门&最新</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="/frontdesk/genres.jsp">
                                        <i class="icon-music-tone-alt icon text-info"></i>
                                        <span class="font-bold">分类</span>
                                    </a>
                                </li>

                                <li class="m-b hidden-nav-xs"></li>
                            </ul>
                        </nav>
                        <!-- / nav -->
                    </div>
                </section>
            </section>
        </aside>

</body>
</html>

