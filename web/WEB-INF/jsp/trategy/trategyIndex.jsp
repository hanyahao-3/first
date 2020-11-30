<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/15
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>景点攻略</title>
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js" type="text/javascript"></script>
    <link href="${ctx}/res/other/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="${ctx}/res/other/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/other/bootstrap/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/js/index.js" type="text/javascript"></script>
    <link href="${ctx}/res/css/index.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/res/css/tourist.css" type="text/css" rel="stylesheet">
</head>
<body>
<%@include file="/common/utop.jsp" %>
<div class="menu">
    <div class="menu-content">
        <ul>
            <li><a href="${ctx}/uIndex">首页</a></li>
            <li><a href="${ctx}/queryTickets">火车票</a></li>
            <li><a href="${ctx}/queryHotel">酒店</a></li>
            <li class="check-on"><a href="${ctx}/queryTrategy">景点预订</a></li>
            <li><a href="${ctx}/queryPersonal">我的旅行</a></li>
        </ul>
    </div>
</div>
<div class="middle-head">
    <div class="img-l">
        <img src="${ctx}/res/img/title_bgL.png"/>
    </div>
    <div class="img-r">
        <img src="${ctx}/res/img/title_bgR.png"/>
    </div>
    <div class="search">
        <div class="search-img">
            <font>我想去</font>
        </div>
        <div class="search-img-r">
            <div class="search-in">
                <input>
            </div>
            <div class="search-b">
                <button type="button" class="btn btn-primary btn-lg">搜索</button>
            </div>
        </div>
    </div>
</div>
<div>
    <hr/>
</div>
<div class="middle-mid">
    <div class="middle-mid-l">
        <span class="theme-h">
            <div class="theme-h-icon"></div>
        </span>
        <span style="font-weight: bolder">
            热门景点
        </span>
        <div class="hot-tour">
            <ol>
                <li><a href="#">快乐院长</a></li>
                <li><a href="#">东方明珠</a></li>
                <li><a href="#">上海长风海洋世界</a></li>
                <li><a href="#">上海杜莎夫人蜡像馆</a></li>
                <li><a href="#">黄浦江游览</a></li>
                <li><a href="#">海洋水族馆</a></li>
            </ol>
        </div>
        <div>
            <span class="theme-h">
                <div class="theme-h-icon-2"></div>
            </span>
            <span style="font-weight: bolder">
                热门城市
            </span>
        </div>
        <div class="hot-tour-2">
            <ol>
                <li><a href="#">南京</a></li>
                <li><a href="#">杭州</a></li>
                <li><a href="#">千岛湖</a></li>
                <li><a href="#">乌镇</a></li>
                <li><a href="#">西塘</a></li>
                <li><a href="#">普陀山</a></li>
            </ol>
        </div>
    </div>
    <div class="middle-mid-r">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="${ctx}/res/img/0zg3d120008aat9r54D00.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="${ctx}/res/img/0zg6r1200089sjibu22EA.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="${ctx}/res/img/0zg6y120008a744ry2F56.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>


<div class="middle-foot2">
    <div class="middle-foot-head2">
        <span>限时抢购</span>
    </div>
    <hr/>
    <div class="tour-detail2">
        <div class="tour-detail2-1">
            <div style="z-index: 900;position: absolute" class="detail1-zk">
                <span>
                    享门市价6.7折
                </span>
            </div>
            <div>
                <img src="${ctx}/res/img/100h0z000000mkjxn58E1_C_280_200_Q60.jpg">
            </div>
            <div class="detail1">
                <div class="detail1-title">
                    快乐院长
                </div>
                <div class="detail1-price">
                    <div class="price1">
                        ￥1000
                        <font style="font-size: 15px;color: black">起</font>
                    </div>
                    <div class="button-buy">
                        <button type="button" class="btn btn-danger">预订</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="tour-detail2-2">
            <div style="z-index: 900;position: absolute" class="detail1-zk">
                <span>
                    享门市价7折
                </span>
            </div>
            <div>
                <img src="${ctx}/res/img/100j1h000001hkwyw2759_C_280_200_Q60.jpg">
            </div>
            <div class="detail1">
                <div class="detail1-title">
                    东方明珠
                </div>
                <div class="detail1-price">
                    <div class="price1">
                        ￥2500
                        <font style="font-size: 15px;color: black">起</font>
                    </div>
                    <div class="button-buy">
                        <button type="button" class="btn btn-danger">预订</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="tour-detail2-3">
            <div style="z-index: 900;position: absolute" class="detail1-zk">
                <span>
                    享门市价6折
                </span>
            </div>
            <div>
                <img src="${ctx}/res/img/100s1f000001gx3sr61E6_C_280_200_Q60.jpg">
            </div>
            <div class="detail1">
                <div class="detail1-title">
                    上海长风海洋世界
                </div>
                <div class="detail1-price">
                    <div class="price1">
                        ￥1800
                        <font style="font-size: 15px;color: black">起</font>
                    </div>
                    <div class="button-buy">
                        <button type="button" class="btn btn-danger">预订</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="tour-detail2-4">
            <div style="z-index: 900;position: absolute" class="detail1-zk">
                <span>
                    享门市价6.2折
                </span>
            </div>
            <div>
                <img src="${ctx}/res/img/100b1f000001gsne4382A_C_280_200_Q60.jpg">
            </div>
            <div class="detail1">
                <div class="detail1-title">
                    上海杜莎夫人蜡像馆
                </div>
                <div class="detail1-price">
                    <div class="price1">
                        ￥2000
                        <font style="font-size: 15px;color: black">起</font>
                    </div>
                    <div class="button-buy">
                        <button type="button" class="btn btn-danger">预订</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="middle-foot">
    <div class="middle-foot-head">
        <span>旅游度假</span>
        <span class="span2">
            走出去看一看，世界真奇妙！
        </span>
    </div>
    <hr/>
