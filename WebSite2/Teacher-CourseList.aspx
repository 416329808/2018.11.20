<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher-CourseList.aspx.cs" Inherits="Teacher_CourseList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>湖北大学成绩管理系统</title>
    </head>
<body>
    <form id="form1" runat="server">
        <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 课程信息列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	

   <div class="mt-20">
      <asp:GridView ID="gvTeacherCourse" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="课程编号,教师编号" Height="104px" Width="1087px" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="课程编号" HeaderText="课程编号" ReadOnly="True" SortExpression="课程编号" />
              <asp:BoundField DataField="课程名" HeaderText="课程名" SortExpression="课程名" />
              <asp:BoundField DataField="教师名" HeaderText="教师名" SortExpression="教师名" />
              <asp:BoundField DataField="开设学院编号" HeaderText="开设学院编号" SortExpression="开设学院编号" />
              <asp:BoundField DataField="课程类型名" HeaderText="课程类型名" SortExpression="课程类型名" />
              <asp:BoundField DataField="教师编号" HeaderText="教师编号" SortExpression="教师编号" ReadOnly="True" />
         
         
                          
          </Columns>
          <EditRowStyle BackColor="#7C6F57" />
          <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
          <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Height="45px"/>
          <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#E3EAEB" />
          <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F8FAFA" />
          <SortedAscendingHeaderStyle BackColor="#246B61" />
          <SortedDescendingCellStyle BackColor="#D4DFE1" />
          <SortedDescendingHeaderStyle BackColor="#15524A" />
      </asp:GridView>
       <asp:Label ID="lblAdcept" runat="server" Text="Label" Visible="False"></asp:Label>
  <table class="table table-border table-bordered table-hover table-bg table-sort">
    
      <tr class="text-c">
        



      </tr>
     
  </table>
  <div id="pageNav" class="pageNav">
       <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetTeacherCourseDataByTeacherID" TypeName="MainDataSetTableAdapters.老师课程视图TableAdapter">
           <SelectParameters>
               <asp:ControlParameter ControlID="lblAdcept" DefaultValue="" Name="教师编号" PropertyName="Text" Type="String" />
           </SelectParameters>
       </asp:ObjectDataSource>
       </div>
</div>
    </form>


    <!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">

</script>
    <p>
        &nbsp;</p>
</body>
</html>
