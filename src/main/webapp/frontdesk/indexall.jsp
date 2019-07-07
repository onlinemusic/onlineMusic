<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="en" class="app">
<head>
    <meta charset="utf-8"/>
    <title>Music | Web Application</title>
    <meta name="description"
          content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <link rel="stylesheet" href="/js/jPlayer/jplayer.flat.css" type="text/css"/>
    <link rel="stylesheet" href="/css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="/css/animate.css" type="text/css"/>
    <link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="/css/simple-line-icons.css" type="text/css"/>
    <link rel="stylesheet" href="/css/font.css" type="text/css"/>
    <link rel="stylesheet" href="/css/app.css" type="text/css"/>
    <!--[if lt IE 9]>
    <script src="/js/ie/html5shiv.js"></script>
    <script src="/js/ie/respond.min.js"></script>
    <script src="/js/ie/excanvas.js"></script>
    <![endif]-->
</head>
<body>
<section class="vbox" >
    <header class="bg-white-only header header-md navbar navbar-fixed-top-xs">
        <div class="navbar-header aside bg-info nav-xs">
            <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
                <i class="icon-list"></i>
            </a>
            <a href="/part" class="navbar-brand text-lt" target="frames">
                <i class="icon-earphones"></i>
                <img src="/images/logo.png" alt="." class="hide">
                <span class="hidden-nav-xs m-l-sm">Music</span>
            </a>
            <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".user">
                <i class="icon-settings"></i>
            </a>
        </div>
        <ul class="nav navbar-nav hidden-xs">
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
                  <button type="submit" class="btn btn-sm bg-white btn-icon rounded"><i
                          class="fa fa-search"></i></button>
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
                            <a href="/frontdesk/signin.jsp" class="dropdown-toggle lt" target="_self">
                                登录
                            </a>
                        </li>
                        <li class="hidden-xs">
                            <a href="/frontdesk/signup.jsp" class="dropdown-toggle lt" style="color:#428bca"
                               target="_self">
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
                                    <a href="/frontdesk/musiccollection.jsp" target="frames">我的音乐收藏</a>
                                </li>
                                <li>
                                    <a href="/vip/${sessionScope.user.userId}" target="frames">我的会员</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="/userlogout">退出</a>
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
                        <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0"
                             data-size="10px" data-railOpacity="0.2">
                            <!-- nav -->
                            <nav class="navbar hidden-xs">
                                <ul class="nav bg clearfix">
                                    <li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
                                        Discover
                                    </li>
                                    <li>
                                        <a href="/part" target="frames">
                                            <%--<i class="icon-disc icon text-success"></i>--%>
                                            <span class="font-bold">最新</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/musictype" target="frames">
                                            <%--<i class="icon-music-tone-alt icon text-info"></i>--%>
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
            <!-- /.aside -->
            <section id="content">
                <section class="hbox stretch">
                    <section>
                        <section class="vbox">
                            <iframe name="frames" id="frame" seamless
                                    frameborder="0" width="100%" height="100%" src="/frontdesk/indexpart.jsp"></iframe>
                            <footer class="footer bg-dark">
                                <div id="jp_container_N">
                                    <div class="jp-type-playlist">
                                        <div id="jplayer_N" class="jp-jplayer hide"></div>
                                        <div class="jp-gui">
                                            <div class="jp-video-play hide">
                                                <span class="jp-video-play-icon" style="cursor: pointer">play</span>
                                            </div>
                                            <div class="jp-interface">
                                                <div class="jp-controls">
                                                    <div><a class="jp-previous"><i class="icon-control-rewind i-lg"></i></a>
                                                    </div>
                                                    <div>
                                                        <span class="jp-play" style="cursor: pointer"><i
                                                                class="icon-control-play i-2x"></i></span>
                                                        <span class="jp-pause hid" style="cursor: pointer"><i
                                                                class="icon-control-pause i-2x"></i></span>
                                                    </div>
                                                    <div><a class="jp-next"><i
                                                            class="icon-control-forward i-lg"></i></a></div>
                                                    <div class="hide"><a class="jp-stop"><i class="fa fa-stop"></i></a>
                                                    </div>
                                                    <div><a class="" data-toggle="dropdown" data-target="#playlist"><i
                                                            class="icon-list"></i></a>
                                                    </div>
                                                    <div class="jp-progress hidden-xs">
                                                        <div class="jp-seek-bar dk">
                                                            <div class="jp-play-bar bg-info">
                                                            </div>
                                                            <div class="jp-title text-lt">
                                                                <ul>
                                                                    <li></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="hidden-xs hidden-sm jp-current-time text-xs text-muted"></div>
                                                    <div class="hidden-xs hidden-sm jp-duration text-xs text-muted"></div>
                                                    <div class="hidden-xs hidden-sm">
                                                        <a class="jp-mute" title="mute"><i
                                                                class="icon-volume-2"></i></a>
                                                        <a class="jp-unmute hid" title="unmute"><i
                                                                class="icon-volume-off"></i></a>
                                                    </div>
                                                    <div class="hidden-xs hidden-sm jp-volume">
                                                        <div class="jp-volume-bar dk">
                                                            <div class="jp-volume-bar-value lter"></div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <a class="jp-shuffle" title="shuffle"><i
                                                                class="icon-shuffle text-muted"></i></a>
                                                        <a class="jp-shuffle-off hid" title="shuffle off"><i
                                                                class="icon-shuffle text-lt"></i></a>
                                                    </div>
                                                    <div>
                                                        <a class="jp-repeat" title="repeat"><i
                                                                class="icon-loop text-muted"></i></a>
                                                        <a class="jp-repeat-off hid" title="repeat off"><i
                                                                class="icon-loop text-lt"></i></a>
                                                    </div>
                                                    <div class="hide">
                                                        <a class="jp-full-screen" title="full screen"><i
                                                                class="fa fa-expand"></i></a>
                                                        <a class="jp-restore-screen" title="restore screen"><i
                                                                class="fa fa-compress text-lt"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="jp-playlist dropup" id="playlist">
                                            <ul class="dropdown-menu aside-xl dker">
                                                <!-- The method Playlist.displayPlaylist() uses this unordered list -->
                                                <li class="list-group-item"></li>
                                            </ul>
                                        </div>
                                        <div class="jp-no-solution hide">
                                            <span>Update Required</span>
                                            To play the media you will need to either update your browser to a recent
                                            version or
                                            update your <a
                                                href="http://get.adobe.com/flashplayer/" target="_blank">Flash
                                            plugin</a>.
                                        </div>
                                    </div>
                                </div>
                            </footer>
                        </section>
                    </section>
                </section>
                <%--<a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open"--%>
                <%--data-target="#nav,html"></a>--%>
            </section>
        </section>
    </section>
</section>
</body>
<script src="/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/js/bootstrap.js"></script>
<!-- App -->
<script src="/js/app.js"></script>
<script src="/js/slimscroll/jquery.slimscroll.min.js"></script>
<script src="/js/app.plugin.js"></script>
<script type="text/javascript" src="/js/jPlayer/jquery.jplayer.min.js"></script>
<script type="text/javascript" src="/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
<script type="text/javascript" src="/js/jPlayer/demo.js"></script>
</html>