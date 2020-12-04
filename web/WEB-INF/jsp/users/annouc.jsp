<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/12/4
  Time: 8:43
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>Title</title>
    <script src="${ctx}/res/other/jquery/jquery-3.5.1.min.js" type="text/javascript"></script>
</head>
<body>
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
    <%--                <a href="${ctx}/uIndex?pn=1">首页</a>--%>
    <%--                <a href="${ctx}/uIndex?pn=${pager.prePage}">下一页</a>--%>
    <%--                <c:forEach items="${pager.navigatepageNums}" var="pag">--%>
    <%--                    <a href="${ctx}/uIndex?pn=${pag}">${pag}</a>--%>
    <%--                </c:forEach>--%>
    <%--                <a href="${ctx}/uIndex?pn=${pager.nextPage}">下一页</a>--%>
    <%--                <a href="${ctx}/uIndex?pn=${pager.navigateLastPage}">尾页</a>--%>
    <%--                <a href="${ctx}/uIndex?pn=${pager.pageNum}">第${pager.pageNum}页</a>--%>
    <a href=javascript:fenye("1")>首页</a>
    <a href=javascript:fenye("${pager.prePage}")>上一页</a>
    <c:forEach items="${pager.navigatepageNums}" var="pag">
        <a href=javascript:fenye("${pag}")>${pag}</a>
    </c:forEach>
    <a href=javascript:fenye("${pager.nextPage}")>下一页</a>
    <a href=javascript:fenye("${pager.navigateLastPage}")>尾页</a>
    <a href=javascript:fenye("${pager.pageNum}")>
        <c:choose>
            <c:when test="${pager.pageNum==0}">
                第1页
            </c:when>
            <c:otherwise>
                第${pager.pageNum}页
            </c:otherwise>
        </c:choose>
    </a>
</div>

</body>
</html>
