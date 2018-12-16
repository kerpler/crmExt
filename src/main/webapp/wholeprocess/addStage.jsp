<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap-table.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/less.css" />
        <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap-table.js" type="text/javascript" charset="utf-8"></script>
        <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap-table-zh-CN.js" type="text/javascript" charset="utf-8"></script>
</head>
<style type="text/css">
    .table{
        margin-top: 5px;
    }

    .button{
        margin-top: 8px;
        margin-left: 10px;
    }
</style>
<body>

<button type="button"  onclick="addrow();" class="btn btn-success dropdown-toggle" id="addRowbtn">
  <span class="glyphicon glyphicon  glyphicon-plus" aria-hidden="true"></span>增加
</button>
<!--创建一个表格-->
<form action="${pageContext.request.contextPath}/add/addStage" method="POST">
<table id="item" class="table">
</form>
<tr><th>序号</th><th>模块流程</th><th>备注</th></tr>
</table>
  </body>
  <script type="text/javascript">

function addrow(){

var tables = $('.table');


var addtr = $("<tr>"+
"<td><input type='text'/></td>"+
"<td><input id='age' type='text' name='stagename' /></td>"+
"<td><input id='sex' type='text' name='stagenote' /></td>"+
"<td><span><button type='sumbit' class='btn btn-success dropdown-toggle' aria-hidden='true'>保存</button></span></td>"+ 
"<td><span class='btn btn-success dropdown-toggle'  onclick='deleteTrRow(this);'>删除</span></td>"+
"</tr>");
      addtr.appendTo(tables);     
}

function deleteTrRow(tr){
    //多一个parent就代表向前一个标签,
    //本删除范围为<td><tr>两个标签,即向前两个parent
    //如果多一个parent就会删除整个table
    $(tr).parent().parent().remove();
    }
</script>
</html>