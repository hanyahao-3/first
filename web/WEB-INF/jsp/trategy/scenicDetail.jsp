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
    <title>景点预订</title>
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js" type="text/javascript"></script>
    <link href="${ctx}/res/other/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="${ctx}/res/other/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/other/bootstrap/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/js/index.js" type="text/javascript"></script>
    <link href="${ctx}/res/css/index.css" type="text/css" rel="stylesheet">
    <link href="${ctx}/res/css/scenicDetail.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${ctx}/res/manager/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/res/manager/js/index.js"></script>
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
<div class="mid">
    <div class="per-mid-h">
        <span>当前位置：</span><a href="${ctx}/login/uIndex" class="c_66">首页</a>
        >
        <a href="#" class="c_66">景点预订</a>
        >
        <a href="#" class="c_66">${sceniceDetail.scenic_name}</a>
    </div>
    <div class="per-mid-m">
        <div class="picture">
            <div class="picture-1">
                <img src="${sceniceDetail.url1}">
            </div>
            <div class="picture-others">
                <ul>
                    <li><img src="${sceniceDetail.url2}"></li>
                    <li><img src="${sceniceDetail.url3}"></li>
                    <li><img src="${sceniceDetail.url4}"></li>
                    <li><img src="${sceniceDetail.url5}"></li>
                </ul>
            </div>
        </div>
        <div class="scenicDet">
            <h3>
                <i>${sceniceDetail.scenic_name}</i>
            </h3>
            <div class="mid-r-m">
                <span class="bianhao">编号&nbsp;:&nbsp;GZ0001</span>
                <span class="fengefu"></span>
                <span class="destin">目的地&nbsp;:&nbsp;上海</span>
            </div>
            <div>
                <table>
                    <tr>
                        <td style="width: 100px">旅游类型</td>
                        <td style="width: 300px">单人游</td>
                    </tr>
                    <tr>
                        <td>行程天数</td>
                        <td>1天</td>
                    </tr>
                    <tr>
                        <td>联系电话</td>
                        <td>1111111111</td>
                    </tr>
                </table>
            </div>
            <div class="scenic-price">
                <font>
                    价格:
                </font>
                <font>
                    ￥${sceniceDetail.scenic_price.scenic_price/10*sceniceDetail.scenic_price.scenic_zk}
                </font>
            </div>
            <div class="buy-button">
                <button type="button" class="btn btn-outline-success" onclick="xadmin.open('预订景点票', '${ctx}/uSceninc/toScenicBuy?id=${sceniceDetail.id}',600,800)">预订</button>
            </div>
        </div>
    </div>
</div>
<div class="scenic-commnets">
    <div class="scenic-commnets-head">
        <ul>
            <li class="active"><a href="javascript:void(0)">景点详情</a></li>
            <li><a href="javascript:void(0)">相关评论</a></li>
        </ul>
    </div>
    <div class="scenic-item">
        <div class="scenic-detail">
            <h3>迪士尼乐园</h3>
            <p style="text-indent: 2em">
                迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园迪士尼乐园
            </p>
            <div style="width: 300px">
                <img src="${sceniceDetail.url1}"/>
            </div>
        </div>
    </div>
    <div class="scenic-item">
        <div class="scenic-comm">
            <div class="every-comment">
                <div class="people-messa">
                    <span class="head-con">
                        <img src="${ctx}/res/img/100j1h000001hkwyw2759_C_280_200_Q60.jpg">
                    </span>
                    <span class="nicheng">一个人</span><br/>
                    <span class="add-time">2020-11-29 22:36</span>
                </div>
                <div class="people-comment">
                    玩的还能行、就是迪士尼下雨、玩的不尽兴有点小遗憾、上海夜景很美、一饱眼福、三天时间还是很紧的、导游挺好的、酒店稍微偏一点、但是环境还是不错的、倒也值了、
                    <div style="margin-top: 20px">
                    <img src="${ctx}/res/img/300u190000015kprp08E9.jpg">
                    </div>
                </div>
            </div>
            <div class="fengefu"></div>
        </div>
    </div>
</div>
</body>
<script>
    $(".scenic-commnets-head ul li").click(function () {
        $(".scenic-commnets-head ul li").removeClass('active');
        $(this).addClass('active');
        $(".scenic-commnets .scenic-item").hide();
        $(".scenic-commnets .scenic-item").eq($(".scenic-commnets-head ul li").index(this)).show();
    })
</script>
</html>
