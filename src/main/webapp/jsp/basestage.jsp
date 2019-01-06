<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <!-- <title>MeritMS</title> -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/jquery-2.1.3.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/bootstrap.min.js"></script>
  <!-- <script src="/static/js/bootstrap-treeview.js"></script> -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/jquery.tablesorter.min.js"></script>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/static/css/bootstrap.min.css"/>

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/static/css/bootstrap-table.min.css"/>
  <!-- <link rel="stylesheet" type="text/css" href="/static/css/bootstrap-editable.css"/> -->
  
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/bootstrap-table.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/bootstrap-table-zh-CN.min.js"></script>
  <!-- <script type="text/javascript" src="/static/js/bootstrap-table-editable.min.js"></script> -->
  <!-- <script type="text/javascript" src="/static/js/bootstrap-editable.js"></script> -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/bootstrap-table-export.min.js"></script>

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/static/fex-team-webuploader/css/webuploader.css">
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/fex-team-webuploader/dist/webuploader.min.js"></script>

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/static/font-awesome-4.7.0/css/font-awesome.min.css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/static/js/moment.min.js"></script>
</head>
<body>


<div class="col-lg-12">
<h3>阶段分类基础表</h3>
  <div id="toolbar1" class="btn-group">
        <button type="button" data-name="addButton" id="addButton" class="btn btn-default"> <i class="fa fa-plus">添加</i>
        </button>
        <button type="button" data-name="importButton" id="editButton" class="btn btn-default"> <i class="fa fa-plus">编辑</i>
        </button>
      <!--   <button type="button" data-name="deleteButton" id="deleteButton" class="btn btn-default">
        <i class="fa fa-trash">删除</i>
        </button> -->
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
    /* $("#deleteButton").click(function() {
        var code1="";
        var selectRow=$('#table0').bootstrapTable('getSelections');
        if (selectRow.length<=0) {
          alert("请勾选行！");
          return false;
        }
        var code =$.map(selectRow,function(row){
            code1= row.stageprocessid; 
        })
        // alert(code1); 
        $.ajax({
            type:"POST",
            url:"${pageContext.request.contextPath}/stageController/deleteStage",//servlet文件的名称
            data:{stageprocessid:code1},
            async: false,
            success:function(data,status){
              alert("删除成功");
              location.reload();
             }
        });     
    }) */
    //编辑
    
    $("#editButton").click(function() {
        $('#editmodalTable').modal({
        show:true,
        backdrop:'static'
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

<!-- 添加阶段分类 -->
<div class="container">
  <form class="form-horizontal">
    <div class="modal fade" id="modalTable">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">添加阶段分类</h3>
          </div>
          <div class="modal-body">
            <div class="modal-body-content">        
              <!-- <div class="form-group must">
                <label class="col-sm-3 control-label">分类标识</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="code"></div>
              </div> -->
              <div class="form-group must">
                <label class="col-sm-3 control-label">分类名称</label>
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

<!-- 编辑 -->
<div class="container">
  <form class="form-horizontal">
    <div class="modal fade" id="editmodalTable">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">编辑分类</h3>
          </div>
          <div class="modal-body">
            <div class="modal-body-content">        
              <!-- <div class="form-group must">
                <label class="col-sm-3 control-label">标识</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="code"></div>
              </div> -->
              <div class="form-group must">
                <label class="col-sm-3 control-label">名称</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="editStageprocessname"></div>
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">天数</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="editdays" maxlength="32" placeholder="至多32个字符"></div>
              </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary" onclick="edit()">保存</button>
        </div>
      </div>
    </div>
  </div>
</form>
</div>


<script type="text/javascript">
    function save(){
      // var radio =$("input[type='radio']:checked").val();        
      //var code   = $('#code').val();
      var Stageprocessname   = $('#Stageprocessname').val();
      var days   = $('#days').val();
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/stageController/addStage",
                data: {Stageprocessname:Stageprocessname,days:days},//code:code,
                success:function(data,status){
                  alert("添加成功");
                  location.reload();
                  /* location.replace(document.referrer); */
                 }
            });  
          $('#modalTable').modal('hide');
    }
    //编辑
    function edit(){
          var code2="";
         var selectRow=$('#table0').bootstrapTable('getSelections');
         if (selectRow.length<=0) {
           alert("请勾选行！");
           return false;
         }
         var code =$.map(selectRow,function(row){
             code2= row.stageprocessid; 
         })
            var Stageprocessname   = $('#editStageprocessname').val();
            var days   = $('#editdays').val();
            alert(code2);
            alert(Stageprocessname);
            alert(days); 
               $.ajax({
                  type:"post",
                  url:"${pageContext.request.contextPath}/stageController/editStage",
                  data: {stageprocessid:code2,Stageprocessname:Stageprocessname,days:days},
                  success:function(data,status){
                    alert("修改成功");
                    location.reload();
                   }
              });  
            $('#editmodalTable').modal('hide');
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
                             "stageprocessid": stage[i].stageprocessid,
                             //"code": stage[i].code,
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
                                 }/* ,{
                                   field: 'code',
                                   title: '标识',
                                   sortable:'true',
                                 } */,{
                                   field: 'Stageprocessname',
                                   title: '分类名称',
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

</script>
<!-- ********点击某一行，显示所有ip对应用户名 -->
<!-- onClickRow  click-row.bs.table  row, $element 当用户点击某一行的时候触发，参数包括：
row：点击行的数据，
$element：tr 元素，
field：点击列的 field 名称 -->

<toolbar id="btn_toolbar1" class="toolbar">
<div class="btn-group">
        <button type="button" data-name="addButton1" id="addButton1" class="btn btn-default" data-target="modal"><i class="fa fa-plus" aria-hidden="true"> </i>添加</button>
        <button type="button" data-name="editButton1" id="editButton1" class="btn btn-default" data-target="modal"><i class="fa fa-edit" aria-hidden="true"> </i>编辑</button>
        <button type="button" data-name="deleteButton1" id="deleteButton1" class="btn btn-default" data-target="default"><i class="fa fa-trash" aria-hidden="true"> </i>删除</button>
    </div>
</toolbar>
<!-- data-query-params="queryParams" data-content-type="application/json"-->
<div id="details" style="display:none">
<h3>阶段流程基础表</h3>
<!-- data-url="/admin/category/2" 没有了这个，当然table1表格无法支持刷新了！！！data-show-refresh="true"-->
<table id="table1"
        data-toggle="table"
        data-search="true"
        data-show-toggle="true"
        data-show-columns="true"
        data-toolbar="#btn_toolbar1"
        data-sort-name="ProjectName"
        data-sort-order="desc"
        data-page-size="5"
        data-page-list="[5, 25, 50, All]"
        data-unique-id="id"
        data-pagination="true"
        data-side-pagination="client"
        data-click-to-select="true"
        >
      <thead>        
      <tr>
        <!-- radiobox data-checkbox="true"-->
        <th data-width="10" data-radio="true"></th>
        <th data-formatter="index1">序号</th>
        <!-- <th data-field="detailedprocessid">分类id</th> -->
        <!-- <th data-field="detailedcode">流程标识</th> -->
        <th data-field="detailedstagename">流程名称</th>
        <th data-field="detaileddays">流程天数</th>
      </tr>
    </thead>
</table>
</div>
<!--添加阶段流程  -->
<div class="container">
  <form class="form-horizontal">
    <div class="modal fade" id="modalTable1">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">添加阶段流程</h3>
          </div>
          <div class="modal-body">
            <div class="modal-body-content"> 
              <!-- <div class="form-group must">
                <label class="col-sm-3 control-label">流程标识</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="detailedcode"></div>
              </div> -->
              <div class="form-group must">
                <label class="col-sm-3 control-label">流程名称</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="detailedstagename"></div>
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">流程天数</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="detaileddays" maxlength="32"></div>
              </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary" onclick="save1()">保存</button>
        </div>
      </div>
    </div>
  </div>
</form>
</div>

<!-- 编辑流程 -->
<div class="container">
  <form class="form-horizontal">
    <div class="modal fade" id="editmodalTable1">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">编辑阶段流程</h3>
          </div>
          <div class="modal-body">
            <div class="modal-body-content">        
              <!-- <div class="form-group must">
                <label class="col-sm-3 control-label">标识</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="code"></div>
              </div> -->
              <div class="form-group must">
                <label class="col-sm-3 control-label">流程名称</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="editdetailedstagename"></div> 
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">流程天数</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="editdetaileddays" maxlength="32"></div>
              </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-primary" onclick="edit1()">保存</button>
        </div>
      </div>
    </div>
  </div>
</form>
</div>
<script type="text/javascript">
$(function(){
$("#table0").on("click-row.bs.table",function(e,row,ele){
    $(".info").removeClass("info");
    $(ele).addClass("info");
    rowid=row.stageprocessid;//全局变量
    //alert(rowid);
    rowtitle=row.Stageprocessname
    $("#rowtitle").html("用户详情-"+rowtitle);
    $("#details").show();
    $('#table1').bootstrapTable('refresh', {url:'${pageContext.request.contextPath}/stageController/findStageById?id='+row.stageprocessid});
    
    });
}); 
/**
 * 增删改查
 */
$(document).ready(function() {
    //添加
  $("#addButton1").click(function() {
      $('#modalTable1').modal({
      show:true,
      backdrop:'static'
      });
  })
  //删除
  $("#deleteButton1").click(function() {
      var detailedstageid="";
      var selectRow=$('#table1').bootstrapTable('getSelections');
      if (selectRow.length<=0) {
        alert("请勾选行！");
        return false;
      }
      var detailedstageid1 =$.map(selectRow,function(row){
    	  detailedstageid= row.detailedstageid; 
      })
      var r=confirm("确认是否删除!");
		if (r==true)
		  {
			 $.ajax({
		          type:"POST",
		          url:"${pageContext.request.contextPath}/detailedStageController/delDetailedStage",
		          data:{detailedstageid:detailedstageid},
		          async: false,
		          success:function(data,status){
		            alert("删除成功");
		            location.reload();
		           }
		      });  
		  }
		else
		  {
		  alert("取消删除");
		  }
        
  })
  //编辑
    
    $("#editButton1").click(function() {
        $('#editmodalTable1').modal({
        show:true,
        backdrop:'static'
        });
  })

})
     function save1(){
	   var detailedprocessid= '';
	 var stageprocessid = $.map($('#table0').bootstrapTable('getSelections'),function (stageprocessid) {
		 detailedprocessid= stageprocessid.stageprocessid;
	    });
	 alert(detailedprocessid);
      //var detailedcode   = $('#detailedcode').val();
      var detailedstagename   = $('#detailedstagename').val();
      var detaileddays   = $('#detaileddays').val();
      alert(detailedstagename);
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/detailedStageController/addDetailedStage",
                data: {detailedprocessid:detailedprocessid,detailedstagename:detailedstagename,detaileddays:detaileddays},//detailedcode:detailedcode,
                success:function(data,status){
                  alert("添加成功");
                  // location.reload(); 
                 }
            });  
          $('#modalTable').modal('hide');
        
           window.location.reload();//刷新页面 
    } 
   //编辑
     function edit1(){
           var detailedstageid="";
          var selectRow=$('#table1').bootstrapTable('getSelections');
          if (selectRow.length<=0) {
            alert("请勾选行！");
            return false;
          }
          var detailedstageid1 =$.map(selectRow,function(row){
        	  detailedstageid= row.detailedstageid; 
          })
             var detailedstagename   = $('#editdetailedstagename').val(); 
             var detaileddays   = $('#editdetaileddays').val();
             alert(detailedstageid);
             alert(detailedstagename);
             alert(detaileddays); 
                $.ajax({
                   type:"post",
                   url:"${pageContext.request.contextPath}/detailedStageController/updateDetailedStage",
                   data: {detailedstageid:detailedstageid,detailedstagename:detailedstagename,detaileddays:detaileddays},
                   success:function(data,status){
                     alert("修改成功");
                     location.reload();
                    }
               });  
             $('#editmodalTable').modal('hide');
       }
</script>

</body>
</html>