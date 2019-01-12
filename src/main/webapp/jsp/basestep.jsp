<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引入标签库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<!-- 获取项目名称路径 -->
<%
	pageContext.setAttribute("PATH", request.getContextPath());
%>
    <meta name="viewport" content="width=device-width" />
    <title>工程项目</title>
    
    <script type="text/javascript" src="${PATH}/plugins/bootstrap/js/jquery.min.js"></script>
    <script type="text/javascript" src="${PATH}/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${PATH}/plugins/bootstrap/js/bootstrap-table.js"></script>
    <script type="text/javascript" src="${PATH}/plugins/bootstrap/js/bootstrap-table-zh-CN.js"></script>
    
<%--     <script type="text/javascript" src="${PATH}/plugins/wholeprocess/js/knockout-3.4.2.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script> --%>
    
    
    <link rel="stylesheet" type="text/css" href="${PATH}/plugins/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="${PATH}/plugins/bootstrap/css/bootstrap-table.css"/>
    

    
    
    <script src="${PATH}/plugins/wholeprocess/js/index.js"></script>
</head>
<body>
    <div class="panel-body" style="padding-bottom:0px;">
        <div class="panel panel-default">
            <div class="panel-heading">查询条件</div>
            <div class="panel-body">
                <form id="formSearch" class="form-horizontal">
                    <div class="form-group" style="margin-top:15px">
                        <label class="control-label col-sm-1" for="txt_search_allperiod">整体工期</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="txt_search_allperiod">
                        </div>
                        <div class="col-sm-4" style="text-align:left;">
                            <button type="button" style="margin-left:50px" id="btn_query" class="btn btn-primary">查询</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>       

        <div id="toolbar" class="btn-group">
            <button id="btn_add" type="button" class="btn btn-default">
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
            </button>
            <button id="btn_edit" type="button" class="btn btn-default">
                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
            </button>
            <button id="btn_delete" type="button" class="btn btn-default">
                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
            </button>
        </div>
        <table id="tb_item"></table>
        
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">操作</h4>
                    </div>
                    <form method="post"> 
                    <div class="modal-body">

                        <div class="form-group">
                            <label>工程ID</label>
                            <input type="text" name="id" class="form-control" id="txt_id" placeholder="工程ID" />
                        </div>
                        <div class="form-group">
                            <label>工程标识</label>
                            <input type="text" name="code" class="form-control" id="txt_code" placeholder="工程标识" />
                        </div>
                        <div class="form-group">
                            <label>工程名称</label>
                            <input type="text" name="codename" class="form-control" id="txt_codename" placeholder="工程名称" />
                        </div>
                        <div class="form-group">
                            <label>工程周期</label>
                            <input type="text" name="period" class="form-control" id="txt_period" placeholder="工程周期" />
                        </div>
                        <div class="form-group">
                            <label>分类标识</label>
                            <input type="text" name="sort" class="form-control" id="txt_sort" placeholder="分类标识" />
                        </div>
                        <div class="form-group">
                            <label>分类名称</label>
                            <input type="text" name="sortname" class="form-control" id="txt_sortname" placeholder="分类名称"  />
                        </div>
                        <div class="form-group">
                            <label>整体工期</label>
                            <input type="text" name="allperiod" class="form-control" id="txt_allperiod" placeholder="整体工期"  />
                        </div>
                        <div class="form-group">
                            <label>备注</label>
                            <input type="text" name="note" class="form-control" id="txt_note" placeholder="备注"  />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                        <button type="button" id="btn_submit" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    	
    </div>
</body>
</html>
