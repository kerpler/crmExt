<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <!-- <title>MeritMS</title> -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/jquery-2.1.3.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/plugins/static/js/bootstrap-treeview.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/jquery.tablesorter.min.js"></script>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/static/css/bootstrap.min.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/static/css/bootstrap-table.min.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/static/css/bootstrap-editable.css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/bootstrap-table.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/bootstrap-table-zh-CN.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/bootstrap-table-editable.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/bootstrap-editable.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/bootstrap-table-export.min.js"></script>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/static/font-awesome-4.7.0/css/font-awesome.min.css"/>
  <script src="${pageContext.request.contextPath}/plugins/static/js/tableExport.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/moment.min.js"></script>
  <script src="${pageContext.request.contextPath}/plugins/static/js/jquery.form.js"></script>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/static/css/select2.css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/select2.js"></script>
</head>
<body>

<div class="col-lg-12">
<h3>阶段类别基础表</h3>
  <div id="toolbar1" class="btn-group">
        <button type="button" data-name="addButton" id="addButton" class="btn btn-default"> <i class="fa fa-plus">添加</i>
        </button>
        <button type="button" data-name="importButton" id="importButton" class="btn btn-default"> <i class="fa fa-plus">导入</i>
        </button>
        <button type="button" data-name="deleteButton" id="deleteButton" class="btn btn-default">
        <i class="fa fa-trash">删除</i>
        </button>
  </div>
  <table id="table0"
        data-search="true"
        data-show-refresh="true"
        data-show-toggle="true"
        data-show-columns="true"
        data-striped="true"
        data-toolbar="#toolbar1"
        data-query-params="queryParams"
        data-sort-name="code"
        data-sort-order="desc"
        data-page-size="5"
        data-page-list="[5, 25, 50, All]"
        data-unique-id="id"
        data-pagination="true"
        data-side-pagination="client"
        data-single-select="true"
        data-click-to-select="true"
        data-show-export="true"
        >
  </table>

<script type="text/javascript">

        /*数据json*/
        var json =  [{"Id":"1","UserName":"水利","UserStageprocessname":"SL","Lastlogintime":"2016-01-05"},
                     {"Id":"2","UserName":"电力","UserStageprocessname":"DL"},
                     {"Id":"3","UserName":"市政","UserStageprocessname":"CJ"},
                     {"Id":"4","UserName":"建筑","UserStageprocessname":"JG"},
                     {"Id":"5","UserName":"交通","UserStageprocessname":"JT"},
                     {"Id":"6","UserName":"境外","UserStageprocessname":"JW"}];
      
  $(document).ready(function() {
	  //添加
    $("#addButton").click(function() {
        $('#modalTable').modal({
        show:true,
        backdrop:'static'
        });
    })
    //删除
    $("#deleteButton").click(function() {
    	var code1="";
        var selectRow=$('#table0').bootstrapTable('getSelections');
        if (selectRow.length<=0) {
          alert("请勾选行！");
          return false;
        }
        var code =$.map(selectRow,function(row){
        	code1= row.code; 
        })
        /* alert(code1); */
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/stageController/deleteStage",//servlet文件的名称
            data:{code:code1},
            async: false,
            success:function(data,status){
              alert("删除成功");
              location.reload();
             }
        });  	
    })
    //importusers
    $("#importButton").click(function() {
        $('#importusers').modal({
        show:true,
        backdrop:'static'
        });
    })
 
  })

</script>

<!-- 添加用户 -->
<div class="container">
  <form class="form-horizontal">
    <div class="modal fade" id="modalTable">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">添加用户</h3>
          </div>
          <div class="modal-body">
            <div class="modal-body-content">        
              <div class="form-group must">
                <label class="col-sm-3 control-label">标识</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="code"></div>
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">名称</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="Stageprocessname"></div>
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">天数</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="days" maxlength="32" placeholder="至多32个字符"></div>
              </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary" onclick="save()">保存</button>
        </div>
      </div>
    </div>
  </div>
