var log = function() {
	console.log.apply(console, arguments)
}

$(function () {

    // 1.初始化Table
    var oTable = new TableInit();
    oTable.Init();

    // 2.初始化Button的点击事件
    var oButtonInit = new ButtonInit();
    oButtonInit.Init();

});


var TableInit = function () {
    var oTableInit = new Object();
    // 初始化Table
    oTableInit.Init = function () {
        $('#tb_item').bootstrapTable({
            url: '/crmExt/Plan/GetItem',         // 请求后台的URL（*）
            method: 'post',                      // 请求方式（*）
            toolbar: '#toolbar',                // 工具按钮用哪个容器
            striped: true,                      // 是否显示行间隔色
            cache: false,                       // 是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   // 是否显示分页（*）
            sortable: true,                     // 是否启用排序
            sortOrder: "asc",                   // 排序方式
            queryParams: oTableInit.queryParams,// 传递参数（*）
            sidePagination: "client",           // 分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                       // 初始化加载第一页，默认第一页
            pageSize: 10,                       // 每页的记录行数（*）
            pageList: [10, 25, 50, 100],        // 可供选择的每页的行数（*）
            search: true,                       // 是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            strictSearch: true,
            showColumns: true,                  // 是否显示所有的列
            showRefresh: true,                  // 是否显示刷新按钮
            minimumCountColumns: 2,             // 最少允许的列数
            clickToSelect: true,                // 是否启用点击选中行
            // height: 500, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "ID",                     // 每一行的唯一标识，一般为主键列
            showToggle: false,                    // 是否显示详细视图和列表视图的切换按钮
            cardView: false,                    // 是否显示详细视图
            detailView: false,                   // 是否显示父子表
            columns: [{
                checkbox: true
            }, {
                field: 'planid',
                title: '标识'
            }, {
                field: 'period',
                title: '整体工期'
            }, {
                field: 'water',
                title: '水电工期'
            }, {
                field: 'floor',
                title: '地采暖工期'
            }, {
            	field: 'middle',
            	title: '中期工期'
            
            }, ]
        });
    };

    // 得到查询的参数
    oTableInit.queryParams = function (params) {
        var temp = {   // 这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: params.limit,   // 页面大小 params.limit
            offset: params.offset,  // 页码params.offset
            period: $("#txt_search_period").val()
        };
        return temp;
    };
    return oTableInit;
};


var ButtonInit = function () {
    var oInit = new Object();
    var postdata = {};

    oInit.Init = function () {
        // 初始化页面上面的按钮事件
    	oInit.add();
    	oInit.edit();
    	oInit.delete();
    	oInit.query();
    }
    
    oInit.query = function () {
    	$("#btn_query").click(function(){
    		log("btn_query")
    		$("#tb_item").bootstrapTable('refresh');
    	});
    }
    
    
    oInit.add = function() {
    	 $('#btn_add').on("click", function () {
             $("#myModal").modal().on("shown.bs.modal", function () {
            	 oInit.save();
             }).on('hidden.bs.modal', function () {
            	 $(this).removeData('bs.modal'); 
             });
         });
    }
    
    oInit.edit = function() {
    	$("#btn_edit").click(function(){
    		/*
			 * var row = $.map($('#tb_item').bootstrapTable('getSelections'),
			 * function (row) { log(row) });
			 */
    		var row = $('#tb_item').bootstrapTable('getSelections');
    		
    		if (row.length != 1) {
    			alert("请选择一行记录！")
    			return false
    		} 
			var data = row[0]
//          var inputs = $("form").find('input')
			$("#txt_planid").val(data.planid)
			$("#txt_planid").attr("readonly","readonly");
			$("#txt_period").val(data.period)
			$("#txt_water").val(data.water)
			$("#txt_floor").val(data.floor)
			$("#txt_middle").val(data.middle)
			
			// $('#myModal').modal("show")
			$("#myModal").modal().on("shown.bs.modal", function () {
				$("#btn_submit").click(function(){
					var data = $('form').serializeArray();
					$.ajax({
				      type:"POST",
				      url:"/crmExt/Plan/EditItem",
				      data: $('form').serialize(),
				      success:function(){
				        location.reload();
				      }
				    });
		        });
	        }).on('hidden.bs.modal', function () {
	        	$("input").removeAttr("readonly");
	        	document.getElementById("form-modal").reset();
	        });
			
			
			

			
            
    		/*
			 * $.ajax({ type:"POST", url:"/crmExt/Item/EditItem", data: {
			 * strJson:JSON.stringify(data) }, data: {id: data.id},
			 * success:function(data){ log("success:", data) location.reload(); }
			 * });
			 */
        });
    }
    
    oInit.delete = function() {
		$("#btn_delete").click(function(){
			
			var row = $('#tb_item').bootstrapTable('getSelections')
    		if (row.length == 0) {
    			alert("请选择要删除的记录！")
    		}
			var ids = []
			for (var i = 0; i < row.length; i++) {
				ids.push(row[i].planid) 
			}	
			log(ids)
// ids = JSON.stringify(ids)
    		$.ajax({
		      type:"POST",
		      url:"/crmExt/Plan/DeleteItem",
// contentType:"application/json",
		      data: { ids:JSON.stringify(ids) },
		      success:function(){
		        location.reload();
		      }
		    });
        });
    }
    
    oInit.save = function() {
		$("#btn_submit").click(function(){
			var data = $('form').serializeArray();
			$.ajax({
		      type:"POST",
		      url:"/crmExt/Plan/AddItem",
		      data: $('form').serialize(),
		      success:function(){
		        location.reload();
		      }
		    });
        });
    }
    
    oInit.check = function() {
    	
    }
    
    
    return oInit;
};
