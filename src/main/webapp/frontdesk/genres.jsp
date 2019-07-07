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
<body class="">
<section class="vbox">
    <section>
        <section class="hbox stretch">
            <section id="content">
                <section class="vbox">
                    <section class="w-f-md" id="bjax-target">
                        <section class="hbox stretch">
                            <!-- side content -->
                            <aside class="aside bg-light dk" id="sidebar">
                                <section class="vbox animated fadeInUp">
                                    <section class="scrollable hover">
                                        <div class="list-group no-radius no-border no-bg m-t-n-xxs m-b-none auto">
                                            <c:forEach var="item" items="${applicationScope.musicType}">
                                                <a href="/musictype/${item.musicTypeId}/1" class="list-group-item">
                                                        ${item.typeName}
                                                </a>
                                            </c:forEach>
                                        </div>
                                    </section>
                                </section>
                            </aside>
                            <!-- / side content -->
                            <section>
                                <section class="vbox">
                                    <section class="scrollable padder-lg">
                                        <h2 class="font-thin m-b">${musicList[0].musicType.typeName}</h2>
                                        <div class="row row-sm">
                                            <c:forEach var="item" items="${requestScope.musicList}">
                                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                                <div class="item">
                                                    <div class="pos-rlt">
                                                        <div class="item-overlay opacity r r-2x bg-black">
                                                            <div class="center text-center m-t-n">
                                                                <a href="javascript:void(0)"
                                                                   onclick="window.parent.addList('${item.musicName}','${item.singer}','${item.src}','${item.pictureSrc}')">
                                                                    <i
                                                                            class="fa fa-play-circle i-2x"></i></a>
                                                            </div>
                                                        </div>
                                                        <img src="${item.pictureSrc}" alt=""
                                                             class="r r-2x img-full">
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="/single/${item.id}/1" data-bjax
                                                           data-target="#bjax-target"
                                                           data-el="#bjax-el" data-replace="true"
                                                           class="text-ellipsis">${item.musicName}</a>
                                                        <a href="/single/${item.id}/1" data-bjax
                                                           data-target="#bjax-target"
                                                           data-el="#bjax-el" data-replace="true"
                                                           class="text-ellipsis text-xs text-muted">${item.singer}</a>
                                                    </div>
                                                </div>
                                            </div>
                                            </c:forEach>

                                            <ul class="pagination pagination pull-right">
                                                <c:if test="${requestScope.pageNumber > 1}">
                                                    <li>
                                                        <a href="/musictype/${musicList[0].musicType.musicTypeId}/${requestScope.pageNumber-1}"><i
                                                                class="fa fa-chevron-left"></i></a></li>
                                                    <li>
                                                        <a href="/musictype/${musicList[0].musicType.musicTypeId}/${requestScope.pageNumber-1}">${requestScope.pageNumber-1}</a>
                                                    </li>
                                                </c:if>
                                                <li class="active"><a
                                                        href="/smusictype/${musicList[0].musicType.musicTypeId}/${requestScope.pageNumber}">${requestScope.pageNumber}</a>
                                                </li>
                                                <c:if test="${requestScope.pageNumber < requestScope.totalPage}">
                                                    <li>
                                                        <a href="/musictype/${musicList[0].musicType.musicTypeId}/${requestScope.pageNumber+1}">${requestScope.pageNumber+1}</a>
                                                    </li>
                                                    <li>
                                                        <a href="/musictype/${musicList[0].musicType.musicTypeId}/${requestScope.pageNumber+1}"><i
                                                                class="fa fa-chevron-right"></i></a></li>
                                                </c:if>
                                            </ul>
                                    </section>
                                </section>
                            </section>
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
</html>