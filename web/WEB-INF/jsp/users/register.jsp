<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/10/13
  Time: 0:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; character = UTF-8" language="java" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>Title</title>
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js" type="text/javascript"></script>
    <link href="${ctx}/res/other/bootstrap/bootstrap.min.css" rel="stylesheet">
    <script src="${ctx}/res/other/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/other/bootstrap/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="${ctx}/res/js/index.js" type="text/javascript"></script>
    <link href="${ctx}/res/css/index.css" type="text/css" rel="stylesheet">
    <script src="${ctx}/res/manager/lib/layui/layui.js" charset="utf-8"></script>
    <script>
        function zhuce() {
            $.ajax({
                type:"POST",
                url:"${ctx}/login/register",
                data:$('#form1').serialize(),
                success:function (result) {
                    if(result.res==0){
                        alert("注册失败！");
                    }else {
                        alert("注册成功,请去登陆！");
                        window.location.href = "${ctx}/login/login";
                    }
                }
            })
        }
    </script>
</head>
<body>
<div>
    <%@include file="/common/utop.jsp" %>
    <div class="menu">
        <div class="menu-content">
            <ul>
                <li><a href="${ctx}/uIndex">首页</a></li>
                <li><a href="${ctx}/queryTickets">火车票</a></li>
                <li><a href="${ctx}/queryHotel">酒店</a></li>
                <li><a href="${ctx}/queryTrategy">景点预订</a></li>
                <li><a href="${ctx}/queryPersonal">我的旅行</a></li>
            </ul>
        </div>
    </div>
    <div style="width:1200px;margin: 0 auto;boder:2px solid #2f23f0">
        <div class="width1200 center_yh hidden_yh font14" style="height: 40px;line-height: 40px;">
            <span>当前位置：</span><a href="${ctx}/login/uIndex" class="c_66">首页</a>
            >
            <a href="#" class="c_66">注册</a>
        </div>
        <div style="background-color: rgb(222,222,222);padding: 3px 3px 3px 8px">
            用户信息
        </div>
        <div style="border: 1px solid rgb(222,222,222);padding-top: 30px">
            <form id="form1" style="width: 450px">
                <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">用户名</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="inputEmail3" name="user_name" required="" lay-verify="required">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">密码</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" name="user_password" required="" lay-verify="required">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">年龄</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="inputAge" name="user_age" required="" lay-verify="required">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">手机号</label>
                    <div class="col-sm-10">
                        <input  class="form-control" id="inputPhoneNumber" name="phone_number" required="" lay-verify="phone" lay-verify="required">
                    </div>
                </div>
                <fieldset class="form-group">
                    <div class="row">
                        <legend class="col-form-label col-sm-2 pt-0">性别</legend>
                        <div class="col-sm-10">
                            <div class="form-check" style="float: left;margin-right: 40px">
                                <input class="form-check-input" type="radio" name="user_sex" id="gridRadios1" value="男" checked>
                                <label class="form-check-label" for="gridRadios1">
                                    男
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="user_sex" id="gridRadios2" value="女">
                                <label class="form-check-label" for="gridRadios2">
                                    女
                                </label>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="form-group row">
                    <div class="col-sm-10" style="margin-left: 70px">
                        <button type="submit" class="btn btn-primary btn-lg btn-block" onclick="zhuce()">注册</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
<%--<script>layui.use(['form', 'layer'],--%>
<%--    function() {--%>
<%--        $ = layui.jquery;--%>
<%--        var form = layui.form,--%>
<%--            layer = layui.layer;--%>
<%--    })--%>
<%--</script>--%>
</html>
