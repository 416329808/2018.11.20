<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course-Teacherinformation-list.aspx.cs" Inherits="Course_Teacherinformation_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <meta charset="utf-8"/>
<meta name="renderer" content="webkit|ie-comp|ie-stand"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="Hui-iconfont/1.0.8/iconfont.css"/>
<link rel="stylesheet" type="text/css" href="Hui-iconfont/1.0.8/iconfont.min.css"/>
<link rel="stylesheet" type="text/css" href="css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="css/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
    <title>教师信息列表</title>
</head>
<body style="height: 423px">
    <form id="form1" runat="server">
       <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 教师管理 <span class="c-gray en">&gt;</span> 教师信息列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="page-container">
	<div class="text-c"> 
        <asp:TextBox ID="txtSelect" runat="server" Width="181px" Height="20px"></asp:TextBox>
        <asp:Button ID="btnSelectTeacher" runat="server" Text="搜索教师" Height="28px" OnClick="btnSelectTeacher_Click" Width="75px" />
    </div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="Course-AddTeacher.aspx" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加教师信息</a></span> </div>

        <div>
            <asp:GridView ID="gvTeacher" runat="server" AutoGenerateColumns="False" CellPadding="4"  OnRowUpdating="gvTeacher_RowUpdating" style="z-index: 1; left: 5px; top: 10px; position: relative; height: 756px; width: 1278px;" DataKeyNames="工号" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" DataSourceID="odsTeacher">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="工号" HeaderText="工号" ReadOnly="True" SortExpression="工号" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                    <asp:BoundField DataField="性别编号" HeaderText="性别编号" SortExpression="性别编号" />
                    <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                    <asp:BoundField DataField="民族编号" HeaderText="民族编号" SortExpression="民族编号" />
                    <asp:BoundField DataField="民族" HeaderText="民族" SortExpression="民族" />
                    <asp:BoundField DataField="政治面貌编号" HeaderText="政治面貌编号" SortExpression="政治面貌编号" />
                    <asp:BoundField DataField="政治面貌" HeaderText="政治面貌" SortExpression="政治面貌" />
                    <asp:BoundField DataField="院系编号" HeaderText="院系编号" SortExpression="院系编号" />
                    <asp:BoundField DataField="院系" HeaderText="院系" SortExpression="院系" />
                    <asp:BoundField DataField="职称编号" HeaderText="职称编号" SortExpression="职称编号" />
                    <asp:BoundField DataField="职称" HeaderText="职称" SortExpression="职称" />
                    <asp:BoundField DataField="年龄" HeaderText="年龄" SortExpression="年龄" />
                    <asp:BoundField DataField="入职年份" HeaderText="入职年份" SortExpression="入职年份" />
                    <asp:BoundField DataField="证件类型编号" HeaderText="证件类型编号" SortExpression="证件类型编号" />
                    <asp:BoundField DataField="证件类型名" HeaderText="证件类型名" SortExpression="证件类型名" />
                    <asp:BoundField DataField="证件号" HeaderText="证件号" SortExpression="证件号" />
                    <asp:BoundField DataField="qq号" HeaderText="qq号" SortExpression="qq号" />
                    <asp:BoundField DataField="手机号" HeaderText="手机号" SortExpression="手机号" />
                    <asp:BoundField DataField="邮箱" HeaderText="邮箱" SortExpression="邮箱" />
                    
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
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#f5fafe" Font-Bold="True" ForeColor="Black" HorizontalAlign="Justify" VerticalAlign="Middle" Height="45px" Font-Size="X-Large" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
        </div>
        <asp:ObjectDataSource ID="odsTeacher" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="MainDataSetTableAdapters.老师TableAdapter" InsertMethod="Insert" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_工号" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="工号" Type="String" />
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="性别编号" Type="String" />
                <asp:Parameter Name="性别" Type="String" />
                <asp:Parameter Name="民族编号" Type="String" />
                <asp:Parameter Name="民族" Type="String" />
                <asp:Parameter Name="政治面貌编号" Type="String" />
                <asp:Parameter Name="政治面貌" Type="String" />
                <asp:Parameter Name="院系编号" Type="String" />
                <asp:Parameter Name="院系" Type="String" />
                <asp:Parameter Name="职称编号" Type="String" />
                <asp:Parameter Name="职称" Type="String" />
                <asp:Parameter Name="年龄" Type="Int32" />
                <asp:Parameter Name="入职年份" Type="String" />
                <asp:Parameter Name="证件类型编号" Type="String" />
                <asp:Parameter Name="证件类型名" Type="String" />
                <asp:Parameter Name="证件号" Type="String" />
                <asp:Parameter Name="qq号" Type="String" />
                <asp:Parameter Name="手机号" Type="String" />
                <asp:Parameter Name="邮箱" Type="String" />
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
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="性别编号" Type="String" />
                <asp:Parameter Name="性别" Type="String" />
                <asp:Parameter Name="民族编号" Type="String" />
                <asp:Parameter Name="民族" Type="String" />
                <asp:Parameter Name="政治面貌编号" Type="String" />
                <asp:Parameter Name="政治面貌" Type="String" />
                <asp:Parameter Name="院系编号" Type="String" />
                <asp:Parameter Name="院系" Type="String" />
                <asp:Parameter Name="职称编号" Type="String" />
                <asp:Parameter Name="职称" Type="String" />
                <asp:Parameter Name="年龄" Type="Int32" />
                <asp:Parameter Name="入职年份" Type="String" />
                <asp:Parameter Name="证件类型编号" Type="String" />
                <asp:Parameter Name="证件类型名" Type="String" />
                <asp:Parameter Name="证件号" Type="String" />
                <asp:Parameter Name="qq号" Type="String" />
                <asp:Parameter Name="手机号" Type="String" />
                <asp:Parameter Name="邮箱" Type="String" />
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
                <asp:Parameter Name="Original_工号" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="MainDataSetTableAdapters.DM_学院代码TableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_学院代码" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="学院代码" Type="String" />
                <asp:Parameter Name="学院" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="学院" Type="String" />
                <asp:Parameter Name="Original_学院代码" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>

