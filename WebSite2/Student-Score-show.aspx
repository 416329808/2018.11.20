<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student-Score-show.aspx.cs" Inherits="Student_Score_show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="Hui-iconfont/1.0.8/iconfont.css"/>
<link rel="stylesheet" type="text/css" href="Hui-iconfont/1.0.8/iconfont.min.css"/>
<link rel="stylesheet" type="text/css" href="css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="css/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 课程相关 <span class="c-gray en">&gt;</span> 学生已选课程 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
        <div class="page-container">
            <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="Course-AddTeacher.aspx" class="btn btn-primary radius"> 总计学分：
                 <asp:Label ID="lblPoint" runat="server" Text="Label"></asp:Label>
                                                                     </a></span> 
                <asp:Label ID="lblAccept" runat="server" Visible="False"></asp:Label>
            </div>
        

            <br />
        <div class="以下为各科成绩展示">
       
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="362px" RepeatColumns="3" Width="1044px" DataSourceID="odsScoreData" DataKeyField="课程编号">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                                            <!-- .col -->
                                        <!-- .row -->
                                    <asp:Label ID="课程编号Label" runat="server" Text='<%# Eval("课程编号") %>' />
                    <br />
                    课程名:
                    <asp:Label ID="课程名Label" runat="server" Text='<%# Eval("课程名") %>' />
                    <br />           
                    教师名:
                    <asp:Label ID="教师名Label" runat="server" Text='<%# Eval("教师名") %>' />
                    <br />
                    <br />
                    课程类型名:
                    <asp:Label ID="课程类型名Label" runat="server" Text='<%# Eval("课程类型名") %>' />
                    <br />
                      课程学分:
                    <asp:Label ID="课程学分1Label" runat="server" Text='<%# Eval("课程学分1") %>' />
                    <br />
                    平时成绩:
                    <asp:Label ID="平时成绩Label" runat="server" Text='<%# Eval("平时成绩") %>' />
                    <br />
                    考试成绩:
                    <asp:Label ID="考试成绩Label" runat="server" Text='<%# Eval("考试成绩") %>' />
                    <br />                  
                    总成绩:
                    <asp:Label ID="总成绩1Label" runat="server" Text='<%# Eval("总成绩1") %>' />
                    <br />
                   

            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
        <asp:ObjectDataSource ID="odsScoreData" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetScoreDataByStudentID" TypeName="MainDataSetTableAdapters.成绩视图TableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblAccept" Name="学号" PropertyName="Text" Type="String" />
            </SelectParameters>
            </asp:ObjectDataSource>
             </div>
             </div>
    </form>
</body>
</html>
