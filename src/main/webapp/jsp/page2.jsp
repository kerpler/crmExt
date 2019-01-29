<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在施工程</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap-table.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/plugins/bootstrap/css/less.css" />
<script
	src="${pageContext.request.contextPath}/plugins/bootstrap/js/jquery.min.js"
	type="text/javascript" charset="utf-8"></script>
<!--<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>-->
<!--<script src="http://www.jq22.com/jquery/1.7.2/jquery.min.js"></script>-->
<script
	src="${pageContext.request.contextPath}/plugins/bootstrap/js/jquery.min.js"
	type="text/javascript" charset="utf-8"></script>
<script
	src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"
	type="text/javascript" charset="utf-8"></script>
<script
	src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap-table.js"
	type="text/javascript" charset="utf-8"></script>
<script
	src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap-table-zh-CN.js"
	type="text/javascript" charset="utf-8"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap-select/2.0.0-beta1/css/bootstrap-select.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://cdn.bootcss.com/bootstrap-select/2.0.0-beta1/js/bootstrap-select.min.js"></script>
<script
	src="https://cdn.bootcss.com/moment.js/2.23.0/moment-with-locales.min.js"></script>
<link
	href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<script
	src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
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

#tab-a, #tab-b, #tab-c, #tab-d {
	position: absolute;
	/*background-color: white;*/
}

#tab-a, #tab-c {
	width: 300px;
}

#tab-a th, #tab-b th, #tab-c td, #tab-d td {
	padding: 0;
	line-height: 35px;
}

#tab-a table, #tab-b table {
	margin-bottom: 0;
}

#tab-a, #tab-b {
	z-index: 10;
	background-color: white;
}

#tab-c, #tab-d {
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

.bg-primary {
	background-color: #D9EDF7;
	color: #333333;
}
</style>
</head>

