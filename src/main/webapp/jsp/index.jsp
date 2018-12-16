<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title></title>
	<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" /> -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/flex.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/less.css" />
	<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	<style type="text/css">
		#box {
			width: 100%;
			height: 100%;
			position: absolute;
			overflow: hidden;
		}

		#head {
			height: 80px;
			/*background-color: black;*/
			border-bottom: 1px solid;
		}

		#sidebar {
			width: 180px;
			position: relative;
			background-color: #2C3E50;
			left: 0;
		}

		#sidebar>ul {
			padding: 0;
			list-style-type: none;
			text-align: center;
			font-size: 18px;

			color: white;
			font-weight: bold;
		}

		#sidebar>ul>li {
			line-height: 50px;
			border-bottom: 1px solid;
			cursor: pointer;
		}

		#sidebar>ul>li:hover {
			background-color: white;
			color: #2C3E50;
			transition: 0.6s;
		}

		#main {
			/*background-color: red;*/
			padding: 0;
			overflow: hidden;
		}

		#main>iframe {
			width: 100%;
			height: 100%;
			border: none;

		}

		.glyphicon {
			/*font-size: .9em;*/
			/*margin-top: 10px;*/
			margin-left: 15px;
		}
	</style>
	<script type="text/javascript">
		var isChrome = navigator.userAgent.toLowerCase().match(/chrome/) != null;
		if (!isChrome) {
			alert('为了您更好的体验，请使用Chrome浏览器浏览此页面！\n\n若您正在使用（360浏览器/QQ浏览器）请切换为极速模式！')
		}
		
	</script>
</head>

<body>
	<div id="box" class="flex flex-v">
		<div id="head">
			<img src="${pageContext.request.contextPath}/plugins/img/logo.png" height="80%" style="margin:8px">单击这个logo收回菜单
		</div>
		<div class="flex-1 flex">
			<div id="sidebar" data-toggle='show'>
				<ul>
					<!-- <li data-src='page1.html' class="bg-primary">新建工程<span class="glyphicon glyphicon-pencil" ></span></li> -->
					<li data-src='page1.jsp' class="bg-primary">在施工程<span class="glyphicon glyphicon-th-list"></span></li>
					<li data-src='page2.jsp'>完工工程<span class="glyphicon glyphicon-th-large"></span></li>
					<li data-src='page3.jsp'>完工工程<span class="glyphicon glyphicon-th-large"></span></li>
					<li data-src='page4.jsp'>客户信息<span class="glyphicon glyphicon-user"></span></li>
					<li data-src='page5.jsp'>统计图表<span class="glyphicon glyphicon-signal"></span></li>
					<li data-src='page6.jsp'>权限管理<span class="glyphicon glyphicon-cog"></span></li>
					<li data-src='page7.jsp'>page7<span class="glyphicon glyphicon-cog"></span></li>
					<li data-src='page8.jsp'>page8<span class="glyphicon glyphicon-cog"></span></li>
					<li data-src='page9.jsp'>page9<span class="glyphicon glyphicon-cog"></span></li>
					<li data-src='page0.jsp'>page0<span class="glyphicon glyphicon-cog"></span></li>
					<li data-src='addStage.jsp'>addStage<span class="glyphicon glyphicon-cog"></span></li>
					<li data-src='addStage1.jsp'>addStage<span class="glyphicon glyphicon-cog"></span></li>
					<li data-src='projectGant.jsp'>projectGant<span class="glyphicon glyphicon-cog"></span></li>
				</ul>
			</div>
			<div id="main" class="flex-1">
				<iframe src="page1.jsp"></iframe>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		
		$('#sidebar li').click(function() {
			var src = $(this).attr('data-src');
			$('#main iframe').attr('src', src);
			$('#sidebar li').removeClass('bg-primary');
			$(this).addClass('bg-primary')
		})
		$('#head img').click(function() {
			var side = $('#sidebar');
			var t = side.attr('data-toggle');
			if (t == 'show') {
				side.animate({
					'left': -180,
					'width': 0
				}, 200, function() {
					side.attr('data-toggle', 'hide')
				});
			} else {
				side.animate({
					'left': 0,
					'width': 180
				}, 200, function() {
					side.attr('data-toggle', 'show')
				});
			}
		})
	</script>
</body>
</html>