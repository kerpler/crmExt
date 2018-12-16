<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>权限管理</title>
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
			
			#head-title>.line {
				display: inline-block;
				width: 200px;
				height: 2px;
				margin-bottom: 6px;
				margin-left: 20px;
				margin-right: 20px;
				background-color: #2C3E50;
			}
			
			.bg-F7F7F9 {
				background-color: #F7F7F9;
			}
		</style>
	</head>

	<body>
		<div id="change" class="modal fade" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">修改权限</h4>
					</div>
					<div class="modal-body">
						<table class="table text-center table-bordered">
							<tr>
								<td class="bg-F7F7F9">账号</td>
								<td>admin</td>
								<td class="bg-F7F7F9">密码</td>
								<td>******</td>
								<td class="bg-F7F7F9">使用人</td>
								<td>管理员</td>
							</tr>
							<tr>
								<td class="bg-F7F7F9" colspan="6">菜单分配</td>
							</tr>
							<tr>
								<td colspan="6">
									<label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1" value="option1">新建工程</label>
									<label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox2" value="option2">在施工程</label>
									<label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox3" value="option3">完工工程</label>
									<label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox3" value="option3">客户信息</label>
									<label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox3" value="option3">统计图表</label>
									<label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox3" value="option3">权限管理</label>
								</td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary">保存</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
		<div id="main">
			<p id="head-title">
				<span class="line"></span>
				<span>权限管理</span>
				<span class="line"></span>
			</p>
			<p>
				<button data-toggle="modal" data-target="#change" type="button" class="btn btn-primary pull-left">新建账号</button>
				<button data-toggle="modal" data-target="#del-confirm" type="button" class="btn btn-primary pull-left" style="margin-left: 10px;">批量删除</button>
			</p>
			<table class="User-details">
				<!--<thead>
					<tr>
						<th class="text-center">
							<label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1" value="option1"><b>序号</b></label>
						</th>
						<th class="text-center">账号</th>
						<th class="text-center">使用人</th>
						<th class="text-center">密码</th>
						<th class="text-center" style="width: 550px;">菜单分配</th>
						<th class="text-center">操作时间</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<label class="checkbox-inline"><input type="checkbox" id="inlineCheckbox1" value="option1"><b>1</b></label>
						</td>
						<td>admin</td>
						<td>管理员</td>
						<td>******</td>
						<td>【新建工程】【在施工程】【完工工程】【客户信息】【统计图表】【权限管理】</td>
						<td>2018/5/29</td>
					</tr>

				</tbody>-->
			</table>
		</div>
		<div id="del-confirm" class="modal fade " tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">删除账号</h4>
					</div>
					<div class="modal-body">
						<h4 class="text-danger">删除后不可恢复！！！</h4>
						<p>确定删除xxx账号吗？</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						<button type="button" class="btn btn-danger">确定</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
		<script type="text/javascript">
			var datas = [];
			for(var i = 0; i < 300; i++) {
				datas[i] = {
					"id": i + 1,
					"loginname": "admin" + (i + 1) + "",
					"user": "管理员" + (i + 1) + "号",
					"loginpass": "******",
					"menu": "【新建工程】【在施工程】【完工工程】【客户信息】【统计图表】【权限管理】",
					'time': "2018/5/30"
				}
			}

			$(function() {
				$('.User-details').bootstrapTable({
					method: 'get',
					cache: false,
					height: 712,
					striped: true,
					pagination: true,
					pageSize: 15,
					pageNumber: 1,
					pageList: [15, 50, 100, ],
					paginationLoop: false, //设置为 true 启用分页条无限循环的功能。  
					//showPaginationSwitch:true,//是否显示 数据条数选择框  
					uniqueId: "id",
					sidePagination: 'client',
					search: true,
					showColumns: true,
					showRefresh: false,
					showExport: false,
					exportTypes: ['csv', 'txt', 'xml'],
					search: true,
					clickToSelect: true,
					columns: [{
							checkbox: true,
							visible: true
						},
						{
							field: "id",
							title: "序号",
							align: "center",
							valign: "middle",
							sortable: "true"
						},
						{
							field: "loginname",
							title: "账号",
							align: "center",
							valign: "middle",
							sortable: "true"
						},
						{
							field: "user",
							title: "使用人",
							align: "center",
							valign: "middle",
							sortable: "true"
						},
						{
							field: "loginpass",
							title: "密码",
							align: "center",
							valign: "middle",
							sortable: "true"
						},
						{
							field: "menu",
							title: "菜单分配",
							align: "center",
							valign: "middle",
							sortable: "true"
						},
						{
							title: "操作",
							align: "center",
							valign: "middle",
							formatter: function(value, row, index) { //自定义显示可以写标签哦~  
								return '<button data-toggle="modal" data-target="#change" type="button" class="btn btn-default btn-sm">修改</button>' +
									'<button data-toggle="modal" data-target="#del-confirm" type="button" class="btn btn-primary btn-sm">删除</button>';
							},
							sortable: "true"
						},
					],
					data: datas,
				});
			});
			//			$('.User-details>tbody>tr>td').bind('click', function() {
			//				$('#change').modal('show');
			//				console.log($(this).parent())
			//			})
			//			$('.User-details>tbody>tr>td:first-child').unbind('click')
		</script>
	</body>

</html>