<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/10/25
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <script src="${ctx}/res/js/jquery-3.5.1.min.js"></script>
    <title>Title</title>

    <script>
        $(function () {
            $("#buyByDetail").click(function () {
                if (window.confirm("你确定要购买吗？")) {
                    var train_number = $('#t_number').val();
                    var carriage_number = $('#c_number').val();
                    var seat_number = $('#s_number').val();
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
                            } else {
                                alert("购买成功，请刷新页面！");
                            }
                        }
                    })
                }else {
                    return false;
                }
            })

        })
    </script>
</head>
<body>
<form onsubmit="return false">
    车次号:<input id="t_number" name="train_number">
    车厢号:<input id="c_number" name="carriage_number">
    座位号:<input id="s_number" name="seat_number">
    <input type="submit" id="buyByDetail" value="购买">
</form>
<c:forEach items="${seats}" var="entry">
    <fieldset style="width: 70%">
        <legend>${entry.key}:</legend>
        <c:forEach items="${entry.value}" var="seat">
            <table width="100%">
                <tr>
                    <td width="3%">${seat.key}:</td>
                    <td width="60%">
                        <c:forEach items="${seat.value}" var="seatDetail">
                            <span style="border: 1px solid blue;" class="buyTicketByClick">
                            ${seatDetail[0]}号车厢,${seatDetail[1]}号座位
                            </span>
                            &nbsp;&nbsp;
                        </c:forEach>
                    </td>
                    <td width="5%" align="right">
                        <button>购买</button>
                    </td>
                </tr>
            </table>
        </c:forEach>
    </fieldset>
</c:forEach>
</table>
</body>
</html>
