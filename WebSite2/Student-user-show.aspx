﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student-user-show.aspx.cs" Inherits="Student_user_show" %>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
<script type="text/javascript" src="http://libs.useso.com/js/respond.js/1.4.2/respond.min.js"></script>
<script type="text/javascript" src="http://cdn.bootcss.com/css3pie/2.0beta1/PIE_IE678.js"></script>
<![endif]-->
<link type="text/css" rel="stylesheet" href="css/H-ui.css"/>
<link type="text/css" rel="stylesheet" href="css/H-ui.admin.css"/>
<link type="text/css" rel="stylesheet" href="font/font-awesome.min.css"/>
<!--[if IE 7]>
<link href="http://www.bootcss.com/p/font-awesome/assets/css/font-awesome-ie7.min.css" rel="stylesheet" type="text/css" />
<![endif]-->
<title>我的信息</title>
    <style type="text/css">
        .auto-style1 {
            width: 206px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div>
           <div class="cl pd-20" style=" background-color:#5bacb6 color:white" align="center">
               <asp:ObjectDataSource ID="ods学生" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="Get_sex" TypeName="MainDataSetTableAdapters.DM_性别代码TableAdapter" UpdateMethod="Update">
                   <DeleteParameters>
                       <asp:Parameter Name="Original_代码" Type="String" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="代码" Type="String" />
                       <asp:Parameter Name="含义" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="含义" Type="String" />
                       <asp:Parameter Name="Original_代码" Type="String" />
                   </UpdateParameters>
               </asp:ObjectDataSource>
    <br/>
	<br/>
       <div class="pd-20">
  <table class="table" cellpadding="10" style="background-color:#efeef0; padding:30px">
    <tbody>
	  <tr>
        <th class="text-r" width="80" align="right">姓名：</th>
        <td align="left">
            <asp:Label ID="Lbl姓名" runat="server" Text="Label"></asp:Label>
          </td>
		<th class="text-r" width="80" align="right">学号：</th>
        <td align="left" class="auto-style1">
            <asp:Label ID="Lbl学号" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="提交" runat="server" OnClick="提交_Click" Text="提交" />
          </td>
      </tr>
      <tr>
        <th class="text-r" width="80" align="right">性别：</th>
        <td align="left">
            <asp:Label ID="Lbl性别" runat="server" Text="Label"></asp:Label>
          </td>
		<th class="text-r" width="80" align="right">年龄：</th>
        <td align="left" class="auto-style1">
            <asp:TextBox ID="txt年龄" runat="server"></asp:TextBox>
          </td>
      </tr>
      <tr>
	    <th class="text-r" align="right">民族：</th>
        <td align="left">
            <asp:Label ID="Lbl民族" runat="server" Text="Label"></asp:Label>
          </td>
        <th class="text-r" align="right">政治面貌：</th>
        <td align="left" class="auto-style1">
            <asp:Label ID="Lbl政治面貌" runat="server" Text="Label"></asp:Label>
          </td>
      </tr>
      <tr>
	    <th class="text-r" align="right">入学年份：</th>
        <td align="left">
            <asp:Label ID="Lbl入学年份" runat="server" Text="Label"></asp:Label>
          </td>
        <th class="text-r" align="right">院系：</th>
        <td align="left" class="auto-style1">
            <asp:Label ID="Lbl院系" runat="server" Text="Label"></asp:Label>
          </td>
      </tr>
      <tr>
        <th class="text-r" align="right">专业：</th>
        <td align="left">
            <asp:Label ID="Lbl专业" runat="server" Text="Label"></asp:Label>
          </td>
		<th class="text-r" align="right">班级：</th>
        <td align="left" class="auto-style1">
            <asp:Label ID="Lbl班级" runat="server" Text="Label"></asp:Label>
          </td>
      </tr>
      <tr>
        <th class="text-r" align="right">证件类型：</th>
        <td align="left">
            <asp:Label ID="Lbl证件类型" runat="server" Text="Label"></asp:Label>
          </td>
		<th class="text-r" align="right">证件号：</th>
        <td align="left" class="auto-style1">
            <asp:Label ID="Lbl证件号" runat="server" Text="Label"></asp:Label>
          </td>
      </tr>
              <tr>
        <th class="text-r" align="right">qq号：</th>
        <td align="left">
            <asp:TextBox ID="txtqq号" runat="server"></asp:TextBox>
          </td>
		<th class="text-r" align="right">手机号：</th>
        <td align="left" class="auto-style1">
            <asp:TextBox ID="txt手机号" runat="server"></asp:TextBox>
          </td>
      </tr>
              <tr>
        <th class="text-r" align="right">邮箱：</th>
        <td align="left">
            <asp:TextBox ID="txt邮箱" runat="server"></asp:TextBox>
          </td>
      </tr>
      
    </tbody>
  </table>
</div>
</div>
    </form>

<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/H-ui.js"></script> 
<script type="text/javascript" src="js/H-ui.admin.js"></script> 
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E"));
</script>
</body>
</html>



