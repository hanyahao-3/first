<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/12/1
  Time: 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>预订景点票</title>
    <link href="${ctx}/res/css/queryTickets.css" rel="stylesheet">
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js"></script>
    <script src="${ctx}/res/js/index.js"></script>
    <link href="${ctx}/res/other/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="${ctx}/res/other/bootstrap/bootstrap.min.js"></script>
    <script src="${ctx}/res/other/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="${ctx}/res/manager/lib/layui/layui.js" charset="utf-8"></script>
    <script src="${ctx}/res/manager/js/index.js"></script>
</head>
<body>
<div style="width: 100%;height:40px;text-align: center;margin-top: 20px">
    <h3>${t_scenic.scenic_name}</h3>
</div>
<div style="width: 100%;height: 700px;padding: 60px 150px 20px 150px">
    <div>
        <label>预订日期：</label>
        <span>
            <input type="date" placeholder="请选择日期" id="buy_time">
        </span>
    </div>
    <div>
        <label style="margin-left: 30px;margin-top: 20px">单价：</label>
        <span>
            <label id="every_money">￥${t_scenic.scenic_price.scenic_price}元</label>
        </span>
    </div>
    <div>
        <label style="margin-top: 20px">购买数量：</label>
        <span>
            <a href="javascript:void(0)" id="min_s" style="text-decoration: none;font-size: 20px">-</a>
            <input type="text" value="1" readonly id="t_a" style="width: 30px;text-align: center">
            <a href="javascript:void(0)" id="add_s" style="text-decoration: none;font-size: 20px">+</a>
<%--            <font class="font14 c_99" style="margin-left: 20px;">库存100</font>--%>
        </span>
    </div>
<%--    <div>--%>
<%--        <label style="margin-left: 30px;margin-top: 20px">总价：</label>--%>
<%--        <input id="total_money" value="${t_scenic.scenic_price.scenic_price}元"></input>--%>
<%--    </div>--%>
    <div style="margin-top: 30px;margin-left: 10px">
        <button type="button" class="btn btn-outline-info" style="width: 280px" onclick="buy_scenic()">购买</button>
    </div>
</div>
</body>
<script>
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

    function buy_scenic() {
        var sum1 = $('#t_a').val();
        var e_money=${t_scenic.scenic_price.scenic_price};
        var t_money=sum1*${t_scenic.scenic_price.scenic_price};
        if(window.confirm("你确定要花费"+e_money+"*"+sum1+"="+t_money+"元购买吗？")){
            <%--$.ajaxSettings.async=false;--%>
            <%--$.post("${ctx}/uSceninc/scenicBuy",{"id":${t_scenic.id},"sum":sum1},function (result) {--%>
            <%--    if (result.res==0){--%>
            <%--        alert("请去登陆！");--%>
            <%--        window.location.href = "${ctx}/login/login";--%>
            <%--    }else if(result.res==1){--%>
            <%--        alert("购买成功！");--%>
            <%--    }--%>
            <%--});--%>
            var buy_time=$('#buy_time').val();
            $.ajax({
                type: "POST",
                url: "${ctx}/uSceninc/scenicBuy",
                data: {
                    "id": ${t_scenic.id},
                    "sum1": sum1,
                    "buy_time":buy_time
                },
                success: function (result) {
                    if (result.res == 0) {
                        alert("请去登陆！");
                    } else if (result.res == 1) {
                        alert("购买成功！");
                    }else if (result.res == 3) {
                        alert("请输入预订时间！");
                    }
                }
            })
        }else {
            return false;
        }
    }
</script>
</html>
