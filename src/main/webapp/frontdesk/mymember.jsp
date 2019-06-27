<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en" class="app">
<head></head>
<body class="">
<section class="vbox">
    <jsp:include page="head.jsp"></jsp:include>
    <section>
        <section class="hbox stretch">
            <section id="content">
                <section class="vbox bg-white">
                    <section class="scrollable wrapper">
                        <div class="row">
                            <div class="col-xs-6">
                                <h2>我的会员</h2>
                            </div>
                        </div>
                        <div class="well bg-light b m-t">
                            <div class="row">
                                <div class="col-xs-6">
                                    <h4>To:</h4>
                                    <h4>用户名：${sessionScope.user.userName}</h4>
                                    <h4>开始时间：
                                        <c:if test="${requestScope.userInforamtion.vip ==1}">
                                            ${requestScope.userInforamtion.vsTime}
                                        </c:if>
                                    </h4>
                                </div>
                                <div class="col-xs-6">
                                    <h4>To:</h4>
                                    <h4>用户名：${sessionScope.user.userName}</h4>
                                    <h4>到期时间：
                                        <c:if test="${requestScope.userInforamtion.vip ==1}">
                                            ${requestScope.userInforamtion.veTime}
                                        </c:if>
                                    </h4>
                                </div>
                            </div>
                        </div>
                        <div class="line"></div>
                        <form action="/vip" method="post">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th style="width: 60px">编号</th>
                                    <th>描述</th>
                                    <th style="width: 90px">数量</th>
                                    <th style="width: 90px">单价</th>
                                    <th style="width: 90px">小计</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>会员按月付费</td>
                                    <td><input name="monthnumber" id="monthnumber" type="number" min="0" value="1"
                                               onchange="getmonth()"/>
                                    </td>
                                    <td>￥<span id="monthmoney">10.0</span></td>
                                    <td>￥<span id="month">10.0</span>
                                        <input type="hidden" name="monthmoney" value="10"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>会员按年付费</td>
                                    <td><input name="yearnumber" id="yearnumber" type="number" min="0" value="1"
                                               onchange="getyear()"/>
                                    </td>
                                    <td>￥<span id="yearmoney">110.0</span></td>
                                    <td>￥<span id="year">110.0</span>
                                        <input type="hidden" name="yearthmoney" value="110"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" class="text-right no-border"><strong>总价</strong></td>
                                    <td><strong id="total">$120.0</strong></td>
                                    <input type="hidden" name="id" value="${sessionScope.user.userId}"/>
                                </tr>
                                <tr>
                                    <td colspan="5" class="text-right no-border">
                                        <button type="submit" class="btn btn-success">支付</button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </form>
                    </section>
                    <jsp:include page="tail.jsp" flush="true"></jsp:include>
                </section>
                <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open"
                   data-target="#nav,html"></a>
            </section>
        </section>
    </section>
</section>
<script type="text/javascript">
    function getmonth() {
        var num1 = document.getElementById('monthnumber').value; //获取第一个输入框的值
        var money1 = document.getElementById('monthmoney').innerText;
        var monthmoney = num1 * money1;
        document.getElementById('month').innerText = monthmoney;
        gettotal();
    }

    function getyear() {
        var num1 = document.getElementById('yearnumber').value; //获取第一个输入框的值
        var money1 = document.getElementById('yearmoney').innerText;
        var yearmoney = num1 * money1
        document.getElementById('year').innerText = yearmoney;
        gettotal();
    }

    function gettotal() {
        document.getElementById('total').innerText = Number(document.getElementById('year').innerText) + Number(document.getElementById('month').innerText);
    }
</script>
</body>
</html>