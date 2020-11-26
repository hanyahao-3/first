<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/8
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js"></script>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <td>名字：</td>
        <td>${userName}</td>
    </tr>
    <tr>
        <td>年龄：</td>
        <td>${user.user_age}</td>
    </tr>
    <tr>
        <td>性别：</td>
        <td>${user.user_sex}</td>
    </tr>
</table>

<c:forEach items="${ordersWithTime}" var="entry">
    <fieldset>
        <legend>车票</legend>
        <table id="dingdan" >
            <tr>
                <td> 车次号：${entry.key.train_number}&nbsp;</td>
                <td> 车厢号：${entry.key.carriage_number}&nbsp;</td>
                <td> 座位号：${entry.key.seat_number}</td>
            </tr>
            <tr>
                <td> 出发地：${entry.key.from_place}&nbsp;</td>
                <td> 目的地：${entry.key.to_place}&nbsp;</td>
            </tr>
            <tr>
                <c:forEach items="${entry.value}" var="fromtotime">
                    <td> 出发时间：<fmt:formatDate value="${fromtotime.key}" pattern="yyyy-MM-dd HH:mm:ss"/>&nbsp;</td>
                    <td> 到达时间：<fmt:formatDate value="${fromtotime.value}" pattern="yyyy-MM-dd HH:mm:ss"/>&nbsp;</td>
                </c:forEach>
            </tr>
            </td>
            </tr>
        </table>
        <button style="width: 80px;"
                onclick="refundTicket('${entry.key.train_number}',${entry.key.carriage_number},${entry.key.seat_number},'${entry.key.from_place}','${entry.key.to_place}')">
            <h3>退票</h3></button>
    </fieldset>

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
            }else {
                return false;
            }
        }
    </script>
</c:forEach>


</body>
</html>
