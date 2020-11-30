<%--
  Created by IntelliJ IDEA.
  User: 23240
  Date: 2020/11/20
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; character = UTF-8" pageEncoding="utf-8" %>
<%@include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>添加景点</title>
    <link rel="stylesheet" href="${ctx}/res/other/test1/css/pintuer.css">
    <link rel="stylesheet" href="${ctx}/res/other/test1/css/admin.css">
    <script src="${ctx}/res/other/test1/ueditor/third-party/jquery-1.10.2.js"></script>
    <script src="${ctx}/res/other/test1/js/pintuer.js"></script>
    <script type="text/javascript" src="${ctx}/res/other/test1/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="${ctx}/res/other/test1/ueditor/ueditor.all.min.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head" id="add">
        <strong><span class="icon-pencil-square-o">新增景点</span></strong>
    </div>
    <div class="body-content">
        <form action="${ctx}/scenic/addScenic" method="post" class="form-x" enctype="multipart/form-data">
            <div class="form-group">
                <div class="label"><label>景点名</label></div>
                <div class="field">
                    <input type="text" class="input w50" name="scenic_name" data-validate="required:请输入景点名"/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>主图</label></div>
                <div class="field">
                    <input type="file" class="input w50" name="file"/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>副图1</label></div>
                <div class="field">
                    <input type="file" class="input w50" name="file"/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>副图2</label></div>
                <div class="field">
                    <input type="file" class="input w50" name="file"/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>副图3</label></div>
                <div class="field">
                    <input type="file" class="input w50" name="file"/>
                    <div class="tips"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>副图4</label></div>
                <div class="field">
                    <input type="file" class="input w50" name="file"/>
                    <div class="tips"></div>
                </div>
            </div>
            <%--<div class="form-group">
                <div class="label"><label>内容</label></div>
                <div class="field">
                    <script type="text/plain" id="remark_txt" name="content" style="width: 100%;height: 300px;"></script>
                    <script type="text/javascript">
                        var editor = UE.getEditor('remark_txt');
                    </script>
                    <div class="tips"></div>
                </div>
            </div>--%>
            <div class="form-group">
                <div class="label"></div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit">提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
