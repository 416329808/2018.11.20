<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course-Systemcontral.aspx.cs" Inherits="System_Control" %>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico" >
<link rel="Shortcut Icon" href="/favicon.ico" />
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
<title>系统管理</title>
    <style type="text/css">
        .auto-style1 {
            width: 383px
        }
        .auto-style2 {
            width: 430px
        }
        .auto-style3 {
            width: 433px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 系统管理 <span class="c-gray en">&gt;</span> 系统设置 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="admin_add('添加管理员','admin-add.html','800','500')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加系统设置<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebConnectionString %>" SelectCommand="SELECT * FROM [DM_选课状态代码表]"></asp:SqlDataSource>
        </a></span>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebConnectionString %>" SelectCommand="SELECT * FROM [DM_打分状态代码表]"></asp:SqlDataSource>
    </div>
	<div class="mt-20">
	<table class="table table-border table-bordered table-bg">
		<thead>
			<tr>
				<th scope="col" colspan="9">系统设置列表</th>
			</tr>
			<tr class="text-c">
				<th class="auto-style3">系统</th>
				<th class="auto-style2">状态</th>
				<th class="auto-style1">操作</th>
			</tr>
		</thead>
		<tbody>
			<tr class="text-c">
				<td class="auto-style3">教师期末打分系统</td>
				<td class="auto-style2">
                    <asp:DropDownList ID="ddlstate_score" runat="server" DataSourceID="SqlDataSource1" DataTextField="状态" DataValueField="状态" >
                        <asp:ListItem Value="1">开启</asp:ListItem>
                        <asp:ListItem Value="0">关闭</asp:ListItem>
                    </asp:DropDownList>
                </td>
				<td class="auto-style1">
                    <asp:Button ID="btnsure_score" runat="server" OnClick="bntsure_score_Click" Text="确定" />
                </td>
			</tr>
			<tr class="text-c">
				<td class="auto-style3">学生选课系统</td>
				<td class="auto-style2">
                    <asp:DropDownList ID="ddlstate_course" runat="server" DataSourceID="SqlDataSource2" DataTextField="状态" DataValueField="状态" >
                        <asp:ListItem Value="1">开启</asp:ListItem>
                        <asp:ListItem Value="0">关闭</asp:ListItem>
                    </asp:DropDownList>
                </td>
				<td class="auto-style1">
                    <asp:Button ID="btnsure_course" runat="server" Text="确定" OnClick="btnsure_course_Click" />
                </td>
			</tr>
		</tbody>
	</table>

</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
</script>
    </form>
</body>
</html>
