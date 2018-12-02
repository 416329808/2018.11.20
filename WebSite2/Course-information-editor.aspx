<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course-information-editor.aspx.cs" Inherits="Course_information_editor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>课程管理</title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
        
        &nbsp;&nbsp;
         <asp:Label ID="LblCourseID" runat="server" Text="课程编号 :"></asp:Label>
        <asp:TextBox ID="TxtCourseID" runat="server" Height="25px" Width="400px"></asp:TextBox>
            
        <p>
            &nbsp;&nbsp;
            <asp:Label ID="LblCourseName" runat="server" Text="课程名称 :"></asp:Label>
            <asp:TextBox ID="TxtCourseName" runat="server" Height="25px" Width="400px"></asp:TextBox>
        </p>
        &nbsp;&nbsp;
        <asp:Label ID="LblCourseCredit" runat="server" Text="课程学分 :"></asp:Label>
        <asp:TextBox ID="TxtCourseCredit" runat="server" Height="25px" Width="400px"></asp:TextBox>
        <p>
            <asp:Label ID="LblCourseTypes" runat="server" Text="课程类型名 :"></asp:Label>
            <asp:DropDownList ID="DropCourseType" runat="server" Height="25px" Width="400px">
                 <asp:ListItem Selected="True">----------------------请选择--------------------</asp:ListItem>
                    <asp:ListItem>通识教育必修</asp:ListItem>
                    <asp:ListItem>学科基础必修</asp:ListItem>
                    <asp:ListItem>专业选修</asp:ListItem>
                    <asp:ListItem>专业必修</asp:ListItem>
                    <asp:ListItem>公共选修</asp:ListItem>
            </asp:DropDownList>
        </p>
        &nbsp;&nbsp;
        <asp:Label ID="LblCourseCollege" runat="server" Text="开设学院 :"></asp:Label>
        <asp:DropDownList ID="DropCourseCollege" runat="server" Height="25px" Width="400px">
            <asp:ListItem Selected="True">--------------------请选择学院------------------</asp:ListItem>
                    <asp:ListItem>体育学院</asp:ListItem>
                    <asp:ListItem>力学与航空航天学院</asp:ListItem>
                    <asp:ListItem>化学化工学院</asp:ListItem>
                    <asp:ListItem>历史文化学院</asp:ListItem>
                    <asp:ListItem>哲学学院</asp:ListItem>
                    <asp:ListItem>商学院</asp:ListItem>
                    <asp:ListItem>国际教育学院</asp:ListItem>
                    <asp:ListItem>外国语学院</asp:ListItem>
                    <asp:ListItem>岳麓书院</asp:ListItem>
                    <asp:ListItem>广播影视艺术学院</asp:ListItem>
                    <asp:ListItem>建筑学院</asp:ListItem>
                    <asp:ListItem>政法与公共管理学院</asp:ListItem>
                    <asp:ListItem>教育学院</asp:ListItem>
                    <asp:ListItem>教育科学研究院</asp:ListItem>
                    <asp:ListItem>数学与计算机科学学院</asp:ListItem>
                    <asp:ListItem>文学院</asp:ListItem>
                    <asp:ListItem>机械与汽车学院</asp:ListItem>
                    <asp:ListItem>材料科学与工程学院</asp:ListItem>
                    <asp:ListItem>楚才学院</asp:ListItem>
                    <asp:ListItem>物理学与电子技术学院</asp:ListItem>
                    <asp:ListItem>生命科学学院</asp:ListItem>
                    <asp:ListItem>电气与信息工程学院</asp:ListItem>
                    <asp:ListItem>职业技术学院</asp:ListItem>
                    <asp:ListItem>艺术学院</asp:ListItem>
                    <asp:ListItem>资源环境学院</asp:ListItem>
        </asp:DropDownList>
        <p>
            </p>
        &nbsp;&nbsp;
        <asp:Label ID="LblCourseTime" runat="server" Text="课程课时 :"></asp:Label>
        <asp:TextBox ID="TxtCourseTime" runat="server" Height="25px" Width="400px"></asp:TextBox>
        <p>
            &nbsp;&nbsp;
            <asp:Label ID="LblCourseDescribe" runat="server" Text="课程描述 :"></asp:Label>
            <asp:TextBox ID="TxtCourseDescribe" runat="server" Height="25px" Width="400px"></asp:TextBox>
        </p>
        &nbsp;&nbsp;
        <asp:Label ID="Lblimage_upload" runat="server" Text="图片上传 :"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="400px" />
            <asp:Label ID="lblInfo" runat="server"></asp:Label>
        <p>
            <asp:Image ID="Image1" runat="server" Visible="true" Height="114px" style="margin-bottom: 16px" Width="156px" />
            <asp:Button ID="btnPreview" runat="server" OnClick="btnPreview_Click" Text="预览" />
            <asp:Button ID="Button_Submit" runat="server" Height="26px" Text="提交" Width="109px" OnClick="Button_Submit_Click1" />
        </p>
           </div> 
    </form>
</body>
</html>