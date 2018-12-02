<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course-Studentinformation-list.aspx.cs" Inherits="Course_StudentinformationList" %>

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
<title>学生信息管理</title>
</head>
<body>
    <form id="form1" runat="server">
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 学生信息管理 <span class="c-gray en">&gt;</span> 学生信息列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="text-c"> 姓名：
		<asp:TextBox ID="txtNameLike" runat="server" Height="22px" Width="137px"></asp:TextBox>
        <asp:Button ID="btnSelectStu" runat="server" Text="搜索" Height="25px" OnClick="btnSelectStu_Click" Width="68px" />
    </div>
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <a class="btn btn-primary radius" onclick="picture_add('添加图片')" href="Course-Studentinformation-editor.aspx"><i class="Hui-iconfont">&#xe600;</i> 添加学生</a></span> </div>
    
    <asp:GridView ID="gvStudent" runat="server" AutoGenerateColumns="False" DataKeyNames="学号" style="z-index: 1; left: 2px; top: 8px; position: relative; height: 713px; width: 1346px;" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" DataSourceID="odsStudent">
            <AlternatingRowStyle BackColor="White" Font-Italic="False" Font-Size="Large" />
            <Columns>
                <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" SortExpression="学号" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="性别编号" HeaderText="性别编号" SortExpression="性别编号" />
                <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                <asp:BoundField DataField="民族编号" HeaderText="民族编号" SortExpression="民族编号" />
                <asp:BoundField DataField="民族" HeaderText="民族" SortExpression="民族" />
                <asp:BoundField DataField="政治面貌编号" HeaderText="政治面貌编号" SortExpression="政治面貌编号" />
                <asp:BoundField DataField="政治面貌" HeaderText="政治面貌" SortExpression="政治面貌" />
                <asp:BoundField DataField="年龄" HeaderText="年龄" SortExpression="年龄" />
                <asp:BoundField DataField="入学年份" HeaderText="入学年份" SortExpression="入学年份" />
                <asp:BoundField DataField="院系编号" HeaderText="院系编号" SortExpression="院系编号" />
                <asp:BoundField DataField="院系" HeaderText="院系" SortExpression="院系" />
                <asp:BoundField DataField="专业编号" HeaderText="专业编号" SortExpression="专业编号" />
                <asp:BoundField DataField="专业" HeaderText="专业" SortExpression="专业" />
                <asp:BoundField DataField="班级编号" HeaderText="班级编号" SortExpression="班级编号" />
                <asp:BoundField DataField="班级" HeaderText="班级" SortExpression="班级" />
                <asp:BoundField DataField="证件类型编号" HeaderText="证件类型编号" SortExpression="证件类型编号" />
                <asp:BoundField DataField="证件类型" HeaderText="证件类型" SortExpression="证件类型" />
                <asp:BoundField DataField="证件号" HeaderText="证件号" SortExpression="证件号" />
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
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>      
    <asp:ObjectDataSource ID="odsStudent" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetStudentinformation" TypeName="MainDataSetTableAdapters.学生TableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_学号" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="学号" Type="String" />
            <asp:Parameter Name="姓名" Type="String" />
            <asp:Parameter Name="性别编号" Type="String" />
            <asp:Parameter Name="性别" Type="String" />
            <asp:Parameter Name="民族编号" Type="String" />
            <asp:Parameter Name="民族" Type="String" />
            <asp:Parameter Name="政治面貌编号" Type="String" />
            <asp:Parameter Name="政治面貌" Type="String" />
            <asp:Parameter Name="年龄" Type="Int16" />
            <asp:Parameter Name="入学年份" Type="String" />
            <asp:Parameter Name="院系编号" Type="String" />
            <asp:Parameter Name="院系" Type="String" />
            <asp:Parameter Name="专业编号" Type="String" />
            <asp:Parameter Name="专业" Type="String" />
            <asp:Parameter Name="班级编号" Type="String" />
            <asp:Parameter Name="班级" Type="String" />
            <asp:Parameter Name="证件类型编号" Type="String" />
            <asp:Parameter Name="证件类型" Type="String" />
            <asp:Parameter Name="证件号" Type="String" />
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
            <asp:Parameter Name="年龄" Type="Int16" />
            <asp:Parameter Name="入学年份" Type="String" />
            <asp:Parameter Name="院系编号" Type="String" />
            <asp:Parameter Name="院系" Type="String" />
            <asp:Parameter Name="专业编号" Type="String" />
            <asp:Parameter Name="专业" Type="String" />
            <asp:Parameter Name="班级编号" Type="String" />
            <asp:Parameter Name="班级" Type="String" />
            <asp:Parameter Name="证件类型编号" Type="String" />
            <asp:Parameter Name="证件类型" Type="String" />
            <asp:Parameter Name="证件号" Type="String" />
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
            <asp:Parameter Name="Original_学号" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>









</div>

<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/layer.js"></script>
<script type="text/javascript" src="js/H-ui.min.js"></script> 
<script type="text/javascript" src="js/H-ui.admin.js"></script> 
<script type="text/javascript" src="js/WdatePicker.js"></script> 
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="js/laypage.js"></script>
<script type="text/javascript">
    $('.table-sort').dataTable({
        "aaSorting": [[1, "desc"]],//默认第几个排序
        "bStateSave": true,//状态保存
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            { "orderable": false, "aTargets": [0, 8] }// 制定列不参与排序
        ]
    });

    /*图片-添加*/
    function picture_add(title, url) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }

    /*图片-查看*/
    function picture_show(title, url, id) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }

    /*图片-审核*/
    function picture_shenhe(obj, id) {
        layer.confirm('审核文章？', {
            btn: ['通过', '不通过'],
            shade: false
        },
            function () {
                $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="picture_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
                $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
                $(obj).remove();
                layer.msg('已发布', { icon: 6, time: 1000 });
            },
            function () {
                $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="picture_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
                $(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
                $(obj).remove();
                layer.msg('未通过', { icon: 5, time: 1000 });
            });
    }

    /*图片-下架*/
    function picture_stop(obj, id) {
        layer.confirm('确认要下架吗？', function (index) {
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="picture_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下架</span>');
            $(obj).remove();
            layer.msg('已下架!', { icon: 5, time: 1000 });
        });
    }

    /*图片-发布*/
    function picture_start(obj, id) {
        layer.confirm('确认要发布吗？', function (index) {
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="picture_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
            $(obj).remove();
            layer.msg('已发布!', { icon: 6, time: 1000 });
        });
    }

    /*图片-申请上线*/
    function picture_shenqing(obj, id) {
        $(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">待审核</span>');
        $(obj).parents("tr").find(".td-manage").html("");
        layer.msg('已提交申请，耐心等待审核!', { icon: 1, time: 2000 });
    }

    /*图片-编辑*/
    function picture_edit(title, url, id) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }

    /*图片-删除*/
    function picture_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            $.ajax({
                type: 'POST',
                url: '',
                dataType: 'json',
                success: function (data) {
                    $(obj).parents("tr").remove();
                    layer.msg('已删除!', { icon: 1, time: 1000 });
                },
                error: function (data) {
                    console.log(data.msg);
                },
            });
        });
    }
</script>
    </form>
</body>
</html>
