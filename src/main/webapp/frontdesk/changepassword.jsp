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
<body class="bg-info dker">
  <section id="content" class="m-t-lg wrapper-md animated fadeInDown">
    <div class="container aside-xl">
      <a class="navbar-brand block" href="/index.jsp"><span class="h1 font-bold">在线音乐平台</span></a>
      <section class="m-b-lg">
        <header class="wrapper text-center">
          <strong>修改密码</strong>
        </header>
        <form action="/changepassword" method="post">
          <div class="form-inline">
            <input name="email" id="email" type="email" placeholder="邮箱" class="form-control rounded input-lg text-center no-border" required >
            <button onclick="sendMail()" type="button" class="btn btn-warning lt b-white  btn-rounded" style="height:3em">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发送邮件&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
          </div>
          <br>
          <div class="form-group">
            <input name="code" placeholder="邮箱验证码" class="form-control rounded input-lg text-center no-border" required>
          </div>
          <div class="form-group">
             <input name="password" type="password" id="password" placeholder="新密码" class="form-control rounded input-lg text-center no-border" required  pattern="^[a-z]([a-z0-9])*[-_]?([a-z0-9]+)$" title="*密码至少需要8个字符，必须以字母开头，以字母或数字结尾，可以有-和_" >
          </div>
          <div class="form-group">
             <input type="password" id="re_password" placeholder="确认密码" class="form-control rounded input-lg text-center no-border" required oninput="checkPassword()">
          </div>
          <button type="submit" class="btn btn-lg btn-warning lt b-white b-2x btn-block btn-rounded"><i class="icon-arrow-right pull-right"></i><span class="m-r-n-lg">修改</span></button>
          <div class="line line-dashed"></div>
          <p class="text-muted text-center"><small>已经有账号?</small></p>
          <a href="/frontdesk/signin.jsp" class="btn btn-lg btn-info btn-block btn-rounded">登录</a>
        </form>
      </section>
    </div>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder clearfix">
      <p>
        <small>Web app framework base on Bootstrap<br>&copy; 2019</small>
      </p>
    </div>
  </footer>
  <!-- / footer -->
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
  <script>
	function checkPassword(){
		var password = document.getElementById("password");
		var re_password = document.getElementById("re_password");
		if(password.value === re_password.value){
			re_password.setCustomValidity('');
		}else{
			re_password.setCustomValidity('两次输入的密码不相同');
		}
	}
	function sendMail() {
        var email=$("#email").val();
        if(email == ""){
          return;
        }
        else{
            $.ajax({ //发送验证码
                url : "/sendemail",
                type : "post",
                data : {
                    "toEmail" : email
                },
                dataType : "json",
                cache : false,
                error : function(textStatus, errorThrown) { //ajax请求失败时，将会执行此回调函数
                    alert("系统ajax交互错误: " + textStatus);
                },
                success : function(data, textStatus) { //ajax请求成功时，会执行此回调函数
                    if (data.result == 1) { //注册成功
                      alert("请登录邮箱查看邮件，输入验证码！");
                    } else if (data.result == 0) {
                      alert("该用户不存在，请核实邮箱！");
                    }
                }
            });
        }
    }
  </script>
</body>
</html>