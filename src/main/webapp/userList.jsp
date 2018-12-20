<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引入标签库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>json展示页面</title>
<!-- 获取项目名称路径 -->
<%
	pageContext.setAttribute("PATH", request.getContextPath());
%>

<!-- 
web路径
不以/开始的相对路径，找资源以当前路径为基准（容易出问题）
以/开始的相对路径，找资源以服务器的路径（http://localhost:8080）为标准,需要加项目名
 -->
<link href="${PATH}/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${PATH}/plugins/wholeprocess/css/list.css" rel="stylesheet">
<script type="text/javascript" src="${PATH}/plugins/bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="${PATH }/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${PATH }/plugins/wholeprocess/js/list.js"></script>

</head>
<body>
	<%-- ${pageInfo } --%>
	<!-- 使用bootstrap栅格系统搭建显示页面 -->
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-sm-12">
				<h1>USER INFO</h1>
			</div>
		</div>
		<!-- 增加删除按钮 -->
		<div class="row">
			<!-- 使用列偏移 -->
			<div class="col-sm-4 col-sm-offset-10">
				<!-- 使用按钮样式 -->
				<button type="button" class="btn btn-primary btn-sm" id="userAddBtn">增加</button>
				<button type="button" class="btn btn-primary btn-sm" id="userDelBtn">删除</button>
			</div>
		</div>
		<!-- 列表信息 -->
		<div class="row">
			<div class="col-sm-12">
				<table class="table table-hover" id="user_table">
					<thead>
						<tr>
							<th width="20%">id</th>
							<th width="20%">用户名</th>
							<th width="20%">密码</th>
							<th width="20%">年龄</th>
							<th width="20%">操作</th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
			</div>
		</div>
		<!-- 分页 -->
		<div class="row">
			<!-- 分页文字信息 -->
			<div class="col-sm-3" id="pageInfo_area"></div>
			<!-- 分页条信息 -->
			<div class="col-sm-5 col-sm-offset-4" id="pageNav_area"></div>
		</div>
	</div>
	<!-- 新增模态框 -->
	<div class="modal fade" id="userAddModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document" style="width: 35%">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h5 class="modal-title" id="myModalLabel">新增</h5>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="userAddModalForm">
						<div class="form-group">
							<label class="col-sm-2 control-label">id</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="userId">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="userName"
									placeholder="邮箱或手机号">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">密码</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" name="userPwd"
									placeholder="请输入密码">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">年龄</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="age"
									placeholder="请输入年龄">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-sm"
						data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary btn-sm"
						id="userAddModalSaveBtn">保存</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>