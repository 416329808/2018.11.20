<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course-Studentinformation-editor.aspx.cs" Inherits="Course_Studentinfo_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生信息管理</title>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Lbl_StudentID" runat="server" Text="学号:" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="Txt_StudentID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_StudentIDWarning" runat="server" ControlToValidate="Txt_StudentID" ErrorMessage="学号不能为空"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RevSId" runat="server" ControlToValidate="Txt_StudentID" ErrorMessage="请输入第一位不为0的15位的学号" ValidationExpression="^([1-9]\d{14})$"></asp:RegularExpressionValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lbl_StudentName" runat="server" Text="姓名：" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="Txt_StudentName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_StudentName" runat="server" ControlToValidate="Txt_StudentName" ErrorMessage="姓名不能为空"></asp:RequiredFieldValidator>
            <br />
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lbl_StudentSex" runat="server" Text="性别：" Font-Size="Large"></asp:Label>
            <asp:DropDownList ID="Ddl_StudentSex" runat="server">
                <asp:ListItem>男</asp:ListItem>
                <asp:ListItem>女</asp:ListItem>
            </asp:DropDownList>
           &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lbl_StudentAge" runat="server" Text="年龄：" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="Txt_StudentAge" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_StudentAge" runat="server" ControlToValidate="Txt_StudentAge" ErrorMessage="年龄不能为空"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RVStudent" runat="server" ControlToValidate="Txt_StudentAge" ErrorMessage="请输入正确的年龄" MaximumValue="150" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lbl_StudentTimeOfEnrollment" runat="server" Text="入学年份：" Font-Size="Large"></asp:Label>
            <asp:DropDownList ID="Ddl__StudentTimeOfEnrollment" runat="server">
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
            </asp:DropDownList>
           &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lbl_StudentCollege" runat="server" Text="院系：" Font-Size="Large"></asp:Label>
            <asp:DropDownList ID="Ddl__StudentCollege" runat="server" AutoPostBack="True" DataSourceID="Sds_StudentCollege" DataTextField="学院" DataValueField="学院代码">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Sds_StudentCollege" runat="server" ConnectionString="<%$ ConnectionStrings:WebConnectionString %>" SelectCommand="SELECT [学院代码], [学院] FROM [DM_学院代码]">
            </asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lbl_StudentMajor" runat="server" Text="专业：" Font-Size="Large"></asp:Label>
            &nbsp;<asp:DropDownList ID="Ddl_StudentMajor" runat="server" DataSourceID="Sds_StudentMajor" DataTextField="专业名称" DataValueField="专业ID" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Sds_StudentMajor" runat="server" ConnectionString="<%$ ConnectionStrings:WebConnectionString %>" SelectCommand="SELECT [专业ID], [专业名称], [所属学院代码] FROM [DM_专业代码表] WHERE ([所属学院代码] = @所属学院代码)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Ddl__StudentCollege" Name="所属学院代码" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
             &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lbl_StudentClass" runat="server" Text="班级：" Font-Size="Large"></asp:Label>
            <asp:DropDownList ID="Ddl_StudentClass" runat="server" DataSourceID="Sds_StudentClass" DataTextField="班级名称" DataValueField="班级ID" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Sds_StudentClass" runat="server" ConnectionString="<%$ ConnectionStrings:WebConnectionString %>" SelectCommand="SELECT [班级名称], [班级ID], [所属专业ID], [所属学院代码] FROM [DM_班级代码] WHERE ([所属专业ID] = @所属专业ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Ddl_StudentMajor" Name="所属专业ID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lbl_DocumentType" runat="server" Text="证件类型：" Font-Size="Large"></asp:Label>
            <asp:DropDownList ID="Ddl_DocumentType" runat="server" DataSourceID="Sds_StudentDocumentType" DataTextField="含义" DataValueField="代码">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Sds_StudentDocumentType" runat="server" ConnectionString="<%$ ConnectionStrings:WebConnectionString %>" SelectCommand="SELECT [代码], [含义] FROM [DM_证件类型代码]"></asp:SqlDataSource>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lbl__StudentDocument" runat="server" Text="证件号：" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="Txt_StudentDocument" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFV_StudentDocument" runat="server" ControlToValidate="Txt_StudentDocument" ErrorMessage="证件号不能为空"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RevSCer" runat="server" ControlToValidate="Txt_StudentDocument" ErrorMessage="请输入正确的身份证号" ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lbl_StudentQQ" runat="server" Font-Size="Large" Text="QQ号："></asp:Label>
            <asp:TextBox ID="Txt_StudentQQ" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revSqq" runat="server" ControlToValidate="Txt_StudentQQ" ErrorMessage="请输入正确的qq号" ValidationExpression="[1-9][0-9]{4,9}"></asp:RegularExpressionValidator>
           <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lbl_StudentPhone" runat="server" Font-Size="Large" Text="手机号："></asp:Label>
            <asp:TextBox ID="Txt_StudentPhone" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="REVSTel" runat="server" ControlToValidate="Txt_StudentPhone" ErrorMessage="请输入正确的电话号码" ValidationExpression="^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$"></asp:RegularExpressionValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lbl_StudentEMail" runat="server" Font-Size="Large" Text="邮箱："></asp:Label>
            <asp:TextBox ID="Txt_StudentEMail" runat="server"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="REVSMail" runat="server" ControlToValidate="Txt_StudentEMail" ErrorMessage="请输入正确的邮箱" ValidationExpression="^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="But_Submit" runat="server" Text="提交" Font-Size="Large" OnClick="But_Submit_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Lbl_Submit" runat="server"></asp:Label>
            <br />

            
        </div>
    </form>
</body>
</html>

