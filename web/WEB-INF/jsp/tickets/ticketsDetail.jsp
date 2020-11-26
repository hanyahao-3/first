<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/15
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>车次详情</title>
    <link href="${ctx}/res/css/queryTickets.css" rel="stylesheet">
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js"></script>
    <script src="${ctx}/res/js/index.js"></script>
    <link href="${ctx}/res/other/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="${ctx}/res/other/bootstrap/bootstrap.min.js"></script>
    <script src="${ctx}/res/other/bootstrap/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="tickets-details">
    <div class="t_number">
        <label>车次号：</label>
        <span>${train_number}</span>
        <input type="hidden" id="t_number" value="${train_number}">
    </div>
    <div class="t_type">
        <label>车次类型：</label>
        <span>${ticketsDetail[3]}</span>
    </div>

    <div class="t_seat">
        <table>
            <tr>
                <td><label>座位情况：</label></td>
                <td> <span>
            <c:forEach items="${ticketsDetail[0]}" var="seats">
                <label>${seats.key}:</label>
                <span>
                    <c:forEach items="${seats.value}" var="seat">
                        <span class="seats-font">
                        <input type="radio" class="btn btn-outline-secondary" onclick="totalMoney()" name="buy-seat" id="buy-seat"
                               value="${seat[0]} ${seat[1]}">${seat[0]}号车厢 ${seat[1]}号座位
                            &nbsp;&nbsp;&nbsp;</input>
                        </span>
                    </c:forEach>
                </span>
                <br/>
            </c:forEach>
        </span>
                </td>
            </tr>
        </table>
        <div>
            总金额：<input style="border: none;color: red;font-size: 30px" id="total-money" >
        </div>
    </div>
    <div>
        <button type="button" id="buyByDetail" class="btn btn-outline-dark buy-button">购买</button>
    </div>
</div>

<script>
    function totalMoney() {

        var ss = $('input:radio:checked').val();
        var train_number = $('#t_number').val();
        var strings = ss.split(" ");
        // alert(strings[1]);
        var carriage_number = strings[0];

        var seat_number = strings[1];
        $.ajax({
            type:"POST",
            url:"${ctx}/train/getTotalMoney",
            data:{
                "train_number": train_number,
                "carriage_number": carriage_number,
                "seat_number": seat_number
            },
            success: function (result) {
                if (result.res==1){
                    var priceByTrainType = result.priceByTrainType;
                    var priceBySeatType = result.priceBySeatType;
                    var total = parseInt(priceByTrainType)+parseInt(priceBySeatType);
                    $('#total-money').val("￥"+total+"元");
                }
            }
        })
    };

    $(function () {

        $("#buyByDetail").click(function () {
            var ss = $('input:radio:checked').val();
            if(ss==null){
                alert("请选择座位！");
                return false;
            }
            var ss2 = $('#total-money').val();
            if (window.confirm("你确定要花费"+ss2+"购买吗？")) {
                var train_number = $('#t_number').val();
                var strings = ss.split(" ");
                // alert(strings[1]);
                var carriage_number = strings[0];

                var seat_number = strings[1];
                $.ajax({
                    type: "POST",
                    url: "${ctx}/train/buyTickets",
                    data: {
                        "train_number": train_number,
                        "carriage_number": carriage_number,
                        "seat_number": seat_number
                    },
                    success: function (result) {
                        if (result.res == 0) {
                            alert("请去登陆！");
                            window.location.href = "${ctx}/login/login";
                        } else if (result.res == 2) {
                            alert("购买失败！该座位的票已被被人购买！");
                        } else if (result.res == 3) {
                            alert("对不起，我们没那么多车厢！")
                        } else if (result.res == 4) {
                            alert("对不起，所查座位超过车厢最大容量！")
                        } else if (result.res == 5) {
                            alert("对不起，我们没有所查车次！")
                        } else if(result.res==6){
                            alert("请选择座位！")
                        } else{
                            alert("购买成功，请刷新页面！");
                        }
                    }
                })
            } else {
                return false;
            }
        })

    })
</script>
</body>
</html>
