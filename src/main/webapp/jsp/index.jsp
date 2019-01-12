<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>全程监控</title>
<% 
	pageContext.setAttribute("PATH", request.getContextPath());
%>

<link rel="stylesheet" type="text/css" href="${PATH}/plugins/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${PATH}/plugins/bootstrap/css/flex.css" />
<link rel="stylesheet" type="text/css" href="${PATH}/plugins/bootstrap/css/less.css" />
<link rel="stylesheet" type="text/css" href="${PATH}/plugins/static/css/bootstrap-treeview.css" />
<link rel="stylesheet" type="text/css" href="${PATH}/plugins/wholeprocess/css/index.css" />
<script type="text/javascript" charset="utf-8" src="${PATH}/plugins/bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${PATH}/plugins/bootstrap/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${PATH}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" charset="utf-8" src="${PATH}/plugins/static/js/bootstrap-treeview.js"></script>

</head>

<body>
	<div id="box" class="flex flex-v">
		<div class="flex-1 flex">
			<div id="sidebar" data-toggle='show'>
				<ul>
					<li data-src='basestep.jsp'>工程项目</li>
					<li data-src='page2.jsp'>在施工地</li>
				</ul>
			</div>
			<div id="main" class="flex-1">
				<span class="glyphicon glyphicon-th-list"></span>
				<hr>
				<iframe src="page2.jsp"></iframe>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		var isChrome = navigator.userAgent.toLowerCase().match(/chrome/) != null;
		if (!isChrome) {
			alert('为了您更好的体验，请使用Chrome浏览器浏览此页面！\n\n若您正在使用（360浏览器/QQ浏览器）请切换为极速模式！')
		}
		
		$('#sidebar li').click(function() {
			var src = $(this).attr('data-src');
			$('#main iframe').attr('src', src);
			$('#sidebar li').removeClass('bg-primary');
			$(this).addClass('bg-primary')
		})
		$('#main span').click(function() {
			var side = $('#sidebar');
			var t = side.attr('data-toggle');
			if (t == 'show') {
				side.animate({
					'left' : -180,
					'width' : 0
				}, 200, function() {
					side.attr('data-toggle', 'hide')
				});
			} else {
				side.animate({
					'left' : 0,
					'width' : 180
				}, 200, function() {
					side.attr('data-toggle', 'show')
				});
			}
		})
	</script>
</body>
</html>