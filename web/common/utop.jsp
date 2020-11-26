<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%--头部--%>
<div class="header">
    <div class="header-left">
        <img src="${ctx}/res/img/logo.jpg">
    </div>
    <div class="header-right">
        <div class="header-right-1">
            <input>
            <div class="search-button"></div>
        </div>
        <div class="header-right-2">
            <ul>
                <li><a href="#">English</a></li>
                <li>
                    <a href="${ctx}/personal/personalCenter">我的12306</a>
                </li>

                <c:if test="${userId!=null}">
                    <li><a href="#">欢迎您：${userName}</a></li>
                    <li><a href="${ctx}/login/logout">换账号登陆</a></li>
                </c:if>
                <c:if test="${userId==null}">
                    <li><a href="${ctx}/login/login">登陆</a></li>
                    <li><a href="${ctx}/login/toRegister">注册</a></li>
                </c:if>

            </ul>
        </div>
    </div>
</div>





