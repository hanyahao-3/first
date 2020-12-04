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

    <div class="per-mid-m-r" class="order-tickets">
        <div style="margin-top: 30px">

        </div>
        <table id="dingdan">
            <tr>
                <td>景点名</td>
                <td>景点类型</td>
                <td>景点目的地</td>
                <td>景点编号</td>
                <td>预订时间</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${ScenicMessList}" var="entry">
                <tr>
                    <td>${entry.scenic.scenic_name}</td>
                    <td>${entry.scenic.scenic_detail.travel_type}</td>
                    <td>${entry.scenic.scenic_detail.destination}</td>
                    <td>${entry.scenic.scenic_detail.numbering}</td>
                    <td><fmt:formatDate value="${entry.buy_time}" pattern="yyyy-MM-dd"/> </td>
                    <td>
                        <button class="btn btn-outline-danger" type="button"
                                onclick="refundTicket(${entry.id})">
                            退票
                        </button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
<script>
    function refundTicket(id) {
        if (confirm("您确定要退掉这张票吗？")) {
            $.ajax({
                type: "POST",
                url: "${ctx}/personal/refundTickets",
                data: {
                    "id":id
                },
                success: function (result) {
                    if (result.res == 0) {
                        alert("退票失败！");
                    } else {
                        alert("退票成功，请刷新页面！");
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
