<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher-Score.aspx.cs" Inherits="Teacher_Score" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>湖北大学成绩管理系统</title>
    <link rel="stylesheet" type="text/css" href="css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="css/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 20px;
            top: 10px;
            position: relative;
            height: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 期末打分   <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
            
            <br />
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
             <ContentTemplate>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成绩比例：
                 <asp:DropDownList ID="ddl_ratio" runat="server" Height="25px" Width="85px"  >
                        <asp:ListItem>1:9</asp:ListItem>
                        <asp:ListItem>2:8</asp:ListItem>
                        <asp:ListItem>3:7</asp:ListItem>
                        <asp:ListItem>4:6</asp:ListItem>
                        <asp:ListItem>5:5</asp:ListItem>
                        <asp:ListItem>6:4</asp:ListItem>
                        <asp:ListItem>7:3</asp:ListItem>
                        <asp:ListItem>8:2</asp:ListItem>
                        <asp:ListItem>9:1</asp:ListItem>
                    </asp:DropDownList> 
                 
         
                    <asp:GridView ID="gv_score" runat="server" AutoGenerateColumns="False"  Width="1050px" DataKeyNames="课程编号,学号" DataSourceID="odsScore" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="4" ForeColor="white" GridLines="None" CssClass="auto-style1" >
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="课程编号" HeaderText="课程编号" SortExpression="课程编号" ReadOnly="True" />
                            <asp:BoundField DataField="课程名" HeaderText="课程名" SortExpression="课程名" />
                            <asp:BoundField DataField="学号" HeaderText="学号" SortExpression="学号" ReadOnly="True" />
                            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                            <asp:BoundField DataField="班级名" HeaderText="班级名" SortExpression="班级名" />
                            <asp:BoundField DataField="课程类型名" HeaderText="课程类型名" SortExpression="课程类型名" />                          
                         <asp:TemplateField HeaderText="平时成绩">
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_normalscore" Text='<%#Eval("平时成绩")%>' 
 runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                    <asp:RangeValidator ID="rv_nscore" runat="server" ControlToValidate="txt_normalscore" EnableClientScript="False" ErrorMessage="分数在0~100之间！" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="期末成绩">
                                <ItemTemplate>
                                    <asp:TextBox ID="txt_testscore" Text='<%#Eval("考试成绩")%>' runat="server" AutoPostBack="True" OnTextChanged="txt_testscore_TextChanged"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="总成绩">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_score" Text='<%#Eval("总成绩")%>' runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="调整比例">
                                <ItemTemplate>
                                    <asp:Button ID="btn_sure" runat="server" OnClick="btn_sure_Click" Text="调整" BorderStyle="None" ForeColor="#000066" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" Height="45px" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
   
                    &nbsp;
                    <asp:ObjectDataSource ID="odsScore" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetScoreByTeacherIDAndCourseID" TypeName="MainDataSetTableAdapters.成绩视图TableAdapter">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblAcept" Name="课程编号" PropertyName="Text" Type="String" />
                            <asp:SessionParameter Name="教师编号" SessionField="Users02" Type="String" />
                        </SelectParameters>
            </asp:ObjectDataSource>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p align="center">
                    <asp:Button ID="but_registor" runat="server" Height="30px" Text="暂存" Width="50px" OnClick="but_registor_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="but_submit" runat="server" Height="30px" Text="提交" Width="50px" OnClick="but_submit_Click" />
                    <asp:Label ID="lblAcept" runat="server" Text="Label" Visible="False"></asp:Label>
            </p>
                </ContentTemplate>
                 </asp:UpdatePanel>      
               
       
        
        
            <%--</asp:UpdatePanel>--%>
        </div>
    </form>
</body>
</html>

