<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/20
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>公告管理</title>
    <link rel="stylesheet" href="${ctx}/res/manager/css/font.css">
    <link rel="stylesheet" href="${ctx}/res/manager/css/index.css">
    <script src="${ctx}/res/manager/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/res/manager/js/index.js"></script>
</head>
<body>
<div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">公告管理</a>
            <a>
              <cite>公告列表</cite></a>
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
                    <form class="layui-form layui-col-space5">
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" autocomplete="off" placeholder="开始日" name="start" id="start">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" autocomplete="off" placeholder="截止日" name="end" id="end">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text" name="username" placeholder="请输入用户名" autocomplete="off"
                                   class="layui-input">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn" lay-submit="" lay-filter="sreach"><i
                                    class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                </div>

                <div class="layui-card-header">
                    <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除
                    </button>
                    <button class="layui-btn" onclick="xadmin.open('添加公告','${ctx}/announcementsAdd',800,600)"><i
                            class="layui-icon"></i>添加
                    </button>
                </div>

                <div class="layui-card-body layui-table-body layui-table-main">
                    <table class="layui-table layui-form">
                        <thead>
                        <tr>
                            <th>
                                <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
                            </th>
                            <th>
                                ID
                            </th>
                            <th>
                                公告标题
                            </th>
                            <th>
                                发布时间
                            </th>
                            <th>
                                操作
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="annc">
                            <tr>
                                <td>
                                    <input type="checkbox" name="id" value="1" lay-skin="primary">
                                </td>
                                <td>
                                        ${annc.id}
                                </td>

                                <td>
                                        ${annc.annountcments_name}
                                </td>
                                <td>
                                    <fmt:formatDate value="${annc.add_time}"
                                                    pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
                                </td>
                                <td class="td-manage">
                                    <a title="编辑"
                                       onclick="xadmin.open('修改公告','${ctx}/announcementsUpdate?id=${annc.id}',800,600)">
                                        <i class="layui-icon">&#xe642;</i>
                                    </a>

                                    <a title="删除" href="javascript:;" onclick="deleteAnnouncement(${annc.id})"
                                       style="text-decoration:none">
                                        <i class="layui-icon">&#xe640;</i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                    <div style="margin-top: 40px;margin-left: 400px">
                        <a href="${ctx}/announcementsList?pn=1">首页</a>
                        <a href="${ctx}/announcementsList?pn=${pager.prePage}">下一页</a>
                        <c:forEach items="${pager.navigatepageNums}" var="pag">
                            <a href="${ctx}/announcementsList?pn=${pag}">${pag}</a>
                        </c:forEach>
                        <a href="${ctx}/announcementsList?pn=${pager.nextPage}">下一页</a>
                        <a href="${ctx}/announcementsList?pn=${pager.navigateLastPage}">尾页</a>
                        <a href="${ctx}/announcementsList?pn=${pager.pageNum}">第${pager.pageNum}页</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    function deleteAnnouncement(uid) {
        if (window.confirm("你确定要删除吗？")) {
            $.ajax({
                type: "POST",
                url: "${ctx}/mOperationA/deleteAnnouncement",
                data: {
                    "id": uid
                },
                success: function (result) {
                    if (result.res == 1) {
                        alert("删除成功！！！");
                        window.location.href="${ctx}/announcementsList";
                    } else if (result.res == 0) {
                        alert("删除失败！！！");
                    }
                }
            })
        } else {
            return false;
        }
    }



    layui.use(['laydate', 'form'], function () {
        var laydate = layui.laydate;
        var form = layui.form;


        // 监听全选
        form.on('checkbox(checkall)', function (data) {

            if (data.elem.checked) {
                $('tbody input').prop('checked', true);
            } else {
                $('tbody input').prop('checked', false);
            }
            form.render('checkbox');
        });
    });
</script>
</html>
