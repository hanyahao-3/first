<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/14
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>火车票</title>
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js" type="text/javascript"></script>
    <link href="${ctx}/res/other/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="${ctx}/res/other/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/other/bootstrap/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/js/index.js" type="text/javascript"></script>
    <script src="${ctx}/res/js/queryTickets.js" type="text/javascript"></script>
    <link href="${ctx}/res/css/index.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/res/css/queryTickets.css" type="text/css" rel="stylesheet">
    <script src="${ctx}/res/manager/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/res/manager/js/index.js"></script>
    <link type="text/css" href="${ctx}/res/other/data-input/css/jquery-ui-1.8.17.custom.css" rel="stylesheet"/>
    <link type="text/css" href="${ctx}/res/other/data-input/css/jquery-ui-timepicker-addon.css" rel="stylesheet"/>
    <script type="text/javascript" src="${ctx}/res/other/data-input/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/res/other/data-input/js/jquery-ui-1.8.17.custom.min.js"></script>
    <script type="text/javascript" src="${ctx}/res/other/data-input/js/jquery-ui-timepicker-addon.js"></script>
    <script type="text/javascript" src="${ctx}/res/other/data-input/js/jquery-ui-timepicker-zh-CN.js"></script>

</head>
<script>
    $(function () {
        var startPlace = $('#startplac').val();
        var endPlace = $('#endplac').val();
        var s_time = $('#s_time').val();
        if (startPlace != ''){
            $('#start_place').val(startPlace);
        }
        if (endPlace != ''){
            $('#end_place').val(endPlace);
        }
        if (endPlace != ''){
            $('#start_time').val(s_time);
        }
    })
</script>
<body>
<%@include file="/common/utop.jsp" %>
<div class="menu">
    <div class="menu-content">
        <ul>
            <li><a href="${ctx}/uIndex">首页</a></li>
            <li class="check-on"><a href="${ctx}/queryTickets">火车票</a></li>
            <li><a href="${ctx}/queryHotel">酒店</a></li>
            <li><a href="${ctx}/queryTrategy">景点预订</a></li>
            <li><a href="${ctx}/queryPersonal">我的旅行</a></li>
        </ul>
    </div>
</div>

<form action="${ctx}/train/queryTrain">
    <div class="query-ditaion">
        <ul class="goByType">
            <li>
                <input type="radio" name="goType" checked>
                <label>单程</label>
            </li>
            <li>
                <input type="radio" name="goType">
                <label>往返</label>
            </li>
        </ul>
        <div class="seperate-line"></div>
        <div class="query-dition-middle">
            <ul class="goByType2">
                <li>
                    <label>出发地</label>
                    <input id="start_place" name="start_place">
                </li>
                <li>
                    <label>目的地</label>
                    <input id="end_place" name="end_place">
                </li>
                <li>
                    <label>出发日</label>
                    <input type="text" name="datetime" class="ui_timepicker" id="start_time" value="">
                    <input type="hidden" id="s_time" value="${start_time}">
                </li>
                <li>
                    <label>返程日</label>
                    <input type="text" name="datetime" class="ui_timepicker" id="end_time" value="">
                </li>
            </ul>
        </div>
        <div class="seperate-line2"></div>
        <div class="query-ditaion-last">
            <ul class="goByType">
                <li>
                    <input type="radio" name="goType2" checked>
                    <label>普通</label>
                </li>
                <li>
                    <input type="radio" name="goType2">
                    <label>学生</label>
                </li>
            </ul>
            <button type="submit" class="check-button btn btn-dark" id="query-tickets2">查询</button>

            <div>
                <input type="checkbox">
                <label>开启自动查询</label>
            </div>
        </div>
    </div>
</form>
<div class="query-ditaion2">
    <ul class="query-ditaion2-1">
        <li class="check-on2">11-20</li>
        <li>11-21</li>
        <li>11-22</li>
        <li>11-23</li>
        <li>11-24</li>
        <li>11-25</li>
        <li>11-26</li>
        <li>11-27</li>
        <li>11-28</li>
        <li>11-29</li>
    </ul>
    <div class="query-ditaion3">
        <div class="train_type">
            车次类型：
        </div>
        <span>
            <button>全部</button>
        </span>
        <ul class="query-ditaion2-2">
            <li>
                <input type="checkbox" name="t_type" checked>
                <label>普通列车</label>
            </li>
            <li>
                <input type="checkbox" name="t_type" checked>
                <label>特快列车</label>
            </li>
            <li>
                <input type="checkbox" name="t_type" checked>
                <label>高铁</label>
            </li>
        </ul>
    </div>
</div>
<div class="query-result">
    <table>
        <tr>
            <td>车次</td>
            <td>出发站</td>
            <td>抵达站</td>
            <td>出发时间</td>
            <td>抵达时间</td>
            <td>硬座</td>
            <td>软座</td>
            <td>软卧</td>
            <td>车次类型</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${seats}" var="entry">
            <tr>
                <td>
                    <a href="javascript:void(0)" onclick="xadmin.open('车次详情','${ctx}/uTickets/trainDetail?train_number=${entry.key}',300,300)" class="pass-stations">${entry.key}</a>
                </td>

                <td>
                        ${start_place}
                    <font size="1px">${entry.value[7]}</font>
                </td>
                <input type="hidden" id="startplac" value="${start_place}">
                <td>
                        ${end_place}
                        <font size="1px">${entry.value[8]}</font>
                </td>
                <input type="hidden" id="endplac" value="${end_place}">

                <td><fmt:formatDate value="${entry.value[1]}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td><fmt:formatDate value="${entry.value[2]}" pattern="yyyy-MM-dd HH:mm:ss"/>
                </td>

                <c:forEach items="${entry.value[0]}" var="seat">
                    <td>${fn:length(seat.value)}</td>
                </c:forEach>

                <td>${entry.value[3]}</td>
                <td>
                    <button type="button" class="btn btn-outline-primary"
                            onclick="buyTickets('${entry.key}')">购买
                    </button>

                </td>
            </tr>
        </c:forEach>
    </table>
</div>

<%--<div style="height: 100px">--%>
<%--    <jsp:include page="/common/ufooter.jsp" />--%>
<%--</div>--%>
<input type="hidden" id="userName" value="${userName}">
<script>
    var userName = $('#userName').val();

    function buyTickets(t_number) {
        if (userName == "") {
            alert("请先登陆");
            window.location.href = "${ctx}/login/login";
        } else {
            xadmin.open('购买车票', '${ctx}/ticketsDetail?train_number=' + t_number);
        }
    }
</script>
</body>
</html>
