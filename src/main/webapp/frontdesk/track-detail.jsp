<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="en" class="app">
<head></head>
<body class="">
<section class="vbox">
    <jsp:include page="head.jsp"></jsp:include>
    <section>
        <section class="hbox stretch">
            <section id="content">
                <section class="vbox" id="bjax-el">
                    <section class="scrollable wrapper-lg">
                        <div class="row">
                            <div class="col-sm-8">
                                <div class="panel wrapper-lg">
                                    <div class="row">
                                        <div class="col-sm-5">
                                            <img src="${music.pictureSrc}" class="img-full m-b">
                                        </div>
                                        <div class="col-sm-7">
                                            <h2 class="m-t-none text-black">单曲:${music.musicName}</h2>
                                            <div class="clearfix m-b-lg">
                                                <div class="clear">
                                                    <span class="text-info">歌手:${music.singer}</span>
                                                    <br>
                                                    <span class="text-warning ml-3">上传时间:${music.uploadDate}</span>

                                                </div>
                                            </div>
                                            <c:if test="${music.vip == 1}">
                                                <span class="text-danger">vip专属下载</span>
                                            </c:if>
                                            <div class="m-b-lg">
                                                <a href="#" class="btn btn-info">播放</a>
                                                <a href="#" class="btn btn-default"><i class="fa fa-plus-circle"
                                                                                       aria-hidden="true"></i>&nbsp;收藏</a>
                                                <c:choose>
                                                    <c:when test="${music.vip !=1}">
                                                        <a href="#" class="btn btn-default"><i
                                                                class="fa fa-cloud-download" aria-hidden="true"></i>&nbsp;下载</a>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:if test="${!empty sessionScope.user.userInformation && sessionScope.user.userInformation.vip ==1}">
                                                            <a href="#" class="btn btn-default"><i
                                                                    class="fa fa-cloud-download" aria-hidden="true"></i>&nbsp;下载</a>
                                                        </c:if>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m-t">
                                        <p>简介：</p>
                                        <p>暂无</p>
                                    </div>
                                    <br>
                                    <h4 class="m-t-lg m-b">精彩评论</h4>
                                    <hr width=100% size=1 color=#00ffff align=center noshade/>
                                    <section class="comment-list block">
                                        <c:forEach var="item" items="${requestScope.contentList}">
                                            <article id="comment-id-1" class="comment-item">
                                                <a class="pull-left thumb-sm">
                                                    <img src="/images/a0.png" class="img-circle">
                                                </a>
                                                <section class="comment-body m-b">
                                                    <header>
                                                        <a href="#"><strong>${item.user.userName}</strong></a>
                                                        <span class="text-muted text-xs block m-t-xs">
                                                                ${item.commentDate}
                                                        </span>
                                                    </header>
                                                    <div class="m-t-sm">${item.content}
                                                    </div>
                                                </section>
                                            </article>
                                        </c:forEach>

                                        <ul class="pagination pagination pull-right">
                                            <c:if test="${requestScope.pageNumber > 1}">
                                                <li><a href="/single/${requestScope.music.id}/${requestScope.pageNumber-1}"><i class="fa fa-chevron-left"></i></a></li>
                                                <li><a href="/single/${requestScope.music.id}/${requestScope.pageNumber-1}">${requestScope.pageNumber-1}</a></li>
                                            </c:if>
                                                <li class="active"><a href="/single/${requestScope.music.id}/${requestScope.pageNumber}">${requestScope.pageNumber}</a></li>
                                            <c:if test="${requestScope.pageNumber < requestScope.totalPage}">
                                                <li><a href="/single/${requestScope.music.id}/${requestScope.pageNumber+1}">${requestScope.pageNumber+1}</a></li>
                                                <li><a href="/single/${requestScope.music.id}/${requestScope.pageNumber+1}"><i class="fa fa-chevron-right"></i></a></li>
                                            </c:if>
                                        </ul>
                                    </section>
                                    <h4 class="m-t-lg m-b">评论</h4>
                                    <form>
                                        <div class="form-group">
                                            <textarea class="form-control" rows="5"
                                                      placeholder="输入评论"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-success">发表</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="panel panel-default">
                                    <div class="panel-heading">热门推荐</div>
                                    <div class="panel-body">
                                        <article class="media">
                                            <a href="#" class="pull-left thumb-md m-t-xs">
                                                <img src="/images/m18.jpg">
                                            </a>
                                            <div class="media-body">
                                                <a href="#" class="font-semibold">Bootstrap 3: What you need to know</a>
                                                <div class="text-xs block m-t-xs"><a href="#">Travel</a> 2 minutes ago
                                                </div>
                                            </div>
                                        </article>
                                        <article class="media">
                                            <a href="#" class="pull-left thumb-md m-t-xs">
                                                <img src="/images/m19.jpg">
                                            </a>
                                            <div class="media-body">
                                                <a href="#" class="font-semibold">Lorem ipsum dolor sit amet it.</a>
                                                <div class="text-xs block m-t-xs"><a href="#">Design</a> 2 hours ago
                                                </div>
                                            </div>
                                        </article>
                                        <article class="media">
                                            <a href="#" class="pull-left thumb-md m-t-xs">
                                                <img src="/images/m20.jpg">
                                            </a>
                                            <div class="media-body">
                                                <a href="#" class="font-semibold">Sed diam nonummy tincidunt ut
                                                    laoreet</a>
                                                <div class="text-xs block m-t-xs"><a href="#">MFC</a> 1 week ago</div>
                                            </div>
                                        </article>
                                        <article class="media">
                                            <a href="#" class="pull-left thumb-md m-t-xs">
                                                <img src="/images/m21.jpg">
                                            </a>
                                            <div class="media-body">
                                                <a href="#" class="font-semibold">Lonummy nibh euismod sed laoreet</a>
                                                <div class="text-xs block m-t-xs"><a href="#">MFC</a> 1 week ago</div>
                                            </div>
                                        </article>
                                        <article class="media">
                                            <a href="#" class="pull-left thumb-md m-t-xs">
                                                <img src="/images/m22.jpg">
                                            </a>
                                            <div class="media-body">
                                                <a href="#" class="font-semibold">Mibh euismod tincidunt ut laoreet</a>
                                                <div class="text-xs block m-t-xs"><a href="#">MFC</a> 1 week ago</div>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <jsp:include page="tail.jsp" flush="true"></jsp:include>
                </section>
                <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open"
                   data-target="#nav,html"></a>
            </section>
        </section>
    </section>
</section>
</body>
</html>