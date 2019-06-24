<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>
</head>
<body>
  <section class="vbox">
        <jsp:include page="/frontdesk/head.jsp" flush="true" ></jsp:include>
        <!-- /.aside -->
        <section id="content">
          <section class="hbox stretch">
            <section>
              <section class="vbox">
                <section class="scrollable padder-lg w-f-md" id="bjax-target">
                  <span class="pull-right text-muted m-t-lg fa-spin" data-toggle="class:fa-spin" ><i class="icon-refresh i-lg  inline" id="refresh"></i></span>
                  <h2 class="font-thin m-b">热门推荐 <span class="musicbar animate inline m-l-sm" style="width:20px;height:20px">
                    <span class="bar1 a1 bg-primary lter"></span>
                    <span class="bar2 a2 bg-info lt"></span>
                    <span class="bar3 a3 bg-success"></span>
                    <span class="bar4 a4 bg-warning dk"></span>
                    <span class="bar5 a5 bg-danger dker"></span>
                  </span></h2>
                  <div class="row row-sm">
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
                          <a href="#"><img src="/onlinemusic/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="/onlinemusic/frontdesk/track-detail.jsp" class="text-ellipsis">
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
                          <a href="#"><img src="/onlinemusic/images/p1.jpg" alt="" class="r r-2x img-full"></a>
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
                          <a href="#"><img src="/onlinemusic/images/p1.jpg" alt="" class="r r-2x img-full"></a>
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
                          <a href="#"><img src="/onlinemusic/images/p1.jpg" alt="" class="r r-2x img-full"></a>
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
                          <a href="#"><img src="/onlinemusic/images/p1.jpg" alt="" class="r r-2x img-full"></a>
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
                          <a href="#"><img src="/onlinemusic/images/p1.jpg" alt="" class="r r-2x img-full"></a>
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
                          <a href="#"><img src="/onlinemusic/images/p1.jpg" alt="" class="r r-2x img-full"></a>
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
                          <a href="#"><img src="/onlinemusic/images/p1.jpg" alt="" class="r r-2x img-full"></a>
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
                          <a href="#"><img src="/onlinemusic/images/p1.jpg" alt="" class="r r-2x img-full"></a>
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
                          <a href="#"><img src="/onlinemusic/images/p1.jpg" alt="" class="r r-2x img-full"></a>
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
                          <a href="#"><img src="/onlinemusic/images/p1.jpg" alt="" class="r r-2x img-full"></a>
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
                          <a href="#"><img src="/onlinemusic/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                        </div>
                        <div class="padder-v">
                          <a href="#" class="text-ellipsis">Tempered Song</a>
                          <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                        </div>
                      </div>
                    </div>

                  <div class="clearfix visible-xs"></div>

                  <div class="row">
                    <div class="col-md-7">
                      <h3 class="font-thin">最新歌曲</h3>
                      <div class="row row-sm">
                        <div class="col-xs-6 col-sm-3">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="#"><img src="images/a0.png" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="#" class="text-ellipsis">Spring rain</a>
                              <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="#"><img src="images/a0.png" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="#" class="text-ellipsis">Hope</a>
                              <a href="#" class="text-ellipsis text-xs text-muted">Miya</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="#"><img src="images/a0.png" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="#" class="text-ellipsis">Listen wind</a>
                              <a href="#" class="text-ellipsis text-xs text-muted">Soyia Jess</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="#"><img src="images/a0.png" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="#" class="text-ellipsis">Breaking me</a>
                              <a href="#" class="text-ellipsis text-xs text-muted">Pett JA</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="#"><img src="images/a0.png" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="#" class="text-ellipsis">Nothing</a>
                              <a href="#" class="text-ellipsis text-xs text-muted">Willion</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="#"><img src="images/a6.png" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="#" class="text-ellipsis">Panda Style</a>
                              <a href="#" class="text-ellipsis text-xs text-muted">Lionie</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="#"><img src="images/a0.png" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="#" class="text-ellipsis">Hook Me</a>
                              <a href="#" class="text-ellipsis text-xs text-muted">Gossi</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                          <div class="item">
                            <div class="pos-rlt">
                              <div class="item-overlay opacity r r-2x bg-black">
                                <div class="center text-center m-t-n">
                                  <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                </div>
                              </div>
                              <a href="#"><img src="images/a0.png" alt="" class="r r-2x img-full"></a>
                            </div>
                            <div class="padder-v">
                              <a href="#" class="text-ellipsis">Tempered Song</a>
                              <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-5">
                      <h3 class="font-thin">排行榜</h3>
                      <div class="list-group bg-white list-group-lg no-bg auto">                          
                        <a href="#" class="list-group-item clearfix">
                          <span class="pull-right h2 text-muted m-l">1</span>
                          <span class="pull-left thumb-sm avatar m-r">
                            <img src="images/a4.png" alt="...">
                          </span>
                          <span class="clear">
                            <span>Little Town</span>
                            <small class="text-muted clear text-ellipsis">by Chris Fox</small>
                          </span>
                        </a>
                        <a href="#" class="list-group-item clearfix">
                          <span class="pull-right h2 text-muted m-l">2</span>
                          <span class="pull-left thumb-sm avatar m-r">
                            <img src="images/a0.png" alt="...">
                          </span>
                          <span class="clear">
                            <span>Lementum ligula vitae</span>
                            <small class="text-muted clear text-ellipsis">by Amanda Conlan</small>
                          </span>
                        </a>
                        <a href="#" class="list-group-item clearfix">
                          <span class="pull-right h2 text-muted m-l">3</span>
                          <span class="pull-left thumb-sm avatar m-r">
                            <img src="images/a6.png" alt="...">
                          </span>
                          <span class="clear">
                            <span>Aliquam sollicitudin venenatis</span>
                            <small class="text-muted clear text-ellipsis">by Dan Doorack</small>
                          </span>
                        </a>
                        <a href="#" class="list-group-item clearfix">
                          <span class="pull-right h2 text-muted m-l">4</span>
                          <span class="pull-left thumb-sm avatar m-r">
                            <img src="images/a0.png" alt="...">
                          </span>
                          <span class="clear">
                            <span>Aliquam sollicitudin venenatis ipsum</span>
                            <small class="text-muted clear text-ellipsis">by Lauren Taylor</small>
                          </span>
                        </a>
                        <a href="#" class="list-group-item clearfix">
                          <span class="pull-right h2 text-muted m-l">5</span>
                          <span class="pull-left thumb-sm avatar m-r">
                            <img src="images/a0.png" alt="...">
                          </span>
                          <span class="clear">
                            <span>Vestibulum ullamcorper</span>
                            <small class="text-muted clear text-ellipsis">by Dan Doorack</small>
                          </span>
                        </a>
                      </div>
                    </div>
                  </div></div>
                </section>
                <jsp:include page="/frontdesk/tail.jsp" flush="true"></jsp:include>
              </section>
            </section>
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
        </section>
      </section>
    </section>    
  </section>
</body>
</html>