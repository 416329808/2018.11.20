<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student-password-edit.aspx.cs" Inherits="Student_password_edit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/style_password.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="" />
<script src="js/jquery-2.1.4.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <br /><br /><br />
        <div align="center">
            <asp:Label ID="LblOldPwd" runat="server" Text="请输入旧密码"></asp:Label>
            <asp:TextBox ID="txtOldPwd" type='password' runat="server" ViewStateMode="Disabled" Height="20px" Width="193px"></asp:TextBox>
             <br />
            <asp:RequiredFieldValidator ID="RfvOldPwd" runat="server" ControlToValidate="txtOldPwd" ErrorMessage="请输入旧密码" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
           
            <asp:Label ID="LblNewPwd" runat="server" Text="请输入新密码"></asp:Label>
            <asp:TextBox ID="txtNewPwd" type='password' runat="server" ViewStateMode="Disabled" Height="20px" Width="193px"></asp:TextBox>
             <br />
            <asp:RequiredFieldValidator ID="RfvNew" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="请输入新密码"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revNewPwd" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="请输入6-12位的数字或字母" Height="20px" ValidationExpression="^([a-zA-Z0-9]{6,12})$" Width="250px">请输入6-12位的数字或字母</asp:RegularExpressionValidator>
            <br />

            <asp:Label ID="LblNewPwd2" runat="server" Text="请重复新密码"></asp:Label>
            <asp:TextBox ID="txtNewPwd2" type='password' runat="server" ViewStateMode="Disabled" Height="20px" Width="193px"></asp:TextBox>
             <br />
            <asp:CompareValidator ID="CVNewPwd2" runat="server" ControlToCompare="txtNewPwd" ControlToValidate="txtNewPwd2" ErrorMessage="两次输入的密码不一致"></asp:CompareValidator>
            <br />
            <br />
            <br />
            <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="提交" Height="29px" Width="136px" />
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="MainDataSetTableAdapters.用户密码TableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_用户ID" Type="String" />
                </DeleteParameters>

                <UpdateParameters>
                    <asp:Parameter Name="用户ID" Type="String" />
                    <asp:Parameter Name="密码" Type="String" />

                </UpdateParameters>
            </asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>