</div>
<div class="tour-detail">
    <ul>
        <c:forEach items="${hotScenic}" var="hotSc">
            <li>
                <a href="${ctx}/uSceninc/toScenincDetail?id=${hotSc.id}">
                    <img src="${hotSc.url1}">
                    <div class="detail1">
                        <div class="detail1-title">
                            ${hotSc.scenic_name}
                        </div>
                        <div class="detail1-price">
                            <div class="price1">
                                ￥2000
                                <font style="font-size: 15px;color: black">起</font>
                            </div>
                            <div class="states">
                                34条热评
                            </div>
                        </div>
                    </div>
                </a>
            </li>
        </c:forEach>
<%--        <li>--%>
<%--            <a href="#">--%>
<%--                <img src="${ctx}/res/img/100w1f000001gw9498A72_C_280_200_Q60.jpg">--%>
<%--                <div class="detail1">--%>
<%--                    <div class="detail1-title">--%>
<%--                        东方明珠--%>
<%--                    </div>--%>
<%--                    <div class="detail1-price">--%>
<%--                        <div class="price1">--%>
<%--                            ￥2000--%>
<%--                            <font style="font-size: 15px;color: black">起</font>--%>
<%--                        </div>--%>
<%--                        <div class="states">--%>
<%--                            111条热评--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </a>--%>
<%--        </li>--%>
<%--        <li>--%>
<%--            <a href="#">--%>
<%--                <img src="${ctx}/res/img/10070d0000006wasz1009_C_280_200_Q60.jpg">--%>
<%--                <div class="detail1">--%>
<%--                    <div class="detail1-title">--%>
<%--                        上海中心大厦之巅观光厅--%>
<%--                    </div>--%>
<%--                    <div class="detail1-price">--%>
<%--                        <div class="price1">--%>
<%--                            ￥2000--%>
<%--                            <font style="font-size: 15px;color: black">起</font>--%>
<%--                        </div>--%>
<%--                        <div class="states">--%>
<%--                            111条热评--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </a>--%>
<%--        </li>--%>
        <li>
            <a href="#">
                <img src="${ctx}/res/img/100h0z000000mkjxn58E1_C_280_200_Q60.jpg">
                <div class="detail1">
                    <div class="detail1-title">
                        外滩
                    </div>
                    <div class="detail1-price">
                        <div class="price1">
                            ￥2000
                            <font style="font-size: 15px;color: black">起</font>
                        </div>
                        <div class="states">
                            111条热评
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <img src="${ctx}/res/img/100j1h000001hkwyw2759_C_280_200_Q60.jpg">
                <div class="detail1">
                    <div class="detail1-title">
                        上海野生动物园
                    </div>
                    <div class="detail1-price">
                        <div class="price1">
                            ￥2000
                            <font style="font-size: 15px;color: black">起</font>
                        </div>
                        <div class="states">
                            111条热评
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <img src="${ctx}/res/img/10011f000001h390mDFD8_C_280_200_Q60.jpg">
                <div class="detail1">
                    <div class="detail1-title">
                        御园
                    </div>
                    <div class="detail1-price">
                        <div class="price1">
                            ￥2000
                            <font style="font-size: 15px;color: black">起</font>
                        </div>
                        <div class="states">
                            111条热评
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <img src="${ctx}/res/img/010661200086qqhzs45E6_C_280_200_Q60.jpg">
                <div class="detail1">
                    <div class="detail1-title">
                        上海欢乐谷
                    </div>
                    <div class="detail1-price">
                        <div class="price1">
                            ￥2000
                            <font style="font-size: 15px;color: black">起</font>
                        </div>
                        <div class="states">
                            111条热评
                        </div>
                    </div>
                </div>
            </a>
        </li>
        <li>
            <a href="#">
                <img src="${ctx}/res/img/100t0q000000gbd7x94D6_C_280_200_Q60.jpg">
                <div class="detail1">
                    <div class="detail1-title">
                        上海杜莎夫人蜡像馆
                    </div>
                    <div class="detail1-price">
                        <div class="price1">
                            ￥2000
                            <font style="font-size: 15px;color: black">起</font>
                        </div>
                        <div class="states">
                            111条热评
                        </div>
                    </div>
                </div>
            </a>
        </li>
    </ul>
</div>

<div style="width: 100%;height: 100px;margin-top: 650px;background-color: #666">
</div>
</body>
</html>
