<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>在施工程</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/less.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
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

        .head-title {
            margin-top: 20px;
            line-height: 50px;
            font-size: 1.8em;
            position: relative;
            text-align: center;
        }

        .head-title>.line {
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
            /* line-height: 35px; */
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
            height: 900px;
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
            width: 900px;
            overflow: hidden;
            border-right: 1px solid #DDDDDD;
            border-bottom: 1px solid #DDDDDD;
            height: 900px;
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
        <%  
         String customersno = request.getParameter("customersno"); 
        %>
         <p>您的姓名是：  
            <%=customersno %>  
        </p>  
        <button id="demo" class="btn btn-default" type="submit">Button</button>
    <div id="main">
        <div class="row">
            <p class='head-title'>
                <span class="line"></span>
                <span>进度查看</span>
                <span class="line"></span>
            </p>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">总进度</h3>
                    </div>
                    <div class="panel-body">
                        标准进度：
                        <div class="progress">
                            <div class="progress-bar progress-bar-success" style="width: 35%">
                                <span>半包10天</span>
                            </div>
                            <div class="progress-bar progress-bar-warning progress-bar-striped" style="width: 20%">
                                <span>主材7天</span>
                            </div>
                            <div class="progress-bar progress-bar-danger" style="width: 10%">
                                <span>家电7天</span>
                            </div>
                        </div>
                        实际进度：
                        <!-- <div class="progress">
                                <div class="progress-bar progress-bar-success" style="width: 35%">
                                    <span class="">35% Complete (success)</span>
                                </div>
                                <div class="progress-bar progress-bar-warning progress-bar-striped" style="width: 20%">
                                    <span class="sr-only">20% Complete (warning)</span>
                                </div>
                                <div class="progress-bar progress-bar-danger" style="width: 10%">
                                    <span class="sr-only">10% Complete (danger)</span>
                                </div>
                            </div> -->
                        <div class="">
                            <ul class="nav nav-pills nav-justified step step-progress" data-step="3">
                                <li>
                                    <a>半包<span class="caret"></span></a>
                                </li>
                                <li>
                                    <a>主材<span class="caret"></span></a>
                                </li>
                                <li>
                                    <a>家电<span class="caret"></span></a>
                                </li>
                                <li>
                                    <a>软装<span class="caret"></span></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">阶段进度</h3>
                    </div>
                    <div class="panel-body">
                        <table id="tab" class="table table-bordered">
                            <tr id="tr-1">
                                <th>序号</th>
                                <th>阶段名称</th>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script type="text/javascript">
        var log = function() {
            console.log.apply(console, arguments)
        }

        function bsStep(i) {
            $('.step').each(function() {
                var a, $this = $(this);
                if (i > $this.find('li').length) {
                    a = $this.find('li').length;
                } else if (i == undefined && $this.data('step') == undefined) {
                    a = 1
                } else if (i == undefined && $this.data('step') != undefined) {
                    a = $(this).data('step');
                } else {
                    a = i
                }
                $(this).find('li').removeClass('active');
                $(this).find('li:lt(' + a + ')').addClass('active');
            })
        }
        $(function() {
            bsStep();
            //bsStep(i) i 为number 可定位到第几步 如bsStep(2)/bsStep(3)
        })


        // Date.prototype.Format = function(fmt) {
        //     var o = {
        //         "M+": this.getMonth() + 1, //月份
        //         "d+": this.getDate(), //日
        //         "h+": this.getHours(), //小时
        //         "m+": this.getMinutes(), //分
        //         "s+": this.getSeconds(), //秒
        //         "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        //         "S": this.getMilliseconds() //毫秒
        //     };
        //     if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        //     for (var k in o)
        //         if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        //     return fmt;
        // }
        //
        //
        // var dateStage = function(start, end) {
        //     var s = new Date(start)
        //     var e = new Date(end)
        //     var dateArr = [s]
        //     while (s <= e) {
        //         dateArr.push(s)
        //     }
        //     log(dateArr)
        //
        // }
        // dateStage('2018-11-10', '2018-11-20')


        var days = function(year) {
            var dayArr = []
            for (var mon = 1; mon <= 12; mon++) {
                for (var day = 1; day <= 31; day++) {
                    if(mon == 2) {
                        if(year % 4 == 0){
                            if(day == 30) {
                                break
                            }
                        } else {
                            if(day == 29){
                                break
                            }
                        }
                    }
                    if ((day == 31) && (mon == 4 || mon == 6 || mon == 9 || mon == 11)) {
                        break
                    }
                    d = mon + '/' + day
                    dayArr.push(d)
                }
            }
            return dayArr
        }

        // 日期天数
        var day = days(2018).slice(0,31)
        // 阶段数
        var stage = [
            {
                id: 'BA',
                name: '基础',
                sd: 0,
                ed: 10,
                class:'progress-bar progress-bar-success',
                style:'width: 100%',
            },
            {
                id: 'MA',
                name: '半包',
                sd: 10,
                ed: 22,
                class:'progress-bar progress-bar-warning progress-bar-striped',
                style:'width: 30%',

            },
            {
                id: 'PA',
                name: '主材',
                sd: 22,
                ed: 31,
                class:'progress-bar progress-bar-danger',
                style:'width: 50%',

            },

        ]
        // 添加日期表头
        var addth = function(tr) {
            var th = ''
            for (var i = 0; i < day.length ; i++) {
                th += '<th>' + day[i] + '</th>'
            }
            $(tr).append(th)
        }
        addth('#tr-1')


        // 添加阶段记录行
        var addtr = function(table) {
            var tr = ''
            for (var i = 0; i < stage.length; i++) {
                // var td = '<td colspan="' + day + '"><div class="progress"><div/></td>'
                // var td = ''
                // for(var j = 0; j < day.length ; j++) {
                //     td = '<td>' + day[j] + '</td>'
                // }
                var name = stage[i].name
                var id = stage[i].id
                var dstart = stage[i].sd
                var dend = stage[i].ed
                var dclass = stage[i].class
                var dstyle = stage[i].style
                var dsum = day.length
                var d1 = day.slice(0, dstart).length
                var d2 = day.slice(dstart, dend).length
                var d3 = day.slice(dend).length
                //log(d1, d2, d3)

                if(d1 == 0) {
                    td1 = ''
                } else {
                    td1 = '<td colspan="'+d1+'"></td>'
                }
                td2 = '<td colspan="'+d2+'"><div class="progress"><div class="'+ dclass +'" style="' + dstyle + '"><div/><div/></td>'
                if(d3 == 0) {
                    td3 = ''
                } else {
                    td3 = '<td colspan="'+d3+'"></td>'
                }

                var no = i + 1
                tr = '<tr id="tr-' + id + '"><td>' + no + '</td>' + '<td>' + name + '<button class="btn btn-link btn-click-' + id + '"><span class="caret"></span></button></td>' + td1 + td2 + td3 + '</tr>'
                log(i,tr)
                $(table).append(tr)

                for(j = 1; j <= 3; j++){
                    var tr = ''
                    tr += '<tr class="tr-step tr-step-'+id+'"><td></td>' + '<td>详细阶段' + j + '</td></tr>'
                    $(table).append(tr)
                }


            }


        }
        addtr('#tab')


        // var btnck = document.querySelectorAll('#btn-click-BA')
        // for (var k = 0; k < btnck.length; k++) {
        //     bt = btnck[k]
        //     bt.addEventListener('click', function(){
        //                 //addtrtr('#tr-BA')
        //                 $('.tr-step-BA').toggle()
        //             }
        //     )
        // }

        $('.tr-step').hide()

        $('.btn-click-BA').click(function(){
            $('.tr-step-BA').toggle()
        })
        $('.btn-click-MA').click(function(){
            $('.tr-step-MA').toggle()
        })
        $('.btn-click-PA').click(function(){
            $('.tr-step-PA').toggle()
        })

        var addtrtr = function(table) {
            $(table).after('<tr><td>12123</td></tr>')
        }


    </script>
</body>

</html>