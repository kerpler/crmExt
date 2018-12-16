<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap-table.css" />
		<!--<script src="js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>-->
		<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap-table.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap-table-zh-CN.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<div id="reportTableDiv">
			<table id="reportTable"></table>
		</div>
		<script type="text/javascript">
			//手动制造30条数据  
    var datas  = [];  
    for(var i=0;i<30;i++){  
        datas[i]={"name":"傻逼"+i+"号","age":"年龄："+i+"岁","sex":"男"+i}  
    }  
      
    $(function () {  
        $('#reportTable').bootstrapTable({  
            method: 'get',  
            cache: false,  
            height: 400,  
            striped: true,  
            pagination: true,  
            pageSize: 20,  
            pageNumber:1,  
            pageList: [10, 20, 50, 100, 200, 500],  sidePagination:'client',  
            search: true,  
            showColumns: true,  
            showRefresh: false,  
            showExport: false,  
            exportTypes: ['csv','txt','xml'],  
            search: true,  
            clickToSelect: true,  
            columns:   
            [  
                {field:"checked",checkbox:true},  
                {field:"name",title:"测试姓名",align:"center",valign:"middle",sortable:"true"},  
                {field:"age",title:"年龄",align:"center",valign:"middle",sortable:"true"},  
                {field:"sex",title:"性别",align:"center",valign:"middle",sortable:"true"},  
            ],  
            data:datas,  
        });                                       
    });   
		</script>
	</body>
</html>