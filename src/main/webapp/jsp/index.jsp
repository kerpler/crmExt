<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 引入标签库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!-- 后台主页面，其他为子页面-->
<!DOCTYPE html>
<html>
<head>
<!-- 获取项目名称路径 -->
<%
	pageContext.setAttribute("PATH", request.getContextPath());
%>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>在施工地全程监控</title>
	
  <script type="text/javascript" src="${PATH}/plugins/static/js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="${PATH}/plugins/static/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="${PATH}/plugins/static/css/bootstrap.min.css"/>

  <link rel="stylesheet" href="${PATH}/plugins/static/css/jquery.mCustomScrollbar.min.css">
  <link rel="stylesheet" href="${PATH}/plugins/static/css/custom.css">

  <script type="text/javascript" src="${PATH}/plugins/static/js/bootstrap-treeview.js"></script>
  <link rel="stylesheet" type="text/css" href="${PATH}/plugins/static/css/bootstrap-treeview.css"/>

  <link rel="stylesheet" type="text/css" href="${PATH}/plugins/static/font-awesome-4.7.0/css/font-awesome.min.css"/>
  <style media="screen">
      #sidebar {
          background-color: #2c3e50;
      }
  </style>
</head>
<body>

  <div class="page-wrapper toggled">
    <nav id="sidebar" class="sidebar-wrapper">
      <div class="sidebar-content mCustomScrollbar _mCS_1 mCS-autoHide desktop">
        <div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;">
          <div id="mCSB_1_container" class="mCSB_container" style="position: relative; left: 0px; top: 0px;" dir="ltr">
            <a href="#" id="toggle-sidebar"> <i class="fa fa-bars"></i>
            </a>
            <div class="sidebar-brand">
              <a href="#">欢迎您</a>
            </div>
            <!-- sidebar-header  -->
            <div class="sidebar-search">
              <div>
                <div class="input-group">
                  <input type="text" class="form-control search-menu" placeholder="Search for...">
                  <span class="input-group-addon"> <i class="fa fa-search"></i>
                  </span>
                </div>
              </div>
            </div>
            <!-- sidebar-search  -->
            <div class="sidebar-menu">
              <ul id="tree"></ul>
            </div>
          </div>
      </div>
    </div>


    </nav>
  <!-- sidebar-wrapper  -->
  <main class="page-content">
    <div class="breadcrumbs">
      <ol class="breadcrumb" split="&gt;">
        <li>
          <a href="javascript:void(0)">
            <i class="fa fa-home" aria-hidden="true"></i>
            后台
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
            <i class="fa '. $parents['picon'] .' " aria-hidden="true"></i>
            在施工地清单表
          </a>
        </li>
      </ol>
    </div>
    <div class="container-fluid">
      <iframe src="basestage.jsp" name='main' frameborder="0"  width="100%" scrolling="no" marginheight="0" marginwidth="0" id="iframepage" onload="this.height=100%"></iframe>
    </div>
  </main>
  <!-- page-content" -->
</div>
  <script type="text/javascript">
    $(function () {
      var data =
      [
              {
                text: "基础数据",
                icon: "fa fa-list-alt icon",
                // selectedIcon: "glyphicon glyphicon-stop",
                href: "#node-1",
                // selectable: true,
                id: '00',
                selectable: false,
                showTags:false,
                tags: ['available'],
                nodes:
                [
                  {
                    icon: "fa fa-edit",
                    text: "施工阶段基础表",
                    id: '001',
                    page: 'basestage.jsp',
                    tags: [''],
                  },
                  {
                    icon: "fa fa-edit",
                    text: "施工进度模版清单",
                    id: '002',
                    page: 'page8.jsp',
                    tags: [''],
                  },
                ]
              },
              {
                text: "在施工地",
                icon: "fa fa-list-alt icon",
                // selectedIcon: "glyphicon glyphicon-stop",
                href: "#node-1",
                // selectable: true,
                id: '01',
                selectable: false,
                showTags:false,
                tags: ['available'],
                nodes:
                [
                  {
                    icon: "fa fa-edit",
                    text: "在施工地清单表",
                    id: '011',
                    page: 'projectGant.jsp',
                    tags: [''],
                  },
                ]
              },
      ]
      // return data;

      $('#tree').treeview({
          data: data,         // data is not optional
          levels: 1,
          enableLinks: true,
          showTags:false,
          // showCheckbox: true,
          state: {
            checked: true,
            disabled: true,
            expanded: true,
            selected: true
          }
          // multiSelect: true
      });


        $('#tree').on('nodeSelected', function(event, data) {
          document.getElementById("iframepage").src=data.page;
          if (data.id=="001"){
            $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;基础数据&gt;"+data.text)
          }else if (data.id=="011"){
            $(".breadcrumb").html("<i class='fa fa-home'></i>后台&gt;在施工地&gt;"+data.text)

          }
        });
        // var obj = {};
        // obj.text = "123";
        // $("#btn").click(function (e) {
        //     var arr = $('#tree').treeview('getSelected');
        //     for (var key in arr) {
        //         c.innerHTML = c.innerHTML + "," + arr[key].id;
        //     }
        // })
    })

    // function index1(value,row,index){
    // // alert( "Data Loaded: " + index );
    //   return index+1
    // }
  </script>

  <!-- <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10"> -->
    <!-- <div class="form-group"> -->
        <!-- <label class="control-label" id="regis" for="LoginForm-UserName"></label> 显示部门名称  -->
    <!-- </div> -->
        <!-- <iframe src="/secofficeshow" name='main' id="iframepage" frameborder="0" width="100%" scrolling="no" marginheight="0" marginwidth="0" onLoad="iFrameHeight()"></iframe> -->
        <!-- <iframe src="/secofficeshow" name='main' id="iframepage" frameborder="0" width="100%" scrolling="no" marginheight="0" marginwidth="0" onload="changeFrameHeight()"></iframe> -->

    <!-- <iframe src="/admin/01" name='main' frameborder="0"  width="100%" scrolling="no" marginheight="0" marginwidth="0" id="iframepage" onload="this.height=100"></iframe>  -->
  <!-- </div>   -->


  <script type="text/javascript">
    function reinitIframe(){//http://caibaojian.com/frame-adjust-content-height.html
      var iframe = document.getElementById("iframepage");
      try{
        var bHeight = iframe.contentWindow.document.body.scrollHeight;
        var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
        var height = Math.max(bHeight, dHeight,800);
        iframe.height = height;
       // console.log(height);//这个显示老是在变化
      }catch (ex){
      }
    }
    window.setInterval("reinitIframe()", 200);
  </script>
  <script src="${PATH}/plugins/static/js/jquery.mCustomScrollbar.concat.min.js"></script>
  <script src="${PATH}/plugins/static/js/custom.js"></script>

</body>
</html>
