<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/16
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>用户列表</title>
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="${ctx}/res/manager/css/font.css">
    <link rel="stylesheet" href="${ctx}/res/manager/css/index.css">
    <script src="${ctx}/res/manager/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/res/manager/js/index.js"></script>
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js"></script>
</head>
<body>
<div class="x-nav">
    <span class="layui-breadcrumb">
    <a href="">首页</a>
    <a>
      <cite>用户列表</cite></a>
    </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>

<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <div class="layui-inline layui-show-xs-block">
                        <input type="text" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-inline layui-show-xs-block">
                        <button class="layui-btn" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i>
                        </button>
                    </div>

                    <div class="layui-card-header">
                        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除
                        </button>
                        <button class="layui-btn" onclick="xadmin.open('添加用户','${ctx}/userAdd',600,400)"><i
                                class="layui-icon"></i>添加
                        </button>
                    </div>

                    <%--用户列表--%>
                    <div class="layui-card-body ">
                        <table class="layui-table layui-form">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>用户名</th>
                                <th>密码</th>
                                <th>手机号</th>
                                <th>年龄</th>
                                <th>性别</th>
                                <th>操作</th>
                            </thead>
                            <tbody>
                            <c:forEach items="${allUsers}" var="user">
                                <tr>
                                    <td>${user.id}</td>
                                    <td>${user.user_name}</td>
                                    <td>${user.user_password}</td>
                                    <td>${user.phone_number}</td>
                                    <td>${user.user_age}</td>
                                    <td>${user.user_sex}</td>
                                    <td class="td-manage">
                                        <a title="编辑用户" onclick="xadmin.open('编辑用户','${ctx}/userEdit?user_name=${user.user_name}')" href="javascript:;">
                                            <i class="layui-icon">&#xe642;</i>
                                        </a>
                                        <a title="删除" onclick="deleteUser(${user.id})" href="javascript:;">
                                            <i class="layui-icon">&#xe640;</i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <%--分页--%>
                    <div class="layui-card-body ">
                        <div class="page">
                            <div>
                                <a class="prev" href="">&lt;&lt;</a>
                                <a class="num" href="">1</a>
                                <span class="current">2</span>
                                <a class="num" href="">3</a>
                                <a class="num" href="">489</a>
                                <a class="next" href="">&gt;&gt;</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function deleteUser(uid) {
        if (window.confirm("你确定要删除吗？")) {
            $.ajax({
                type: "POST",
                url: "${ctx}/mOperation/deleteUser",
                data: {
                    "id": uid
                },
                success: function (result) {
                    if (result.res == 1) {
                        alert("删除成功！！！");
                        window.location.href="${ctx}/userList";
                    } else if (result.res == 0) {
                        alert("删除失败！！！");
                    }
                }
            })
        } else {
            return false;
        }
    }

</script>
</body>
</html>
