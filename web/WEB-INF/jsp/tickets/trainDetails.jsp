<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/19
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>车次详情</title>
    <link href="${ctx}/res/css/queryTickets.css" rel="stylesheet">
</head>
<body>
<div class="pass-table">
    <table>
        <tr class="pass-station-head">
            <td>站序</td>
            <td>站名</td>
        </tr>
        <c:forEach items="${ticketsDetail[4]}" var="station" varStatus="vs">
            <tr>
                <td>0${vs.count}</td>
                <td>${station}</td>
            </tr>
        </c:forEach>
    </table>
</div>
<div class="pass-station">
    <hr/>
    ${train_number}车次&nbsp;&nbsp;&nbsp;&nbsp;
    ${ticketsDetail[5]}-->${ticketsDetail[6]}
    <span>有空调</span>
</div>
</body>
</html>
