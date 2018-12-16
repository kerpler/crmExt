<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

    <head>
        <meta charset="UTF-8">
        <title>新建工程</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css" />
        <script src="${pageContext.request.contextPath}/plugins/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
        <style type="text/css">
            #main {
                width: 1600px;
                height: 860px;
                /*border: 1px solid;*/
                margin: auto;
                padding: 20px;

            }
            
            td {
                background: #F7F7F9;
            }
            
            .td-pd0 {
                padding: 0 !important;
                background: #ffffff;
                width: 400px;
                /*box-sizing: border-box !important;*/
            }
            
            .td-pd0>div {
                width: 100%;
                height: 100%;
                padding: 8px;
                text-align: left;
            }
            
            .td-pd0>div:focus {
                box-shadow: 0px 0px 0px 2px #A6C7FF inset;
                /*border: 1px solid #A6C7FF;*/
            }
        </style>
    </head>

    <body>
        <div id="main">
            <table class="table table-bordered text-center">
                <tr>
                    <th colspan="6" class="text-center" style="font-size: 1.8em;">新建工程</th>
                </tr>
                <tr>
                    <td>客户姓名</td>
                    <td class="td-pd0">
                        <div contenteditable="true"></div>
                    </td>
                    <td>客户电话</td>
                    <td class="td-pd0">
                        <div contenteditable="true"></div>
                    </td>
                    <td>客户编号</td>
                    <td class="td-pd0">
                        <div contenteditable="true"></div>
                    </td>
                </tr>
                <tr>
                    <td>小区地址</td>
                    <td class="td-pd0" colspan="3">
                        <div contenteditable="true"></div>
                    </td>
                    <td>房屋面积</td>
                    <td class="td-pd0">
                        <div contenteditable="true"></div>
                    </td>
                </tr>
                <tr>
                    <td>设计师</td>
                    <td class="td-pd0">
                        <div contenteditable="true"></div>
                    </td>
                    <td>部门</td>
                    <td class="td-pd0">
                        <div contenteditable="true"></div>
                    </td>
                    <td>联系方式</td>
                    <td class="td-pd0">
                        <div contenteditable="true"></div>
                    </td>
                </tr>
                <tr>
                    <td>监理</td>
                    <td class="td-pd0">
                        <div contenteditable="true"></div>
                    </td>
                    <td>部门</td>
                    <td class="td-pd0">
                        <div contenteditable="true"></div>
                    </td>
                    <td>联系方式</td>
                    <td class="td-pd0">
                        <div contenteditable="true"></div>
                    </td>
                </tr>
                <tr>
                    <td>工长</td>
                    <td class="td-pd0">
                        <div contenteditable="true"></div>
                    </td>
                    <td>联系方式</td>
                    <td class="td-pd0" colspan="3">
                        <div contenteditable="true"></div>
                    </td>
                </tr>
                <tr>
                    <td>活动套餐</td>
                    <td class="td-pd0" colspan="5">
                        <div>
                            <label class="radio-inline"><input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">308套餐</label>
                            <label class="radio-inline"><input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">408套餐</label>
                            <label class="radio-inline"><input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">1680套餐</label>
                            <label class="radio-inline"><input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">爱家基金</label>
                            <label class="radio-inline"><input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">xxx</label>
                            <label class="radio-inline"><input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">xxx</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>预计工期</td>
                    <td class="td-pd0">
                        <div contenteditable="true"></div>
                    </td>
                    <td>开工状态</td>
                    <td class="td-pd0">
                        <div>
                            <label class="radio-inline"><input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" onclick="$('.a').show()">立即开工</label>
                            <label class="radio-inline"><input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2" onclick="$('.a').hide()">待开工</label>
                        
                        </div>
                    </td>
                    <td class="a" style="display: none;">开工日期</td>
                    <td class="td-pd0 a" style="display: none;">
                        <div contenteditable="true"></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <button type="button" class="btn btn-primary">保存</button>
                    </td>
                </tr>
            </table>
            <p>保存后在《在施工地》菜单中添加一条工地记录</p>
            <p>单选立即开工，显示开工日期；否则隐藏</p>
            <p>在施工地中记录有两种种状态1.待开工；2.已开工</p>
        </div>
        <script src="${pageContext.request.contextPath}/plugins/bootstrap/js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
        
    </body>

</html>