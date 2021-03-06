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
<body class="">
  <section class="vbox">

    <section>
      <section class="hbox stretch">
        <section id="content">
          <section class="hbox stretch">
            <section>
              <section class="vbox">
                <section class="scrollable padder-lg w-f-md" id="bjax-target">
                  <h2 class="font-thin m-b">我的音乐收藏 <span class="musicbar animate inline m-l-sm" style="width:20px;height:20px"><span>
                  </h2>
                  <div class="row row-sm">
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm"><i class="icon-earphones"></i>100</span>
                          </div>
                          <div class="item-overlay opacity r r-2x bg-black">
                          	<div class="text-info padder m-t-sm text-sm pull-right">
							  <a href="#" data-toggle="class">
                                <i class="fa fa-times" aria-hidden="true"></i>
                              </a>
                            </div>
                            <div class="center text-center m-t-n">
                             <a href="#" data-toggle="class">
                                <i class="icon-control-play i-2x "></i>
                              </a>
                            </div>
                          </div>
                          <a href="#"><img src="/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="track-detail.jsp" class="text-ellipsis">
                          	Tempered Song
                          	<span class="text-ellipsis text-xs text-muted">Miaow</span>
                          </a>
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm"><i class="icon-earphones"></i>100</span>
                          </div>
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="center text-center m-t-n">
                             <a href="#" data-toggle="class">
                                <i class="icon-control-play i-2x "></i>
                              </a>
                            </div>
                           
                          </div>
                          <a href="#"><img src="/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Tempered Song</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm"><i class="icon-earphones"></i>100+</span>
                          </div>
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="center text-center m-t-n">
                             <a href="#" data-toggle="class">
                                <i class="icon-control-play i-2x "></i>
                              </a>
                            </div>
                           
                          </div>
                          <a href="#"><img src="/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Tempered Song</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm"><i class="icon-earphones"></i>100</span>
                          </div>
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="center text-center m-t-n">
                             <a href="#" data-toggle="class">
                                <i class="icon-control-play i-2x "></i>
                              </a>
                            </div>
                           
                          </div>
                          <a href="#"><img src="/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Tempered Song</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm"><i class="icon-earphones"></i>100</span>
                          </div>
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="center text-center m-t-n">
                             <a href="#" data-toggle="class">
                                <i class="icon-control-play i-2x "></i>
                              </a>
                            </div>
                           
                          </div>
                          <a href="#"><img src="/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Tempered Song</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                        </div>
                      </div>
                   </div>
                   <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm"><i class="icon-earphones"></i>100</span>
                          </div>
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="center text-center m-t-n">
                             <a href="#" data-toggle="class">
                                <i class="icon-control-play i-2x "></i>
                              </a>
                            </div>
                           
                          </div>
                          <a href="#"><img src="/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Tempered Song</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm"><i class="icon-earphones"></i>100</span>
                          </div>
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="center text-center m-t-n">
                             <a href="#" data-toggle="class">
                                <i class="icon-control-play i-2x "></i>
                              </a>
                            </div>
                           
                          </div>
                          <a href="#"><img src="/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Tempered Song</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm"><i class="icon-earphones"></i>100</span>
                          </div>
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="center text-center m-t-n">
                             <a href="#" data-toggle="class">
                                <i class="icon-control-play i-2x "></i>
                              </a>
                            </div>
                           
                          </div>
                          <a href="#"><img src="/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Tempered Song</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm"><i class="icon-earphones"></i>100</span>
                          </div>
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="center text-center m-t-n">
                             <a href="#" data-toggle="class">
                                <i class="icon-control-play i-2x "></i>
                              </a>
                            </div>
                           
                          </div>
                          <a href="#"><img src="/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Tempered Song</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                        </div>
                      </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm"><i class="icon-earphones"></i>100</span>
                          </div>
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="center text-center m-t-n">
                             <a href="#" data-toggle="class">
                                <i class="icon-control-play i-2x "></i>
                              </a>
                            </div>
                           
                          </div>
                          <a href="#"><img src="/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Tempered Song</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                        </div>
                      </div>
                    </div>
                   <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm"><i class="icon-earphones"></i>100</span>
                          </div>
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="center text-center m-t-n">
                             <a href="#" data-toggle="class">
                                <i class="icon-control-play i-2x "></i>
                              </a>
                            </div>
                           
                          </div>
                          <a href="#"><img src="/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Tempered Song</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                        </div>
                      </div>
                    </div>
                  <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                      <div class="item">
                        <div class="pos-rlt">
                          <div class="bottom">
                            <span class="badge bg-info m-l-sm m-b-sm"><i class="icon-earphones"></i>100</span>
                          </div>
                          <div class="item-overlay opacity r r-2x bg-black">
                            <div class="center text-center m-t-n">
                             <a href="#" data-toggle="class">
                                <i class="icon-control-play i-2x "></i>
                              </a>
                            </div>
                           
                          </div>
                          <a href="#"><img src="/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Tempered Song</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="clearfix visible-xs"></div>
                  <div>
                  	<ul class="pagination pagination pull-right">
                        <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                    </ul>
                  </div>
                </section>
              </section>
            </section>
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
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