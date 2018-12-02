<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin-user-show.aspx.cs" Inherits="Admin_user_show" %>

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
    <link type="text/css" rel="stylesheet" href="css/H-ui.css" />
    <link type="text/css" rel="stylesheet" href="css/H-ui.admin.css" />
    <link type="text/css" rel="stylesheet" href="font/font-awesome.min.css" />
    <!--[if IE 7]>
<link href="http://www.bootcss.com/p/font-awesome/assets/css/font-awesome-ie7.min.css" rel="stylesheet" type="text/css" />
<![endif]-->
    <title>我的信息</title>
    <style type="text/css">
        .auto-style1 {
            height: 36px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">

        <div class="cl pd-20" runat="server" align="center">
            <br />
            <br />
            <div class="pd-20" style="background-color: #efeef0,padding:20px,40px">
                <table class="table" runat="server" cellpadding="10" style="background-color: #efeef0; padding: 30px">
                    <tbody>
                        <tr>
                            <th class="text-r" width="80" align="right">&nbsp;</th>
                            <th class="text-r" width="80" align="right">&nbsp;</th>
                            <td align="left">&nbsp;</td>
                            <td align="left">
                                <asp:Button ID="btn提交" runat="server" OnClick="btn提交_Click" Text="提交修改" />
                            </td>
                        </tr>
                        <tr>
                            <th class="text-r" width="80" align="right">姓名：</th>
                            <td align="left" runat="server" id="name0">
                                <asp:Label ID="Lbl姓名" runat="server"></asp:Label>
                            </td>
                            <th class="auto-style1" width="80" align="right">工号：</th>
                            <td align="left" class="auto-style1">
                                <asp:Label ID="Lbl工号" runat="server" OnDataBinding="Page_Load"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <th class="auto-style1" width="80" align="right">性别：</th>
                            <td align="left" class="auto-style1">
                                <asp:Label ID="Lbl性别" runat="server" Text="Label"></asp:Label>
                            </td>
                            <th class="auto-style1" width="80" align="right">年龄：</th>
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
                            <th class="text-r" align="right">证件类型：</th>
                            <td align="left">
                                <asp:Label ID="Lbl证件类型" runat="server" Text="Label"></asp:Label>
                            </td>
                            <th class="text-r" align="right">证件号：</th>
                            <td align="left">
                                <asp:Label ID="Lbl证件号" runat="server"></asp:Label>
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
        </div>

        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/H-ui.js"></script>
        <script type="text/javascript" src="js/H-ui.admin.js"></script>
        <script>
            var _hmt = _hmt || [];
            (function () {
                var hm = document.createElement("script");
                hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();
            var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
            document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E"));
        </script>
        <asp:ObjectDataSource ID="ods管理员" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="MainDataSetTableAdapters.管理员TableAdapter" UpdateMethod="Update">
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
                <asp:Parameter Name="年龄" Type="Int32" />
                <asp:Parameter Name="证件类型编号" Type="String" />
                <asp:Parameter Name="证件类型名" Type="String" />
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
            <SelectParameters>
                <asp:Parameter Name="工号" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="性别编号" Type="String" />
                <asp:Parameter Name="性别" Type="String" />
                <asp:Parameter Name="民族编号" Type="String" />
                <asp:Parameter Name="民族" Type="String" />
                <asp:Parameter Name="政治面貌编号" Type="String" />
                <asp:Parameter Name="政治面貌" Type="String" />
                <asp:Parameter Name="年龄" Type="Int32" />
                <asp:Parameter Name="证件类型编号" Type="String" />
                <asp:Parameter Name="证件类型名" Type="String" />
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
                <asp:Parameter Name="Original_工号" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>
