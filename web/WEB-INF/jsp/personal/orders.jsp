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
            <td>车次号</td>
            <td>车厢号</td>
            <td>座位</td>
            <td>出发地</td>
            <td>目的地</td>
            <td>出发时间</td>
            <td>到达时间</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${ordersWithTime}" var="entry">
            <tr>
                <td>${entry.key.train_number}&nbsp;</td>
                <td>${entry.key.carriage_number}&nbsp;</td>
                <td>${entry.key.seat_number}</td>
                <td>${entry.key.from_place}&nbsp;</td>
                <td>${entry.key.to_place}</td>
                <c:forEach items="${entry.value}" var="fromtotime">
                    <td><fmt:formatDate value="${fromtotime.key}" pattern="yyyy-MM-dd HH:mm:ss"/>&nbsp;</td>
                    <td><fmt:formatDate value="${fromtotime.value}" pattern="yyyy-MM-dd HH:mm:ss"/>&nbsp;</td>
                </c:forEach>
                <td>
                    <button class="btn btn-outline-danger" type="button"
                            onclick="refundTicket('${entry.key.train_number}',${entry.key.carriage_number},${entry.key.seat_number},'${entry.key.from_place}','${entry.key.to_place}')">
                        退票
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<script>
    function refundTicket(t_number, c_number, s_number, f_place, t_place) {
        if (confirm("您确定要退掉这张票吗？")) {
            var train_number = t_number;
            var carriage_number = c_number;
            var seat_number = s_number;
            var from_place = f_place;
            var to_place = t_place;
            $.ajax({
                type: "POST",
                url: "${ctx}/train/refundTicket",
                data: {
                    "train_number": train_number,
                    "carriage_number": carriage_number,
                    "seat_number": seat_number,
                    "from_place": from_place,
                    "to_place": to_place
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
