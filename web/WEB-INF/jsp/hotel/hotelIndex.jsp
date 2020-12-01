<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/15
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>查询酒店</title>
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js" type="text/javascript"></script>
    <link href="${ctx}/res/other/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="${ctx}/res/other/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/other/bootstrap/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/js/index.js" type="text/javascript"></script>
    <link href="${ctx}/res/css/index.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/res/css/hotel_index.css" type="text/css" rel="stylesheet">

    <link type="text/css" href="${ctx}/res/other/data-input/css/jquery-ui-1.8.17.custom.css" rel="stylesheet"/>
    <link type="text/css" href="${ctx}/res/other/data-input/css/jquery-ui-timepicker-addon.css" rel="stylesheet"/>
    <script type="text/javascript" src="${ctx}/res/other/data-input/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/res/other/data-input/js/jquery-ui-1.8.17.custom.min.js"></script>
    <script type="text/javascript" src="${ctx}/res/other/data-input/js/jquery-ui-timepicker-addon.js"></script>
    <script type="text/javascript" src="${ctx}/res/other/data-input/js/jquery-ui-timepicker-zh-CN.js"></script>
</head>
<body>
<%@include file="/common/utop.jsp" %>
<div class="menu">
    <div class="menu-content">
        <ul>
            <li><a href="${ctx}/uIndex">首页</a></li>
            <li><a href="${ctx}/queryTickets">火车票</a></li>
            <li class="check-on"><a href="${ctx}/queryHotel">酒店</a></li>
            <li><a href="${ctx}/queryTrategy">景点预订</a></li>
            <li><a href="${ctx}/queryPersonal">我的旅行</a></li>
        </ul>
    </div>
</div>
<div class="mid">
    <div class="lunbotu">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="${ctx}/res/img/TRl12xioeY.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="${ctx}/res/img/rBTJU10ca2aAMYD0AAC9uzGQHvA361.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
        </div>
    </div>
    <div class="query-card">
        <table>
            <tr>
                <td class="labe">目的地</td>
                <td class="destin"><input placeholder="如北京"></td>
            </tr>
            <tr>
                <td class="labe">入住</td>
                <td class="ft_time"><input type="text" name="datetime" class="ui_timepicker ft_time" id="in_time"
                                           value="2020-11-11"
                                           required="" lay-verify="required"> 离店
                    <input type="text" name="datetime" class="ui_timepicker ft_time" id="out_time" value="2020-11-12"
                           required="" lay-verify="required"></td>
            </tr>
            <tr>
                <td class="labe">关键词</td>
                <td class="keyW"><input placeholder="如位置/酒店名/品牌"></td>
            </tr>
        </table>
        <div class="query-button">
            <button type="button" class="btn btn-outline-secondary">查询</button>
        </div>
    </div>
</div>
<div class="mid-m">
    <a href="#"><img src="${ctx}/res/img/19101701.png"/></a>
</div>
<div class="mid-f">
    <h3>酒店推荐</h3>
    <span class="recomm_place-l">入住城市&nbsp;&nbsp;:</span>
    <span class="recomm_place">
        <ul>
            <li class="on">北京</li>
            <li>上海</li>
            <li>广州</li>
            <li>深圳</li>
            <li>更多\/</li>
        </ul>
    </span>
    <div class="fengefu">
        <hr/>
    </div>
    <div class="recomm_hotel">
        <ul>
            <li>
                <img src="${ctx}/res/img/nw_V9cgAkniMg.jpg"/>
                <div class="recomm_hotel-name">
                    成都速时8公寓
                </div>
                <div class="recomm_hotel_inf">
                    <div style="float: left">
                        <span>
                            4.9分 |
                        </span>
                        <span>
                            有消毒措施
                        </span>
                    </div>
                    <div style="float: right">
                        <font color="red">$70</font>起
                    </div>
                </div>
            </li>
            <li><img src="${ctx}/res/img/nw_000dfDkH.jpg"/>
                <div class="recomm_hotel-name">
                    成都都锦酒店式公寓
                </div>
                <div class="recomm_hotel_inf">
                    <div style="float: left">
                        <span>
                            4.9分 |
                        </span>
                        <span>
                            有消毒措施
                        </span>
                    </div>
                    <div style="float: right">
                        <font color="red">$176</font>起
                    </div>
                </div>
            </li>
            <li><img src="${ctx}/res/img/nw_GPw1WSwsBW.jpg"/>
                <div class="recomm_hotel-name">
                    成都悦澜乐居酒店
                </div>
                <div class="recomm_hotel_inf">
                    <div style="float: left">
                        <span>
                            4.8分 |
                        </span>
                        <span>
                            有消毒措施
                        </span>
                    </div>
                    <div style="float: right">
                        <font color="red">$198</font>起
                    </div>
                </div>
            </li>
            <li><img src="${ctx}/res/img/nw_V9cgAkniMg.jpg"/>
                <div class="recomm_hotel-name">
                    成都十方青年客栈
                </div>
                <div class="recomm_hotel_inf">
                    <div style="float: left">
                        <span>
                            4.6分 |
                        </span>
                        <span>
                            前台热情
                        </span>
                    </div>
                    <div style="float: right">
                        <font color="red">$45</font>起
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
<div style="width: 100%;height: 100px;float:left;background-color: #666;margin-top: 40px">
</body>
</html>
