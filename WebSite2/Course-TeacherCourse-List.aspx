<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course-TeacherCourse-list.aspx.cs" Inherits="Course_TeacherCourseList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="renderer" content="webkit|ie-comp|ie-stand"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
    <title>湖北大学管理员系统</title>
</head>
<body style="height: 423px">
    <form id="form1" runat="server">
       <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 教师管理 <span class="c-gray en">&gt;</span> 教师课程管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="page-container">
	<div class="text-c"> 
        <asp:TextBox ID="txtTeacher" runat="server" Width="181px"></asp:TextBox>
        <asp:Button ID="btnSelectTeacher" runat="server" Text="搜索教师" Width="74px" Height="27px" OnClick="btnSelectTeacher_Click" />
		<asp:TextBox ID="txtCourse" runat="server" Width="181px"></asp:TextBox>
		<asp:Button ID="btnSelectCourse" runat="server" Text="搜索课程" Width="76px" Height="28px" OnClick="btnSelectCourse_Click" />
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="Course-AddTeacherCourse.aspx" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加老师课程信息</a></span> </div>



        <asp:GridView ID="gvTeacherCourse" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="z-index: 1; left: 19px; top: 10px; position: relative; height: 721px; width: 1081px" AutoGenerateColumns="False" DataKeyNames="课程编号,教师编号" OnRowCommand="Gidvew_All_RowCommand" AllowPaging="True" DataSourceID="odsAll">


            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="课程编号" HeaderText="课程编号" ReadOnly="True" SortExpression="课程编号" />
                <asp:BoundField DataField="课程名" HeaderText="课程名" SortExpression="课程名" >
                </asp:BoundField>
                <asp:BoundField DataField="教师编号" HeaderText="教师编号" ReadOnly="True" SortExpression="教师编号" />
                <asp:BoundField DataField="教师名" HeaderText="教师名" SortExpression="教师名" />
                
                <asp:BoundField DataField="开设学院编号" HeaderText="开设学院编号" SortExpression="开设学院编号" />
                <asp:BoundField DataField="开设学院名" HeaderText="开设学院名" SortExpression="开设学院名" />
                
                <asp:BoundField DataField="上课地点" HeaderText="上课地点" SortExpression="上课地点" />
                <asp:BoundField DataField="课程类型编号" HeaderText="课程类型编号" SortExpression="课程类型编号" />
                <asp:BoundField DataField="课程类型名" HeaderText="课程类型名" SortExpression="课程类型名" />
                <asp:BoundField DataField="开课时间" HeaderText="开课时间" SortExpression="开课时间" />
                <asp:BoundField DataField="授课时间" HeaderText="授课时间" SortExpression="授课时间" />
                <asp:BoundField DataField="课程学时" HeaderText="课程学时" SortExpression="课程学时" />
           <asp:TemplateField HeaderText="操作">
                        <EditItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" OnClientClick="return confirm('确定要删除吗？')"/>
                        </ItemTemplate>
                    </asp:TemplateField> </Columns>
            <EditRowStyle BackColor="#f5f5f5" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#f5fafe" Font-Bold="True" ForeColor="Black" HorizontalAlign="Justify" VerticalAlign="Middle" Height="45px" Font-Size="X-Large" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

        </div>

<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/layer.js"></script>
<script type="text/javascript" src="js/H-ui.min.js"></script> 
<script type="text/javascript" src="js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="js/WdatePicker.js"></script> 
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="js/laypage.js"></script>
<script type="text/javascript">
window.onload = (function(){
    // optional set
    pageNav.pre="&lt;上一页";
    pageNav.next="下一页&gt;";
    // p,当前页码,pn,总页面
    pageNav.fn = function(p,pn){$("#pageinfo").text("当前页:"+p+" 总页: "+pn);};
    //重写分页状态,跳到第三页,总页33页
    pageNav.go(1,13);
});
$('.table-sort').dataTable({
	"lengthMenu":false,//显示数量选择 
	"bFilter": false,//过滤功能
	"bPaginate": false,//翻页信息
	"bInfo": false,//数量信息
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,8,9]}// 制定列不参与排序
	]
});
</script>


        <asp:ObjectDataSource ID="odsAll" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="MainDataSetTableAdapters.老师课程TableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_课程编号" Type="String" />
                <asp:Parameter Name="Original_教师编号" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="课程编号" Type="String" />
                <asp:Parameter Name="课程名" Type="String" />
                <asp:Parameter Name="教师编号" Type="String" />
                <asp:Parameter Name="教师名" Type="String" />
                <asp:Parameter Name="开设学院编号" Type="String" />
                <asp:Parameter Name="开设学院名" Type="String" />
                <asp:Parameter Name="上课地点" Type="String" />
                <asp:Parameter Name="课程类型编号" Type="String" />
                <asp:Parameter Name="课程类型名" Type="String" />
                <asp:Parameter Name="开课时间" Type="String" />
                <asp:Parameter Name="授课时间" Type="String" />
                <asp:Parameter Name="课程学时" Type="Int32" />
                <asp:Parameter Name="预留字段1" Type="String" />
                <asp:Parameter Name="预留字段2" Type="String" />
                <asp:Parameter Name="预留字段3" Type="String" />
                <asp:Parameter Name="预留字段4" Type="String" />
                <asp:Parameter Name="预留字段5" Type="String" />
                <asp:Parameter Name="预留字段6" Type="String" />
                <asp:Parameter Name="预留字段7" Type="String" />
                <asp:Parameter Name="预留字段8" Type="String" />
                <asp:Parameter Name="预留字段9" Type="String" />
                <asp:Parameter Name="预留字段10" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="课程名" Type="String" />
                <asp:Parameter Name="教师名" Type="String" />
                <asp:Parameter Name="开设学院编号" Type="String" />
                <asp:Parameter Name="开设学院名" Type="String" />
                <asp:Parameter Name="上课地点" Type="String" />
                <asp:Parameter Name="课程类型编号" Type="String" />
                <asp:Parameter Name="课程类型名" Type="String" />
                <asp:Parameter Name="开课时间" Type="String" />
                <asp:Parameter Name="授课时间" Type="String" />
                <asp:Parameter Name="课程学时" Type="Int32" />
                <asp:Parameter Name="预留字段1" Type="String" />
                <asp:Parameter Name="预留字段2" Type="String" />
                <asp:Parameter Name="预留字段3" Type="String" />
                <asp:Parameter Name="预留字段4" Type="String" />
                <asp:Parameter Name="预留字段5" Type="String" />
                <asp:Parameter Name="预留字段6" Type="String" />
                <asp:Parameter Name="预留字段7" Type="String" />
                <asp:Parameter Name="预留字段8" Type="String" />
                <asp:Parameter Name="预留字段9" Type="String" />
                <asp:Parameter Name="预留字段10" Type="String" />
                <asp:Parameter Name="Original_课程编号" Type="String" />
                <asp:Parameter Name="Original_教师编号" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>


    </form>
</body>
</html>

