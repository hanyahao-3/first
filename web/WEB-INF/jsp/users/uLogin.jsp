<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/10/13
  Time: 0:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>
<%@include file="/common/taglibs.jsp"%>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/res/other/other-css/style.css">
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="${ctx}/res/other/uLogin/css/base.css">
    <script src="${ctx}/res/other/uLogin/js/jquery.min.js"></script>
    <script>
        $(function () {
            $('#denglu').click(function () {
                var user_name = $("#user_name").val();
                var user_password = $("#user_password").val();
                $.ajax({
                    type:"POST",
                    url:"${ctx}/login/ulogin",
                    data:{
                        "user_name":user_name,
                        "user_password":user_password
                    },
                    success:function (result) {
                        if (result.res==0){
                            alert("用户名密码错误!");
                            window.location.href = "${ctx}/login/login";
                        }else {
                            window.location.href = "${ctx}/login/uIndex";
                        }

                    }
                })
            })

            $('#zhuce').click(function () {
                window.location.href="${ctx}/login/toRegister";
            })
        })
    </script>
</head>
<body>
<div class="t_container">
    <div id="mydiv" style="height:500px;padding:0;margin:0;position: absolute;z-index:1;"></div>
    <main class="t_main">
        <ul>
            <li class="t_titles">欢迎登录</li>
            <li>
                <input class="user" type="text" placeholder="请输入您的用户名" id="user_name">
            </li>
            <li>
                <input type="password" placeholder="请输入您的密码" id="user_password">
            </li>
            <li class="t_checkbox">
                <i></i>
                <span>记住账号</span>
            </li>
            <li style="float: left">
                <button id="denglu" class="t_btn">登 录</button>
                <button id="zhuce" class="t_btn">注册</button>
            </li>
        </ul>
    </main>
</div>
<script>
    window.onload = function() {
        //配置
        var config = {
            vx: 4,	//小球x轴速度,正为右，负为左
            vy: 4,	//小球y轴速度
            height: 2,	//小球高宽，其实为正方形，所以不宜太大
            width: 2,
            count: 100,		//点个数
            color: "121, 162, 185", 	//点颜色
            stroke: "220,255,255", 		//线条颜色
            dist: 6000, 	//点吸附距离
            e_dist: 20000, 	//鼠标吸附加速距离
            max_conn: 50 	//点到点最大连接数
        }

        //调用
        CanvasParticle(config);
    }
</script>
<script type="text/javascript" src="${ctx}/res/other/uLogin/js/canvas.js"></script>
</body>
</html>
</div>
</body>
</html>
