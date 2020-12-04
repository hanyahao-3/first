<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/15
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>我的旅行</title>
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js" type="text/javascript"></script>
    <link href="${ctx}/res/other/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="${ctx}/res/other/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/other/bootstrap/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/js/index.js" type="text/javascript"></script>
    <link href="${ctx}/res/css/index.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/res/css/personal.css" rel="stylesheet">
</head>
<body>

    <div class="per-mid-m-r">
        <h3>基本信息：</h3>
        <div>
            <table>
                <tr>
                    <td>用户名：</td>
                    <td>${user.user_name}</td>
                </tr>
                <tr>
                    <td>年龄：</td>
                    <td>${user.user_age}</td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td>${user.user_sex}</td>
                </tr>
                <tr>
                    <td>联系方式：</td>
                    <td>${user.phone_number}</td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>