<body>
	<div id="main">
		<!-- <p id="head-title">
			<span class="line"></span> <span>在施工程</span> <span class="line"></span>
		</p> -->
		<div class="panel panel-default">
			<div class="panel-heading">在施工程</div>
			<div class="panel-body">
				<form id="formSearch" class="form-horizontal">
					<div class="form-group" style="margin-top: 10px">
						<label class="control-label col-sm-1" for="txt_search_cno">客户编号</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="txt_search_cno">
						</div>
						<label class="control-label col-sm-1" for="txt_search_cname">客户姓名</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="txt_search_cname">
						</div>
						<label class="control-label col-sm-1" for="txt_search_ctel">客户电话</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="txt_search_ctel">
						</div>
						<label class="control-label col-sm-1" for="txt_search_caddr">客户地址</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="txt_search_caddr">
						</div>
						<label class="control-label col-sm-1" for="txt_search_cdesi">设计师</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="txt_search_cdesi">
						</div>
						<label class="control-label col-sm-1" for="txt_search_csup">监理</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="txt_search_csup">
						</div>
						<label class="control-label col-sm-1" for="txt_search_cfor">工长</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="txt_search_cfor">
						</div>
						<label class="control-label col-sm-1" for="txt_search_workday">工期</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="txt_search_workday">
						</div>
						<label class="control-label col-sm-1" for="txt_search_status">状态</label>
						<div class="col-sm-2">
							<select id="txt_search_status" class="selectpicker form-control">
								<option value="">请选择</option>
								<option value="整体竣工">整体竣工</option>
								<option value="半包完主材未完">半包完主材未完</option>
								<option value="主材完半包未签黄本">主材完半包未签黄本</option>
								<option value="有问题">有问题(延迟)</option>
								<option value="退单">退单</option>
								<option value="进行中">进行中</option>
							</select>
						</div>
						<label class="control-label col-sm-1" for="txt_search_isma">有无主材</label>
						<div class="col-sm-2">
							<select id="txt_search_isma" class="selectpicker form-control">
								<option value="">请选择</option>
								<option value="有">有</option>
								<option value="无">无</option>
							</select>
						</div>
						
						<label class="control-label col-sm-1" for="txt_search_startopen">开工时间开始</label>
						<div class="col-sm-2">
							<div class='input-group date' id='datetimepicker1'>
								<input type='text' class="form-control" id="txt_search_startopen" />
								<span class="input-group-addon">
									<span class="glyphicon glyphicon-calendar"></span> 
								</span>
							</div>
						</div>

						<label class="control-label col-sm-1" for="txt_search_startend">开工时间结束</label>
						<div class="col-sm-2">
							<div class='input-group date' id='datetimepicker2'>
								<input type='text' class="form-control" id="txt_search_startend" />
								<span class="input-group-addon">
									<span class="glyphicon glyphicon-calendar"></span> 
								</span>
							</div>
						</div>
						<label class="control-label col-sm-1" for="txt_search_process">实际进度</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="txt_search_process">
						</div>
						<div class="col-sm-1" style="text-align: right;">
							<button type="button" style="margin-left: 50px" id="btn_query"
								class="btn btn-primary">查询</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<table id="table"></table>
	</div>


	<script
		src="${pageContext.request.contextPath}/plugins/bootstrap/js/jquery.mousewheel.js"
		type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		var log = function() {
			console.log.apply(console, arguments)
		}
		//$('#modal').modal('show')
		$(function() {
			$('#table')
					.bootstrapTable(
							{
								method : 'post',
								url : '${pageContext.request.contextPath}/crmConstruction/findPageCon',
								cache : true,
								//height : 580,
								striped : true,
								pagination : true,
								paginationLoop : false, //设置为 true 启用分页条无限循环的功能。
								//showPaginationSwitch:true,//是否显示 数据条数选择框
								uniqueId : "id",
								// 					search: true,
								showColumns : false,
								showRefresh : false,
								showExport : false,
								exportTypes : [ 'csv', 'txt', 'xml' ],
								// 					search: true,
								// 					clickToSelect: true,
								pageSize : 10,
								pageNumber : 1,
								pageList : [ 10, 20, 50, 100, ],
								//contentType: "application/x-www-form-urlencoded",
								sidePagination : 'server',
								//传递参数（*）
								queryParamsType : "",
								queryParams : function(params) {
									var params = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
										// 									            limit : this.limit, // 页面大小
										// 								    	        offset : this.offset, // 页码
										pageNumber : this.pageNumber,
										pageSize : this.pageSize,
										customersno : $("#txt_search_cno")
												.val(),
										customersname : $("#txt_search_cname")
												.val(),
										customerstel : $("#txt_search_ctel")
												.val(),
										address : $("#txt_search_caddr").val(),
										designername : $("#txt_search_cdesi")
												.val(),
										foremanfn : $("#txt_search_cfor").val(),
										supervisionfn : $("#txt_search_csup")
												.val(),
										startdayopen : $(
												"#txt_search_startopen").val(),
										startdayend : $("#txt_search_startend")
												.val(),
										workday : $("#txt_search_workday")
												.val(),
										isma : $("#txt_search_isma").val(),
										status : $("#txt_search_status").val(),
										process : $("#txt_search_process")
												.val(),
									}
									return params
								},
								responseHandler : function(res) {
									if (res) {
										return {
											"rows" : res.list,
											"total" : res.total
										}
									} else {
										return {
											"rows" : [],
											"total" : 0
										}
									}
								},
								columns : [
										{
											field : "id",
											title : "序号",
											align : "center",
											valign : "middle",
											// 							sortable: "true"
											formatter : function(value, row,
													index) {
												return index + 1;
											},
										},
										{
											field : "customersno",
											title : "客户编号",
											align : "center",
											valign : "middle",
										// 							sortable: "true"
										},
										{
											field : "customersname",
											title : "业主",
											align : "center",
											valign : "middle",
										// 							sortable: "true"
										},
										{
											field : "customerstel",
											title : "电话",
											align : "center",
											valign : "middle",
											// 	sortable: "true"
											formatter : function(value, row,
													index) {
												value = value.replace(value
														.slice(3, 8), '*****')
												return value
											},
										},
										{
											field : "address",
											title : "地址",
											align : "center",
											valign : "middle",
										// 							sortable: "true"
										},
										{
											field : "designername",
											title : "设计师",
											align : "center",
											valign : "middle",
										// 							sortable: "true"
										},
										{
											field : "foremanfn",
											title : "工长",
											align : "center",
											valign : "middle",
										// 							sortable: "true"
										},
										{
											field : "supervisionfn",
											title : "监理",
											align : "center",
											valign : "middle",
										},
										{
											field : "startday",
											title : "开工时间",
											align : "center",
											valign : "middle",
										},
										{
											field : "endday",
											title : "完工时间",
											align : "center",
											valign : "middle",
											formatter : function(value, row,
													index) {
												if (row.workday != null) {
													var end = addDay(row.workday,row.startday)
													end = end.getFullYear() + '-' + (end.getMonth() + 1)+ '-' + end.getDate()	
													return end
												} else {
													return
												}		
											},
										},
										{
											field : "workday",
											title : "工期",
											align : "center",
											valign : "middle",
										},
										{
											field : "isma",
											title : "有无主材",
											align : "center",
											valign : "middle",
										},
										{
											field : "status",
											title : "状态",
											align : "center",
											valign : "middle",
											formatter: function(value, row, index){
												if(value==''){
					                                thisStr='';
					                            }else if(value=='整体竣工'){
					                                thisStr='<span style="color:#808080">整体竣工</span>';
					                            }else if(value=='半包完主材未完'){
					                                thisStr='<span style="color:#EE9A00">半包完主材未完</span>';
					                            }else if(value=='主材完半包未签黄本'){
					                                thisStr='<span style="color:#00ccff">主材完半包未签黄本</span>';
					                            }else if(value=='有问题'){
					                                thisStr='<span style="color:#D7D718">有问题</span>';
					                            }else if(value=='退单'){
					                                thisStr='<span style="color:#ff3300">退单</span>';
					                            }else if(value=='进行中'){
					                                thisStr='<span style="">进行中</span>';
					                            }
												return thisStr
											},
										},
										{
											field : "process",
											title : "实际进度",
											align : "center",
											valign : "middle",
											formatter : function(value, row,
													index) { //自定义显示可以写标签哦~
												if (value == "") {
													return ""
												} else {
													return '<div class="progress">'
															+ '<div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: '
															+ value
															+ '%;">'
															+ ''
															+ value
															+ '%'
															+ '</div>'
															+ '</div>'
												}

											},
										// 							sortable: "true"
										}, {
											field : "operation",
											title : "操作",
											align : "center",
											valign : "middle",
											events : operateEvents,
											formatter : operateFormatter,

										}, ],
							// 					data: datas,
							});
		});

		/*var queryParams = function (params) {
		    var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
		        limit : this.limit, // 页面大小
		        offset : this.offset, // 页码
		        pageNumber : this.pageNumber,
		        pageSize : this.pageSize,

		    };
		    return temp;
		};
		 var responseHandler = function(res){
		    //在ajax获取到数据，渲染表格之前，修改数据源
		    var nres = [];
		    nres.push({total:res.total,rows:res.rows});
		    return nres[0];
		} */

		$('#scroll-lr>#block').on({
			"mousedown" : function(e) {
				var left = parseInt($(this).css("left"));
				var downx = e.pageX;
				var w1 = $('#scroll-lr').width();
				var w2 = $(this).width();
				var w3 = w1 - w2;
				var boxW = $('#right>div').width() - $('#right').width();
				$(this).addClass('bg-000');
				$('#modal').bind("mousemove", function(e) {
					var offleft = e.pageX - downx + left;
					if (offleft >= 0 && offleft <= w3) {
						$('#left').addClass('shadow-right');
						$('#scroll-lr>#block').css('left', offleft);
						$('#right>div').css('left', -(boxW * offleft / w3));
					} else if (offleft > w3) {
						$('#scroll-lr>#block').css('left', w3);
						$('#right>div').css('left', -boxW)
					} else if (offleft < 0) {
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
		$('#scroll-tb>#block').on(
				{
					"mousedown" : function(e) {
						var top = parseInt($(this).css("top"));
						var downy = e.pageY;
						var w1 = $('#scroll-tb').height();
						var w2 = $(this).height();
						var w3 = w1 - w2;
						var boxH = $('#tab-a').height() + $('#tab-c').height()
								- $('#left').height();
						$(this).addClass('bg-000');
						$('#modal').bind(
								"mousemove",
								function(e) {
									var offtop = e.pageY - downy + top;
									if (offtop >= 0 && offtop <= w3) {
										$('#tab-a,#tab-b').addClass(
												'shadow-bottom')
										$('#scroll-tb>#block').css('top',
												offtop);
										$('#tab-c,#tab-d').css('top',
												-(boxH * offtop / w3));
										g = k - offtop
									} else if (offtop > w3) {
										$('#scroll-tb>#block').css('top', w3);
										$('#tab-c,#tab-d').css('top', -boxH);
										g = 0;
									} else if (offtop < 0) {
										$('#tab-a,#tab-b').removeClass(
												'shadow-bottom');
										$('#scroll-tb>#block').css('top', 0);
										$('#tab-c,#tab-d').css('top', 0);
										g = k;
									}
								})
					}
				})
		$('#modal').on({
			"mouseup" : function() {
				$('#modal').unbind('mousemove');
				$('#scroll-lr>#block,#scroll-tb>#block').removeClass('bg-000')
			}
		})

		/* $('#modal').mousewheel(function(event, delta) {
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

		}); */
		$('#tab-c tr').hover(
				function() {
					var c_tr = $(this).attr('class').slice(
							$(this).attr('class').indexOf('tr'));
					$('.' + c_tr + '').addClass('bg-primary');
				}, function() {
					$('*').removeClass('bg-primary')
				})
		$('#tab-d td').hover(function() {
			var this_ = $(this);
			var class_td = this_.attr('class');
			var class_tr = this_.parents('tr').attr('class');
			var c_td = class_td.slice(class_td.indexOf('td'));
			var c_tr = class_tr.slice(class_tr.indexOf('tr'));
			$('.' + c_td + '').addClass('bg-primary');
			$('.' + c_tr + '').addClass('bg-primary');
		}, function() {
			$('*').removeClass('bg-primary')
		})

		window.operateEvents = {
			"click .btn-look" : function(e, value, row, index) {
				var cno = row.customersno
				window.location.href = 'projectGant.jsp?customersno=' + cno;
			},
			"click .btn-look2" : function(e, value, row, index) {
				var cno = row.customersno
				window.location.href = 'progant.jsp?customersno=' + cno;
			}
		}
		var operateFormatter = function(value, row, index) { //自定义显示可以写标签哦~
			return [
					//             	        '<button class="btn-look btn btn-primary btn-sm active" type="button" singleSelected=true>查看1</button>',
					'<button class="btn-look2 btn btn-primary btn-sm active" type="button" singleSelected=true>查看</button>', ]
					.join('');
		}

		$("#btn_query").click(function() {
			$("#table").bootstrapTable('refresh');
		});

		$('#datetimepicker1').datetimepicker({
			format : 'YYYY-MM-DD',
			locale : moment.locale('zh-cn'),
		});

		$('#datetimepicker2').datetimepicker({
			format : 'YYYY-MM-DD',
			locale : moment.locale('zh-cn'),
		});

		function addDay(dayNumber, date) {
			var date = new Date(date);
			var ms = dayNumber * (1000 * 60 * 60 * 24)
			var newDate = new Date(date.getTime() + ms);
			return newDate;
		}

	</script>
</body>
</html>