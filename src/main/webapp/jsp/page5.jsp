<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>统计图表</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap-table.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/less.css" />
		<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
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
		</style>
	</head>

	<body>
		<div id="main">
			<p id="head-title">
				<span class="line"></span>
				<span>统计图表</span>
				<span class="line"></span>
			</p>
			<div id="container" style="width: 100%;height: 700px;"></div>
		</div>
		
		<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
		<!--<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>-->
		<!--<script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>-->
		<script src="echarts.common.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			var dom = document.getElementById("container");
			var myChart = echarts.init(dom);
			var app = {};
			option = null;
			app.title = '折柱混合';

			option = {	
				tooltip: {
					trigger: 'axis',
					axisPointer: {
						type: 'cross',
						crossStyle: {
							color: '#999'
						}
					}
				},
				toolbox: {
					feature: {
						dataView: {
							show: true,
							readOnly: false
						},
						magicType: {
							show: true,
							type: ['line', 'bar']
						},
						restore: {
							show: true
						},
						saveAsImage: {
							show: true
						}
					}
				},
				legend: {
					data: ['天津总部签单数量', '石家庄分公司签单数量', '签单金额']
				},
				xAxis: [{
					type: 'category',
					data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
					axisPointer: {
						type: 'shadow'
					}
				}],
				yAxis: [{
						type: 'value',
						name: '数量',
						min: 0,
						max: 50,
						interval: 5,
						axisLabel: {
							formatter: '{value} 单'
						}
					},
					{
						type: 'value',
						name: '金额',
						min: 0,
						max: 100,
						interval: 10,
						axisLabel: {
							formatter: '{value} 万'
						}
					}
				],
				series: [{
						name: '天津总部签单数量',
						type: 'bar',
						data: [2.0, 4, 7.0, 23, 25, 20, 13, 2, 3, 20, 6, 3]
					},
					{
						name: '石家庄分公司签单数量',
						type: 'bar',
						data: [2, 5, 9.0, 26, 28, 7, 17, 18, 8, 18.8, 6.0, 2]
					},
					{
						name: '签单金额',
						type: 'line',
						yAxisIndex: 1,
						data: [50, 55, 57, 57, 100, 85, 87, 92, 52, 54, 46, 100]
//						data: [20, 2.2, 3.3, 4.5, 6.3, 10.2, 20.3, 23.4, 23.0, 16.5, 12.0, 6.2]
					}
				]
			};;
			if(option && typeof option === "object") {
				myChart.setOption(option, true);
			}
		</script>
	</body>

</html>