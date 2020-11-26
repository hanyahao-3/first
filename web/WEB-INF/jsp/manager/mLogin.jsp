<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/3
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>管理员登陆</title>
    <link rel="stylesheet" href="${ctx}/res/manager/login/css/index.css">
    <script type="text/javascript" src="${ctx}/res/manager/login/js/jquery.js"></script>
</head>
<body>
<script>

    $(document).ready(function () {
        var whei = $(window).width()
        $("html").css({fontSize: whei / 24});
        $(window).resize(function () {
            var whei = $(window).width();
            $("html").css({fontSize: whei / 24})
        });
    });
</script>
<div class="main">

    <div class="header">
        <div class="header-center fl">
            <div class="header-title">
                管理员登陆
            </div>
            <div class="header-img"></div>
        </div>
        <div class="header-bottom fl"></div>

    </div>

    <div class="content">
        <div class="content-left">
            <!--<img src="images/d.png" alt="">-->
        </div>
        <div class="content-right">
            <div class="right-infp">
                <form action="#" method="post" onsubmit="return false">
                    <div class="right-infp-name">

                        <input type="text" id="manager_name" placeholder="请输入用户名" maxlength="12" value=""
                               autocomplete="off">
                    </div>
                    <div class="right-infp-name">
                        <input type="password" id="manager_password" placeholder="请输入密码" autocomplete="off">
                    </div>

                    <div class="right-infp-btn">
                        <button class="btn" type="submit" id="Login" >登录</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


</div>

<script>
    $('#Login').click(function () {
        var manager_name = $('#manager_name').val();
        var manager_password = $('#manager_password').val();
        $.ajax({
            type: "POST",
            url: "${ctx}/Manager/login",
            data: {
                "manager_name": manager_name,
                "manager_password": manager_password
            },
            success: function (result) {
                if (result.res == 1) {
                    window.location.href = "${ctx}/Manager/mIndex";
                } else {
                    alert("用户名密码错误！");
                    window.location.href = "${ctx}/Manager/toLogin";
                }
            }
        })
    })
</script>
</body>
</html>