</form>
</div>
<script type="text/javascript">
    function save(){
      // var radio =$("input[type='radio']:checked").val();        
      var code   = $('#code').val();
      var Stageprocessname   = $('#Stageprocessname').val();
      var days   = $('#days').val();
      if (code)
        {  
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/stageController/addStage",
                data: {code:code,Stageprocessname:Stageprocessname,days:days},
                success:function(data,status){
                 /*  alert("添加“"+data+"”成功！(status:"+status+".)"); */
                  alert("添加成功");
                  location.reload();
                  /* location.replace(document.referrer); */
                 }
            });  
        } else{
          alert("标识！");
        }
        // $(function(){$('#myModal').modal('hide')}); 
          $('#modalTable').modal('hide');
        /*   $('#table0').bootstrapTable('refresh', {url:'/admin/user'}); */
          // "/category/modifyfrm?cid="+cid
          // window.location.reload();//刷新页面
    }
  $(function () {
	  var stage = [];
	  var datas = [];
	  window.onload=function (){
          $.ajax({
                 url:"${pageContext.request.contextPath}/stageController/findStage",//servlet文件的名称
                 dataType:"json",
                 type:"POST",
                 async: false,
                 success:function(data){
                     stage = data;
                     for (var i = 0, len = stage.length; i < len; i++) {
                         datas.push({
                             "id": (i + 1),
                             "code": stage[i].code,
                             "Stageprocessname": stage[i].stageprocessname,
                             "days": stage[i].days,
                         })
                         
                       };
                       $(function() {
                           $('#table0').bootstrapTable({
                               idField: 'Id',
                              // url: '/admin/user',
                               // striped: "true",
                               sortOrder: "asc", 
                               columns: [
                                 {
                                   radio: 'true',
                                   width: '10'
                                 },
                                 {
                                   // field: 'Number',
                                   title: '序号',
                                   formatter:function(value,row,index){
                                   return index+1
                                   }
                                 },{
                                   field: 'code',
                                   title: '标识',
                                   sortable:'true',
                                 },{
                                   field: 'Stageprocessname',
                                   title: '名称',
                                 },{
                                   field: 'days',
                                   title: '天数',
                                 }
                               ],
                           data: datas,
                       })
                    })
                  }
			})
	  }
  })
  function index1(value,row,index){
    return index+1
  }

  function localDateFormatter(value) {
    return moment(value, 'YYYY-MM-DD').format('YYYY-MM-DD');
  }
  // 改变点击行颜色
  $(function(){
     // $("#table").bootstrapTable('destroy').bootstrapTable({
     //     columns:columns,
     //     data:json
     // });
     $("#table0").on("click-row.bs.table",function(e,row,ele){
         $(".info").removeClass("info");
         $(ele).addClass("info");
         rowid=row.Id;//全局变量
         rowtitle=row.Stageprocessname
         $("#rowtitle").html("用户详情-"+rowtitle);
         $("#details").show();
         $('#table1').bootstrapTable('refresh', {url:'/admin/user/'+row.Id});
     });
  });
    </script>

<!-- onClickRow  click-row.bs.table  row, $element 当用户点击某一行的时候触发，参数包括：
row：点击行的数据，
$element：tr 元素，
field：点击列的 field 名称 -->
<script type="text/javascript">
function format_status(status,row,index) {
  if(status == 1){
    return '显示'
  }else if(status == 2){
    return  '隐藏'
  }else if(status == 0){
    return  '禁止'
  }
}

  // ******试验提交选择的表格************
  $("#submitButton1").click(function() {
    var selectRow3=$('#table1').bootstrapTable('getSelections');
    // var obj = selectRow3.parseJSON();
    // var obj = jQuery.parseJSON(selectRow3);
    console.log(selectRow3[0].Code);
    if (selectRow3.length<1){
      alert("请先勾选目录！");
      return;
    }
    var obj = JSON.stringify(selectRow3);
    alert(selectRow3);
    alert(obj);
    console.log(obj);
    // var ids=$.map(selectRow3,function(row){
    //     return row.Id;
    //   })
    // alert(ids);
    var ids="";
    for(var i=0;i<selectRow3.length;i++){
      if(i==0){
        ids=selectRow3[i].Id;
      }else{
        ids=ids+","+selectRow3[i].Id;
      }
        
    }
    $.ajax({
      type:"post",
      url:"/project/category/addcategory",
      data: {rows:selectRow3},
      success:function(data,status){
        alert("添加“"+data+"”成功！(status:"+status+".)");
      }
    });  
  })

</script>

</body>
</html>