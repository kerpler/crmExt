<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在施工程</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap-table.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/less.css" />
		<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<!--<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>-->
		<!--<script src="http://www.jq22.com/jquery/1.7.2/jquery.min.js"></script>-->
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

			#modal {
				-webkit-user-select: none;
				-moz-user-select: none;
				-ms-user-select: none;
				user-select: none;
			}

			.progress {
				margin: 0;
			}

			#tab-a,
			#tab-b,
			#tab-c,
			#tab-d {
				position: absolute;
				/*background-color: white;*/
			}

			#tab-a,
			#tab-c {
				width: 300px;
			}

			#tab-a th,
			#tab-b th,
			#tab-c td,
			#tab-d td {
				padding: 0;
				line-height: 35px;
			}

			#tab-a table,
			#tab-b table {
				margin-bottom: 0;
			}

			#tab-a,
			#tab-b {
				z-index: 10;
				background-color: white;
			}

			#tab-c,
			#tab-d {
				margin-top: 37px;
			}

			.w40 {
				width: 40px;
				height: 35px;
				/*line-height: 35px;*/
				text-align: center;
				position: relative;
			}

			.shadow-right {
				box-shadow: 2px 2px 2px rgba(0, 0, 0, .8);
			}

			.shadow-bottom {
				box-shadow: 0px 2px 5px #000;
			}

			.mark {
				display: block;
				height: 10px;
				width: 100%;
				margin-top: 12.5px;
				position: absolute;
				background-color: #2ECC71;
			}

			.bg-000 {
				background-color: #2C3E50 !important;
			}

			#left {
				width: 300px;
				/*height: 900px;*/
				height: 660px;
				overflow: hidden;
				float: left;
				z-index: 10;
				position: relative;
				border-bottom: 1px solid #DDDDDD;
			}

			#right {
				float: left;
				position: relative;
				height: 660px;
				width: 580px;
				overflow: hidden;
				border-right: 1px solid #DDDDDD;
				border-bottom: 1px solid #DDDDDD;
				/*height: 900px;*/
			}

			#scroll-lr {
				position: absolute;
				height: 8px;
				background-color: #ECF0F1;
				width: 880px;
				bottom: 4.8px;
				border-radius: 5px;
			}

			#scroll-lr>#block {
				display: block;
				width: 150px;
				height: 8px;
				position: absolute;
				border-radius: 5px;
				background-color: #BDC3C7;
				cursor: pointer;
			}

			#scroll-tb {
				position: absolute;
				height: 660px;
				width: 8px;
				background-color: #ECF0F1;
				right: 4.2px;
				border-radius: 5px;
			}

			#scroll-tb>#block {
				display: block;
				width: 8px;
				height: 150px;
				position: absolute;
				border-radius: 5px;
				background-color: #BDC3C7;
				cursor: pointer;
			}
			.bg-primary{
				background-color: #D9EDF7;
				color: #333333;
			}
		</style>
	</head>

	<body>
		<div id="main">
			<p id="head-title">
				<span class="line"></span>
				<span>在施工程</span>
				<span class="line"></span>
			</p>
			<table id="table"></table>
		</div>
		<div id="modal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">嘉利中心2016(工程名称)</h4>
					</div>
					<div class="modal-body" style="height: 680px;padding: 0;overflow: hidden;">
						<div id="scroll-lr">
							<span id="block"></span>
						</div>
						<div id="scroll-tb">
							<span id="block"></span>
						</div>
						<div id="left">
							<div id="tab-a">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th class="text-center" width="60">序号</th>
											<th class="text-center">阶段名称</th>
										</tr>
									</thead>
								</table>
							</div>
							<div id="tab-c">
								<table class="table table-bordered text-center">
									<tbody>
										<!--<tr>
										<td width="60"></td>
										<td>阶段名称</td>
									</tr>-->
										<script type="text/javascript">
											var tr = '';
											for(var i = 1; i <= 30; i++) {
												tr += '<tr class="tr'+i+'">' +
													'<td width="60">' + i + '</td>' +
													'<td>阶段名称' + i + '</td>' +
													'</tr>'
											}
											$('#tab-c tbody').html(tr)
										</script>
									</tbody>
								</table>

							</div>
						</div>
						<div id="right">
							<div id="tab-b">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>1</th>
										</tr>
										<script type="text/javascript">
											var tr = '<tr>';
											for(var i = 1; i <= 90; i++) {
												tr += '<th class="td'+i+'"><div class="w40">' + (i % 30) + '</div></th>'
											}
											tr += '</tr>'
											$("#tab-b thead").html(tr)
										</script>
									</thead>
								</table>
							</div>

							<div id="tab-d">
								<table class="table table-bordered">
									<tbody>

										<script type="text/javascript">
											var tr = '<tr>';
											for(var i = 1; i <= 90; i++) {
												tr += '<td class="td'+i+'"><div class="w40"><span class="mark"></span></div></td>'
											}
											tr += '</tr>'
											for(var i = 1; i <=30; i++) {
												$("#tab-d tbody").append($(tr).addClass('tr'+i+''));
											}
										</script>
									</tbody>
								</table>
							</div>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<!--<button type="button" class="btn btn-primary">保存</button>-->
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<script src="js/jquery.mousewheel.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$('#modal').modal('show')
			var datas = [];
			for(var i = 0; i < 300; i++) {
				if(i % 2 == 0) {
					datas.push({
						"id": (i + 1),
						"gc-name": "嘉利210" + i,
						"xq-name": "天津市嘉利中心210" + i,
						"type": "已开工",
						"start-data": "2018年5月1日",
						"expect-time": "150",
						"jd": parseInt(Math.random() * 100)
					})
				} else {
					datas.push({
						"id": (i + 1),
						"gc-name": "嘉利210" + i,
						"xq-name": "天津市嘉利中心210" + i,
						"type": "待开工",
						"start-data": "",
						"expect-time": "",
						"jd": ""
					})
				}

			}
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
							field: "id",
							title: "序号",
							align: "center",
							valign: "middle",
							sortable: "true"
						},
						{
							field: "gc-name",
							title: "工程名称",
							align: "center",
							valign: "middle",
							sortable: "true"
						},
						{
							field: "xq-name",
							title: "小区名称",
							align: "center",
							valign: "middle",
							sortable: "true"
						},
						{
							field: "type",
							title: "开工状态",
							align: "center",
							valign: "middle",
							sortable: "true"
						},
						{
							field: "start-data",
							title: "开工日期",
							align: "center",
							valign: "middle",
							sortable: "true"
						},
						{
							field: "expect-time",
							title: "预计工期(天)",
							align: "center",
							valign: "middle",
							sortable: "true"
						},
						{
							field: "jd",
							title: "施工进度",
							align: "center",
							valign: "middle",
							formatter: function(value, row, index) { //自定义显示可以写标签哦~
								if(value == "") {
									return ""
								} else {
									return '<div class="progress">' +
										'<div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: ' + value + '%;">' +
										'' + value + '%' +
										'</div>' +
										'</div>'
								}

							},
							sortable: "true"
						},
						{
							title: "操作",
							align: "center",
							valign: "middle",
							formatter: function(value, row, index) { //自定义显示可以写标签哦~
								return ' <button data-toggle="modal" data-target="#modal" type="button" class="btn btn-primary btn-xs">查看详情</button>'
							},
							sortable: "true"
						},
					],
					data: datas,
				});
			});

			$('#scroll-lr>#block').on({
				"mousedown": function(e) {
					var left = parseInt($(this).css("left"));
					var downx = e.pageX;
					var w1 = $('#scroll-lr').width();
					var w2 = $(this).width();
					var w3 = w1 - w2;
					var boxW = $('#right>div').width() - $('#right').width();
					$(this).addClass('bg-000');
					$('#modal').bind("mousemove", function(e) {
						var offleft = e.pageX - downx + left;
						if(offleft >= 0 && offleft <= w3) {
							$('#left').addClass('shadow-right');
							$('#scroll-lr>#block').css('left', offleft);
							$('#right>div').css('left', -(boxW * offleft / w3));
						} else if(offleft > w3) {
							$('#scroll-lr>#block').css('left', w3);
							$('#right>div').css('left', -boxW)
						} else if(offleft < 0) {
							$('#left').removeClass('shadow-right');
							$('#scroll-lr>#block').css('left', 0);
							$('#right>div').css('left', 0)
						}
					})
				}
			})
			var k = $('#scroll-tb').height() - $('#scroll-tb>#block').height(); //
			var g = k;
			//滚动条计数
			$('#scroll-tb>#block').on({
				"mousedown": function(e) {
					var top = parseInt($(this).css("top"));
					var downy = e.pageY;
					var w1 = $('#scroll-tb').height();
					var w2 = $(this).height();
					var w3 = w1 - w2;
					var boxH = $('#tab-a').height() + $('#tab-c').height() - $('#left').height();
					$(this).addClass('bg-000');
					$('#modal').bind("mousemove", function(e) {
						var offtop = e.pageY - downy + top;
						if(offtop >= 0 && offtop <= w3) {
							$('#tab-a,#tab-b').addClass('shadow-bottom')
							$('#scroll-tb>#block').css('top', offtop);
							$('#tab-c,#tab-d').css('top', -(boxH * offtop / w3));
							g = k - offtop
						} else if(offtop > w3) {
							$('#scroll-tb>#block').css('top', w3);
							$('#tab-c,#tab-d').css('top', -boxH);
							g = 0;
						} else if(offtop < 0) {
							$('#tab-a,#tab-b').removeClass('shadow-bottom');
							$('#scroll-tb>#block').css('top', 0);
							$('#tab-c,#tab-d').css('top', 0);
							g = k;
						}
					})
				}
			})
			$('#modal').on({
				"mouseup": function() {
					$('#modal').unbind('mousemove');
					$('#scroll-lr>#block,#scroll-tb>#block').removeClass('bg-000')
				}
			})

			$('#modal').mousewheel(function(event, delta) {
				var dir = delta > 0 ? 'Up' : 'Down';
				var w1 = $('#scroll-tb').height();
				var w2 = $('#scroll-tb>#block').height();
				var w3 = w1 - w2;
				var boxH = $('#tab-a').height() + $('#tab-c').height() - $('#left').height();
				if(dir == 'Up') {
					//					console.log('向上滚动');
					if(g >= k) {
						$('#tab-a,#tab-b').removeClass('shadow-bottom')
						g = k;
					} else {
						g += 10;
					}
				} else {
					//					console.log('向下滚动');
					$('#tab-a,#tab-b').addClass('shadow-bottom')
					if(g <= 0) {
						g = 0
					} else {
						g -= 10;
					}
				}
				$('#scroll-tb>#block').css('top', w3 * (k - g) / k);
				$('#tab-c,#tab-d').css('top', -(boxH * w3 * (k - g) / k / w3));
				return false;

			});
			$('#tab-c tr').hover(function(){
				var c_tr=$(this).attr('class').slice($(this).attr('class').indexOf('tr'));
				$('.'+c_tr+'').addClass('bg-primary');
			},function(){
				$('*').removeClass('bg-primary')
			})
			$('#tab-d td').hover(function(){
				var this_=$(this);
				var class_td=this_.attr('class');
				var class_tr=this_.parents('tr').attr('class');
				var c_td=class_td.slice(class_td.indexOf('td'));
				var c_tr=class_tr.slice(class_tr.indexOf('tr'));
				$('.'+c_td+'').addClass('bg-primary');
				$('.'+c_tr+'').addClass('bg-primary');
			},function(){
				$('*').removeClass('bg-primary')
			})
		</script>
	</body>
</html>