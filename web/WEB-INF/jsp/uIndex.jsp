<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/14
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>12306</title>

    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js" type="text/javascript"></script>
    <link href="${ctx}/res/other/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="${ctx}/res/other/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/other/bootstrap/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/js/index.js" type="text/javascript"></script>
    <link href="${ctx}/res/css/index.css" type="text/css" rel="stylesheet">
    <link type="text/css" href="${ctx}/res/other/data-input/css/jquery-ui-1.8.17.custom.css" rel="stylesheet"/>
    <link type="text/css" href="${ctx}/res/other/data-input/css/jquery-ui-timepicker-addon.css" rel="stylesheet"/>
    <script type="text/javascript" src="${ctx}/res/other/data-input/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/res/other/data-input/js/jquery-ui-1.8.17.custom.min.js"></script>
    <script type="text/javascript" src="${ctx}/res/other/data-input/js/jquery-ui-timepicker-addon.js"></script>
    <script type="text/javascript" src="${ctx}/res/other/data-input/js/jquery-ui-timepicker-zh-CN.js"></script>
    <link href="${ctx}/res/other/QQkefu/css/style.css" rel="stylesheet" type="text/css">
    <script src="${ctx}/res/other/QQkefu/js/script.js"></script>
    <script src="${ctx}/res/manager/lib/layui/layui.js" charset="utf-8"></script>
</head>
<body>
<%@include file="/common/utop.jsp" %>
<div class="menu">
    <div class="menu-content">
        <ul>
            <li class="check-on"><a href="${ctx}/uIndex">首页</a></li>
            <li><a href="${ctx}/queryTickets">火车票</a></li>
            <li><a href="${ctx}/queryHotel">酒店</a></li>
            <li><a href="${ctx}/queryTrategy">景点预订</a></li>
            <li><a href="${ctx}/queryPersonal">我的旅行</a></li>
        </ul>
    </div>
