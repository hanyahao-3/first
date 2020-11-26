<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/5
  Time: 8:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>
<%@include file="/common/taglibs.jsp"%>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/res/css/style.css">
    <script src="${ctx}/res/js/jquery-3.5.1.min.js"></script>
    <%--<style type="text/css">
        td {
            border-bottom: 1px solid #0C0C0C;
        }
    </style>--%>
</head>
<body>
<%--<tr>
        <td>购买数量:</td>
        <td>
            <a href="javascript:void(0)" id="min_s">-</a>
            <input type="text" value="1" readonly id="t_a">
            <a href="javascript:void(0)" id="add_s">+</a>
        </td>
    </tr>--%>
<%--<script>
    var tr = $("#t_a").val();
    $("#min_s").click(function () {
        tr--;
        if (tr < 1) {
            $("#t_a").val(1);
            tr = 1;
        } else {
            $("#t_a").val(tr);
        }
    });
    $("#add_s").click(function () {
        tr++;
        $("#t_a").val(tr);
    });
    function buyTickets(checi_id) {

    }
</script>--%>
<h3>购买失败</h3>
</body>
</html>
