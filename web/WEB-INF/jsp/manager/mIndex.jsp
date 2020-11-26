<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/15
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>后台管理系统</title>
    <link rel="stylesheet" href="${ctx}/res/manager/css/font.css">
    <link rel="stylesheet" href="${ctx}/res/manager/css/index.css">
    <link rel="stylesheet" href="${ctx}/res/manager/css/iconfont.css">
    <script src="${ctx}/res/manager/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/res/manager/js/index.js"></script>
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js"></script>
    <style>
        .show_list {
            display: block !important;
        }

        .hide_lits {
            display: none;
        }
    </style>
</head>


<body class="index">
<!-- 顶部开始 -->
<div class="container">
    <div class="logo">
        <a href="./mIndex.jsp">&nbsp;后台管理系统</a>
    </div>
    <div class="left_open">
        <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
    </div>

    <ul class="layui-nav left fast-add" lay-filter="">
        <li class="layui-nav-item daohang" ids="#table1">
            <a href="javascript:;">系统设置</a>
        </li>
    </ul>

    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">${manage}</a>
            <dl class="layui-nav-child">
                <!-- 二级菜单 -->
                <dd>
                    <a onclick="xadmin.open('个人信息','${ctx}/one_set')">个人信息</a></dd>
                <dd>
                    <%--                    <a onclick="xadmin.open('切换帐号','login.jsp')">切换帐号</a></dd>--%>
                    <a href="${ctx}/mLogin">切换帐号</a></dd>
                <dd>
                    <a href="${ctx}/mLogin">退出</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item to-index">
            <a href="${ctx}/uIndex">前台首页</a></li>
    </ul>
</div>
<%--顶部结束--%>

<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav show_list" id="table1">
    <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;" onclick="xadmin.add_tab('我的桌面','${ctx}/welcome')">
                    <i class="layui-icon left-nav-li" lay-tips="首页">&#xe68e;</i>
                    <cite>首页</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>

            </li>

            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="用户管理">&#xe726;</i>
                    <cite>用户管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('用户列表','${ctx}/userList')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>用户列表</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('订单列表','order-list.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>订单列表</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('发货单列表','invoice.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>发货单列表</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('退货单列表','return-order.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>退货单列表</cite></a>
                    </li>
                </ul>
            </li>

            <li class="layui-nav-item">
                <a href="javascript:;">
                    <i class="iconfont left-nav-li icon-shangpinguanli" lay-tips="火车管理"></i>
                    <cite>火车管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('车次管理','goodslist.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>车次管理</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('站点管理','goodslist.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>站点管理</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('座位管理','brand.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>座位管理</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('价格管理','commodity-type.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>价格管理</cite></a>
                    </li>
                </ul>


            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <i class="iconfont left-nav-li icon-cuxiaoyouhui" lay-tips="酒店管理"></i>
                    <cite>酒店管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('基本信息','group-buying.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>基本信息</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('客房情况','discount-list.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>客房情况</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('投诉情况','discount-list.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>投诉情况</cite></a>
                    </li>
                </ul>


            </li>

            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="景点攻略">&#xe604;</i>
                    <cite>景点攻略</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('攻略列表','order-list.html')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>攻略列表</cite></a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="公告管理">&#xe6c0;</i>
                    <cite>公告管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('公告列表','${ctx}/announcementsList')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>公告列表</cite></a>
                    </li>
                </ul>
            </li>

        </ul>
    </div>
</div>
<!-- 左侧菜单结束 -->

<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home">
                <i class="layui-icon">&#xe68e;</i>我的桌面
            </li>
        </ul>
        <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
            <dl>
                <dd data-type="this">关闭当前</dd>
                <dd data-type="other">关闭其它</dd>
                <dd data-type="all">关闭全部</dd>
            </dl>
        </div>

        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='${ctx}/welcome' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
        </div>

        <div id="tab_show">

        </div>
    </div>
</div>
<div class="page-content-bg"></div>
<style id="theme_style"></style>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
</body>
<script>
    $(".daohang").click(function () {
        var table = $(this).attr("ids");
        var ids = $(".show_list").attr("id");
        $("#" + ids + "").addClass("hide_lits");
        $("#" + ids + "").removeClass("show_list");
        $("" + table + "").removeClass("hide_lits");
        $("" + table + "").addClass("show_list");
    })
</script>

</html>
