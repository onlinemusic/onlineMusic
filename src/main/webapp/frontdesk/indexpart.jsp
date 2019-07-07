<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
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
<section class="scrollable padder-lg w-f-md" id="bjax-target">
                        <span class="pull-right text-muted m-t-lg fa-spin" data-toggle="class:fa-spin"><i
                                class="icon-refresh i-lg  inline" id="refresh"></i></span>
    <h2 class="font-thin m-b">最新歌曲 <span class="musicbar animate inline m-l-sm"
                                         style="width:20px;height:20px">
                    <span class="bar1 a1 bg-primary lter"></span>
                    <span class="bar2 a2 bg-info lt"></span>
                    <span class="bar3 a3 bg-success"></span>
                    <span class="bar4 a4 bg-warning dk"></span>
                    <span class="bar5 a5 bg-danger dker"></span>
                  </span></h2>
    <div class="row row-sm">
        <c:forEach var="item" items="${applicationScope.musicList}">
            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                <div class="item">
                    <div class="pos-rlt">
                        <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm"><i class="icon-earphones"></i></span>
                        </div>
                        <div class="item-overlay opacity r r-2x bg-black">
                            <div class="center text-center m-t-n">
                                <a href="javascript:void(0)"
                                   onclick="window.parent.addList('${item.musicName}','${item.singer}','${item.src}','${item.pictureSrc}')">
                                    <i class="icon-control-play i-2x "></i>
                                </a>
                            </div>

                        </div>
                        <a href="javasrcipt:void(0)"><img src="${item.pictureSrc}" alt=""
                                                          class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                        <a href="/single/${item.id}/1" class="text-ellipsis" target="frames">
                                ${item.musicName}
                            <span class="text-ellipsis text-xs text-muted">${item.singer}</span>
                        </a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <div class="clearfix visible-xs"></div>

    <div class="row">
        <div class="col-md-7">
            <h3 class="font-thin">热门推荐</h3>
            <div class="row row-sm">
                <c:forEach var="item" items="${applicationScope.musicList}" begin="4">
                    <div class="col-xs-6 col-sm-3">
                        <div class="item">
                            <div class="pos-rlt">
                                <div class="item-overlay opacity r r-2x bg-black">
                                    <div class="center text-center m-t-n">
                                        <a href="javascript:void(0)"
                                           onclick="window.parent.addList('${item.musicName}','${item.singer}','${item.src}','${item.pictureSrc}')">
                                            <i class="fa fa-play-circle i-2x"></i>
                                        </a>
                                    </div>
                                </div>
                                <a href="javascript:void(0)"><img src="${item.pictureSrc}" alt=""
                                                                  class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                                <a href="/single/${item.id}/1" class="text-ellipsis" target="frames">
                                        ${item.musicName}
                                    <span class="text-ellipsis text-xs text-muted">${item.singer}</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

        <div class="col-md-5">
            <h3 class="font-thin">排行榜</h3>
            <div class="list-group bg-white list-group-lg no-bg auto">
                <c:set var="row_count" value="0"></c:set>
                <c:forEach var="item" items="${applicationScope.musicList}" begin="1" end="9" step="2">
                    <c:set var="row_count" value="${row_count+1}"/>
                    <a href="/single/${item.id}/1" class="list-group-item clearfix" target="frames">
                        <span class="pull-right h2 text-muted m-l">${row_count}</span>
                        <span class="pull-left thumb-sm avatar m-r">
                            <img src="${item.pictureSrc}" alt="...">
                          </span>
                        <span class="clear">
                            <span>${item.musicName}</span>
                            <small class="text-muted clear text-ellipsis">by ${item.singer}</small>
                          </span>
                    </a>
                </c:forEach>
            </div>
        </div>
    </div>
    </div>
</section>
<br />
<br />
<br />
<br />
<script src="/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/js/bootstrap.js"></script>
<!-- App -->
<script src="/js/app.js"></script>
<script src="/js/slimscroll/jquery.slimscroll.min.js"></script>
<script src="/js/app.plugin.js"></script>
</body>
</html>
