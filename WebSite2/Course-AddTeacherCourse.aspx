<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course-AddTeacherCourse.aspx.cs" Inherits="Course_AddTeacherCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
        <br />
        &nbsp;&nbsp;
         <asp:Label ID="LblCourseID" runat="server" Text="课程编号 :"></asp:Label>
        <asp:TextBox ID="TxtCourseID" runat="server" Height="25px" Width="400px"></asp:TextBox>
            
        <p>
            &nbsp;&nbsp;
            <asp:Label ID="LblCourseName" runat="server" Text="课程名称 :"></asp:Label>
            <asp:TextBox ID="TxtCourseName" runat="server" Height="25px" Width="400px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="LblTeacherID" runat="server" Text="授课老师编号 :"></asp:Label>
            <asp:TextBox ID="TxtTeacherID" runat="server" Height="20px" Width="381px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="LblTeacherName" runat="server" Text="授课老师名 :"></asp:Label>
            <asp:TextBox ID="TxtTeacherName" runat="server" Height="23px" Width="347px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="LblCourseTime" runat="server" Text="课程时间 :"></asp:Label>
            <asp:DropDownList ID="DropCourseTime" runat="server" Height="24px" Width="97px">
                 <asp:ListItem Selected="True">-请选择-</asp:ListItem>
                    <asp:ListItem>周一</asp:ListItem>
                    <asp:ListItem>周二</asp:ListItem>
                    <asp:ListItem>周三</asp:ListItem>
                    <asp:ListItem>周四</asp:ListItem>
                    <asp:ListItem>周五</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;
        <asp:DropDownList ID="DropCourseTime2" runat="server" Height="24px" Width="131px">
            <asp:ListItem Selected="True">----请选择----</asp:ListItem>
                    <asp:ListItem>一二节</asp:ListItem>
                    <asp:ListItem>三四节</asp:ListItem>
                    <asp:ListItem>六七节</asp:ListItem>
                    <asp:ListItem>八九节</asp:ListItem>
                    <asp:ListItem>十十一节</asp:ListItem>
        </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="LblCourseType" runat="server" Text="课程类型 :"></asp:Label>
            <asp:DropDownList ID="DropCourseType" runat="server" DataSourceID="odsCourseType" DataTextField="含义" DataValueField="代码" style="z-index: 1; left: 6px; top: 5px; position: relative; height: 25px; width: 88px;">
            </asp:DropDownList>
            <asp:ObjectDataSource ID="odsCourseType" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="MainDataSetTableAdapters.dm_课程类型代码TableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_代码" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="代码" Type="String" />
                    <asp:Parameter Name="含义" Type="String" />
                    <asp:Parameter Name="排序" Type="Int32" />
                    <asp:Parameter Name="是否启用" Type="String" />
                    <asp:Parameter Name="备注" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="含义" Type="String" />
                    <asp:Parameter Name="排序" Type="Int32" />
                    <asp:Parameter Name="是否启用" Type="String" />
                    <asp:Parameter Name="备注" Type="String" />
                    <asp:Parameter Name="Original_代码" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </p>
        <p>
            <asp:Label ID="LblCollege" runat="server" Text="开设学院 :"></asp:Label>
            <asp:DropDownList ID="DropCollege" runat="server" DataSourceID="odsCollege" DataTextField="学院" DataValueField="学院代码" style="z-index: 1; left: 6px; top: 5px; position: relative; height: 25px; width: 88px;">
            </asp:DropDownList>
            <asp:ObjectDataSource ID="odsCollege" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="MainDataSetTableAdapters.DM_学院代码TableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_学院代码" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="学院代码" Type="String" />
                    <asp:Parameter Name="学院" Type="String" />
                    <asp:Parameter Name="排序" Type="Int32" />
                    <asp:Parameter Name="是否启用" Type="String" />
                    <asp:Parameter Name="备注" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="学院" Type="String" />
                    <asp:Parameter Name="排序" Type="Int32" />
                    <asp:Parameter Name="是否启用" Type="String" />
                    <asp:Parameter Name="备注" Type="String" />
                    <asp:Parameter Name="Original_学院代码" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </p>
        <p>
            <asp:Label ID="LblTeacherBook" runat="server" Text="课程学分 :"></asp:Label>
            <asp:TextBox ID="TxtPoint" runat="server" Height="23px" Width="286px"></asp:TextBox>
            <asp:RangeValidator ID="RVPoint" runat="server" ControlToValidate="TxtPoint" ErrorMessage="请输入0-10之间的学分" MaximumValue="10" MinimumValue="0" Type="Double"></asp:RangeValidator>
        </p>
        <p>
           <asp:Label ID="LblClassroom" runat="server" Text="上课地点 :"></asp:Label>
           <asp:DropDownList ID="Classroom" runat="server" Height="24px" Width="124px">
            <asp:ListItem Selected="True">----请选择----</asp:ListItem>
                    <asp:ListItem>教3</asp:ListItem>
                    <asp:ListItem>教4</asp:ListItem>
                    <asp:ListItem>教5</asp:ListItem>
                    <asp:ListItem>通识学院</asp:ListItem>
           </asp:DropDownList>&nbsp;
           <asp:TextBox ID="TxtClassroom" runat="server" Height="16px" Width="90px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFVClassRoom" runat="server" ControlToValidate="TxtClassroom" ErrorMessage="上课地点不能为空"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="LblStartTime" runat="server" Text="开课时间 :"></asp:Label>
            <asp:DropDownList ID="ddlStartTime" runat="server">
                <asp:ListItem>2017-2018-1</asp:ListItem>
                <asp:ListItem>2017-2018-2</asp:ListItem>
                <asp:ListItem>2018-2019-1</asp:ListItem>
                <asp:ListItem>2018-2019-2</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="LblStartTimeTip" runat="server" ForeColor="Gray" Text="例：2018-2019-1表示2018-2019学年第一学期"></asp:Label>
        </p>
        <p>
        &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="课程学时 :"></asp:Label>
        <asp:TextBox ID="TxtCourseTimes" runat="server" Height="25px" Width="252px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFVCourseTime" runat="server" ControlToValidate="TxtCourseTimes" ErrorMessage="课程学时不能为空"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RvCourseTimes" runat="server" ControlToValidate="TxtCourseTimes" ErrorMessage="课程学时应该在0-100之间" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
        </p>
        <p>
        <asp:Button ID="Button_Submit" runat="server" Height="26px" Text="添加" Width="109px" OnClick="Button_Submit_Click1" />
            <span><a href="Course-TeacherCourse-List.aspx"> 返回</a></span>
            <asp:Label ID="LblTip" runat="server"></asp:Label>
        </p>
        </div>
    </form>
</body>
</html>