</div>
<%--中部--%>
<div class="menu">
    <div class="menu-icron">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="${ctx}/res/img/banner10.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="${ctx}/res/img/banner12.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="${ctx}/res/img/banner26.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="${ctx}/res/img/banner0619.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="${ctx}/res/img/banner20200707.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <%--<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>--%>
        </div>
        <div class="menu-query">
            <div class="menu-lists">
                <ul>
                    <li class="active"><a href="javascript:void(0)">车票</a></li>
                    <li><a href="javascript:void(0)">酒店查询</a></li>
                    <li><a href="javascript:void(0)">订餐</a></li>
                </ul>
            </div>
            <div class="menu-lists-detail box">
                <div class="item">
                    <form action="${ctx}/train/queryTrain">
                        <table>
                            <tr>
                                <td class="td-l">出发地：</td>
                                <td><input id="start_place" name="start_place" required="" lay-verify="required"></td>
                            </tr>
                            <tr>
                                <td class="td-l">到达地：</td>
                                <td><input id="end_place" name="end_place" required="" lay-verify="required"></td>
                            </tr>
                            <tr>
                                <td class="td-l">出发日期：</td>
                                <td><input type="text" name="datetime" class="ui_timepicker" id="start_time" value=""
                                           required="" lay-verify="required"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div>
                                        <label>学生：</label>
                                        <input type="checkbox">
                                    </div>
                                    <div>
                                        <label>高铁/动车：</label>
                                        <input type="checkbox">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="submit" class="btn btn-outline-secondary menu-query-button"
                                            id="query-tickets">查询
                                    </button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="item">
                    <form action="${ctx}/train/queryTrain">
                        <table>
                            <tr>
                                <td class="td-l">目的地：</td>
                                <td><input id="at_place" name="at_place" required="" lay-verify="required"></td>
                            </tr>
                            <tr>
                                <td class="td-l">入住日期：</td>
                                <td><input type="text" name="datetime" class="ui_timepicker" id="takein_time" value=""
                                           required="" lay-verify="required"></td>
                            </tr>
                            <tr>
                                <td class="td-l">离开日期：</td>
                                <td><input type="text" name="datetime" class="ui_timepicker" id="takeout_time" value=""
                                           required="" lay-verify="required"></td>
                            </tr>
                            <tr>
                                <td class="td-l">关键词：</td>
                                <td><input id="key_words" name="key_words" placeholder="如位置/酒店名/品牌"></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="submit" class="btn btn-outline-secondary menu-query-button"
                                            id="query-tickets2">查询
                                    </button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="item">菜单3-box</div>
            </div>
        </div>
    </div>

    <%--中部2--%>
    <div class="displays-2">
        <h3>
            铁路旅游
        </h3>
    </div>
    <div class="displays-3">
        <ul>
            <li>
                <a href="#">
                    <img src="${ctx}/res/img/243945e6-c45d-4870-9cf5-77e488068646_product_W572_H370.jpg">
                    <div class="displays-3-div">
                        <h3>“环西部火车游” 高品质旅游版专线列车</h3>
                        <div class="displays-3-price">
                            ￥2560
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctx}/res/img/fcd7173f-7651-46e7-a126-bdc199e1f6f7_product_W572_H370.jpg">
                    <div class="displays-3-div">
                        <h3>“环西部火车游” 水陇南三日游</h3>
                        <div class="displays-3-price">
                            ￥930
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctx}/res/img/b0c76b21-531b-4af4-a607-cf5672c72ded_product_W572_H370.jpg">
                    <div class="displays-3-div">
                        <h3>“环西部火车游”人文始祖天水两日游</h3>
                        <div class="displays-3-price">
                            ￥980
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctx}/res/img/8b36f9a7-f780-4e71-b719-9300109a9ff2_product_W572_H370.jpg">
                    <div class="displays-3-div">
                        <h3>“环西部火车游”精品旅游线路</h3>
                        <div class="displays-3-price">
                            ￥3380
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctx}/res/img/1716878f-79a2-4db1-af8c-b9c2039f0b3c_product_W572_H370.jpg">
                    <div class="displays-3-div">
                        <h3>“环西部火车游”美丽甘南三日游</h3>
                        <div class="displays-3-price">
                            ￥880
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctx}/res/img/6d77d0ea-53d0-4518-b7e9-e53795b4920c_product_W572_H370.jpg">
                    <div class="displays-3-div">
                        <h3>“环西部火车游” 青海湖、茶卡2日>游</h3>
                        <div class="displays-3-price">
                            ￥880
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctx}/res/img/c7c03732-3c86-4308-aea7-df747d4999e8_product_W572_H370.jpg">
                    <div class="displays-3-div">
                        <h3>“环西部火车游”嘉敦5日游</h3>
                        <div class="displays-3-price">
                            ￥2260
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="${ctx}/res/img/d9ae79de-2f3f-4e9f-ad6e-bdc291dda92a_product_W572_H370.jpg">
                    <div class="displays-3-div">
                        <h3>“环西部火车游” 敦煌一地三日游</h3>
                        <div class="displays-3-price">
                            ￥1380
                        </div>
                    </div>
                </a>
            </li>
        </ul>
    </div>
</div>

<%--尾部--%>
<div class="footer">
    <div class="footer-menu-lists">
        <ul>
            <li class="active2"><a href="javascript:void(0)">最新发布</a></li>
            <li><a href="javascript:void(0)">常见问题</a></li>
            <li><a href="javascript:void(0)">信用信息</a></li>
        </ul>
    </div>
    <div class="footer-menu-lists-details">
        <div class="item2">
            <ul>
                <c:forEach items="${announcements}" var="announcement">
                    <li>
                        <span style="float: left">
                            <a href="${ctx}/uAnnouncement?id=${announcement.id}">${announcement.annountcments_name}</a>
                        </span>
                        <span style="float:right;">
                            <fmt:formatDate value="${announcement.add_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
                        </span>
                    </li>
                </c:forEach>
            </ul>
            <div style="margin-top: 40px;margin-left: 400px">
                <a href="${ctx}/uIndex?pn=1">首页</a>
                <a href="${ctx}/uIndex?pn=${pager.prePage}">下一页</a>
                <c:forEach items="${pager.navigatepageNums}" var="pag">
                    <a href="${ctx}/uIndex?pn=${pag}">${pag}</a>
                </c:forEach>
                <a href="${ctx}/uIndex?pn=${pager.nextPage}">下一页</a>
                <a href="${ctx}/uIndex?pn=${pager.navigateLastPage}">尾页</a>
                <a href="${ctx}/uIndex?pn=${pager.pageNum}">第${pager.pageNum}页</a>
            </div>
        </div>
        <div class="item2">菜单2-box</div>
        <div class="item2">菜单3-box</div>

    </div>
</div>
<div id="top"></div>
<div class="footest">
    <div class="bottom-footer">
        <jsp:include page="/common/ufooter.jsp"/>
    </div>
</div>
</body>
</html>
