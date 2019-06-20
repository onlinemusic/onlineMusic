<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>Music | Web Application</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="/onlinemusic/js/jPlayer/jplayer.flat.css" type="text/css" />
  <link rel="stylesheet" href="/onlinemusic/css/bootstrap.css" type="text/css" />
  <link rel="stylesheet" href="/onlinemusic/css/animate.css" type="text/css" />
  <link rel="stylesheet" href="/onlinemusic/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="/onlinemusic/css/simple-line-icons.css" type="text/css" />
  <link rel="stylesheet" href="/onlinemusic/css/font.css" type="text/css" />
  <link rel="stylesheet" href="/onlinemusic/css/app.css" type="text/css" />
    <!--[if lt IE 9]>
    <script src="/onlinemusic/js/ie/html5shiv.js"></script>
    <script src="/onlinemusic/js/ie/respond.min.js"></script>
    <script src="/onlinemusic/js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body class="bg-info dker">
  <section id="content" class="m-t-lg wrapper-md animated fadeInUp">    
    <div class="container aside-xl">
      <a class="navbar-brand block" href="/onlinemusic/index.jsp"><span class="h1 font-bold">在线音乐平台</span></a>
      <section class="m-b-lg">
        <header class="wrapper text-center">
          <strong>密码登录</strong>
        </header>
        <form action="" method="post">
          <div class="form-group">
            <input type="email" placeholder="邮箱" class="form-control rounded input-lg text-center no-border" required >
          </div>
          <div class="form-group">
             <input type="password" placeholder="登录密码" class="form-control rounded input-lg text-center no-border" required>
          </div>
          <button type="submit" class="btn btn-lg btn-warning lt b-white b-2x btn-block btn-rounded"><i class="icon-arrow-right pull-right"></i><span class="m-r-n-lg">登录</span></button>
          <div class="text-center m-t m-b"><a href="changepassword.jsp" id="fotgetPassword"><small>忘记密码?</small></a></div>
          <div class="line line-dashed"></div>
          <p class="text-muted text-center"><small>还没有账号?</small></p>
          <a href="signup.jsp" class="btn btn-lg btn-info btn-block rounded" id="createAccount">创建账号</a>
        </form>
      </section>
    </div>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder">
      <p>
        <small>Web app framework base on Bootstrap<br>&copy; 2019</small>
      </p>
    </div>
  </footer>
  <!-- / footer -->
  <script src="/onlinemusic/js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="/onlinemusic/js/bootstrap.js"></script>
  <!-- App -->
  <script src="/onlinemusic/js/app.js"></script>
  <script src="/onlinemusic/js/slimscroll/jquery.slimscroll.min.js"></script>
  <script src="/onlinemusic/js/app.plugin.js"></script>
  <script type="text/javascript" src="/onlinemusic/js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="/onlinemusic/js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="/onlinemusic/js/jPlayer/demo.js"></script>
</body>
</html>