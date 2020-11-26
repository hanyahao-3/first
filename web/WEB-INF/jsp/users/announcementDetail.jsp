<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/24
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>Title</title>
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js" type="text/javascript"></script>
    <link href="${ctx}/res/other/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="${ctx}/res/other/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/other/bootstrap/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/js/index.js" type="text/javascript"></script>
    <link href="${ctx}/res/css/index.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/res/css/personal.css" rel="stylesheet">
</head>
<body>
<%@include file="/common/utop.jsp" %>
<div class="menu">
    <div class="menu-content">
        <ul>
            <li><a href="${ctx}/uIndex">首页</a></li>
            <li><a href="${ctx}/queryTickets">火车票</a></li>
            <li><a href="${ctx}/queryHotel">酒店</a></li>
            <li><a href="${ctx}/queryTrategy">景点预订</a></li>
            <li><a href="${ctx}/queryPersonal">我的旅行</a></li>
        </ul>
    </div>
</div>
<div class="per-mid-h">
    <span>当前位置：</span><a href="${ctx}/login/uIndex" class="c_66">首页</a>
    >
    <a href="#" class="c_66">公告详情</a>
</div>
<div style="width: 1200px;height: 1000px;border: 1px solid rgb(222,222,222);border-radius: 4px">
    <div style="text-align: center;padding: 30px 10px 10px 10px;box-sizing: border-box">
        <h3>${announcement.annountcments_name}</h3>
    </div>
    <div>
        <h4>${announcement.content}</h4>
    </div>
</div>
</body>
</html>
