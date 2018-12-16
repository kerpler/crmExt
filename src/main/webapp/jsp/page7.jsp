<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>在施工地</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap-table.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/less.css" />
        <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap-table.js" type="text/javascript" charset="utf-8"></script>
        <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap-table-zh-CN.js" type="text/javascript" charset="utf-8"></script>
        <style type="text/css">
            #main {
                width: 1700px;
                /*background-color: aqua;*/
                margin: auto;
                overflow: hidden;
            }

            #head-title {
                margin-top: 20px;
                line-height: 50px;
                font-size: 1.8em;
                position: relative;
                text-align: center;
            }
            #font{
            color: #ffffff;
            }
            #head-title>.line {
                display: inline-block;
                width: 200px;
                height: 2px;
                margin-bottom: 6px;
                margin-left: 20px;
                margin-right: 20px;
                background-color: #2C3E50;
            }

        </style>
    </head>
    <body>
        <div id="main">
            <p id="head-title">
                <span class="line"></span>
                <span>阶段基础数据</span>
                <span class="line"></span>
            </p>
            <div id="toolbar">
                <button class="btn btn-primary" >
                   <a href=addStage.jsp><span id="font">新增阶段</span></a>
                </button>
            </div>
            <table id="table">

            </table>
        </div>
        
        <script type="text/javascript">
        $(function() {
            $('#table').bootstrapTable({
                method: 'get',
                cache: false,
                height: 712,
                striped: true,
                pagination: true,
                pageSize: 15,
                pageNumber: 1,
                pageList: [15, 50, 100, ],
                paginationLoop: false, //设置为 true 启用分页条无限循环的功能。
//            showPaginationSwitch:true,//是否显示 数据条数选择框
                uniqueId: "id",
                sidePagination: 'client',
                showColumns: true,
                showRefresh: false,
                showExport: false,
                showToggle: true,
                exportTypes: ['csv', 'txt', 'xml'],
                search: true,
                clickToSelect: true,
                columns: [
                    {
                        field: "id",
                        title: "序号",
                        align: "center",
                        valign: "middle",
                        sortable: "true"
                    },
                    {
                        field: "a",
                        title: "模块流程",
                        align: "center",
                        valign: "middle",
                        sortable: "true"
                    },
                    {
                        field: "b",
                        title: "流程阶段",
                        align: "center",
                        valign: "middle",
                        sortable: "true"
                    },
                    {
                        field: "c",
                        title: "备注",
                        align: "center",
                        valign: "middle",
                        sortable: "true"
                    },
                    {
                        field: "kf",
                        title: "",
                        align: "center",
                        formatter: function(value, row, index) { //自定义显示可以写标签哦~
                            return "<a href=page22.jsp>查看详情</a>";
                        },
                        valign: "middle",
                        sortable: "true"
                    },
                ],
            });
        });
        </script>
    </body>
</html>