<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student-Elective.aspx.cs" Inherits="Student_Elective" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     
        <div style="float:left">
            &nbsp;&nbsp;可选课程
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
           <asp:GridView ID="gvElective" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="课程编号,教师编号" DataSourceID="odsElectivedata" Height="155px" Width="674px" CellPadding="4" ForeColor="#333333" GridLines="None" >
               <AlternatingRowStyle BackColor="White" />
                <Columns>
                  <asp:BoundField DataField="课程编号" HeaderText="课程编号" ReadOnly="True" SortExpression="课程编号" />
            
                        <asp:BoundField DataField="课程名" HeaderText="课程名" SortExpression="课程名" />
                        <asp:BoundField DataField="教师名" HeaderText="教师名" SortExpression="教师名" />
                    <asp:BoundField DataField="开设学院名" HeaderText="开设学院名" SortExpression="开设学院名" />                 
                    <asp:BoundField DataField="课程类型名" HeaderText="课程类型名" SortExpression="课程类型名" />
                    <asp:BoundField DataField="授课时间" HeaderText="授课时间" SortExpression="授课时间" />
                    <asp:BoundField DataField="课程学时" HeaderText="课程学时" SortExpression="课程学时" />
                   <asp:BoundField DataField="开设课程的最大人数" HeaderText="开设课程的最大人数" SortExpression="开设课程的最大人数" />
                    <asp:TemplateField  HeaderText="选课">
                        <ItemTemplate>
                            <asp:Button ID="btnAdd" runat="server" Text="添加" OnClick="btnAdd_Click1" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                  <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Height="60px"/>
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:ObjectDataSource ID="odsHasElective" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetElectiveDataByStudentID" TypeName="MainDataSetTableAdapters.成绩视图TableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblAccept" Name="学号" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            </div>
     
        
        <div style="float:left; height: 308px; width: 400px;margin-left:10px">
            &nbsp;&nbsp;已选课程
            <asp:GridView ID="gvHasElective" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="课程编号,学号" DataSourceID="odsHasElective" CellPadding="4" GridLines="None" Height="229px" Width="447px" ForeColor="#333333" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="课程编号" HeaderText="课程编号" ReadOnly="True" SortExpression="课程编号" />
                    <asp:BoundField DataField="课程名" HeaderText="课程名" SortExpression="课程名" />                  
                    <asp:BoundField DataField="教师名" HeaderText="教师名" SortExpression="教师名" />
                    <asp:BoundField DataField="课程类型名" HeaderText="课程类型名" SortExpression="课程类型名" />
                   <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnReturn" runat="server" OnClick="btnReturn_Click" Text="退课" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="70px" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:ObjectDataSource ID="odsElectivedata" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByCourseID" TypeName="MainDataSetTableAdapters.老师课程TableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_课程编号" Type="String" />
                    <asp:Parameter Name="Original_教师编号" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="课程编号" Type="String" />
                    <asp:Parameter Name="课程名" Type="String" />
                    <asp:Parameter Name="教师编号" Type="String" />
                    <asp:Parameter Name="教师名" Type="String" />
                    <asp:Parameter Name="开设学院编号" Type="String" />
                    <asp:Parameter Name="开设学院名" Type="String" />
                    <asp:Parameter Name="上课地点" Type="String" />
                    <asp:Parameter Name="课程类型编号" Type="String" />
                    <asp:Parameter Name="课程类型名" Type="String" />
                    <asp:Parameter Name="开课时间" Type="String" />
                    <asp:Parameter Name="授课时间" Type="String" />
                    <asp:Parameter Name="课程学时" Type="Int32" />
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
                    <asp:Parameter Name="课程名" Type="String" />
                    <asp:Parameter Name="教师名" Type="String" />
                    <asp:Parameter Name="开设学院编号" Type="String" />
                    <asp:Parameter Name="开设学院名" Type="String" />
                    <asp:Parameter Name="上课地点" Type="String" />
                    <asp:Parameter Name="课程类型编号" Type="String" />
                    <asp:Parameter Name="课程类型名" Type="String" />
                    <asp:Parameter Name="开课时间" Type="String" />
                    <asp:Parameter Name="授课时间" Type="String" />
                    <asp:Parameter Name="课程学时" Type="Int32" />
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
                    <asp:Parameter Name="Original_课程编号" Type="String" />
                    <asp:Parameter Name="Original_教师编号" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        </asp:UpdatePanel>
        
        
        <p>
            <asp:Label ID="lblAccept" runat="server" Visible="False"></asp:Label>
            </p>
        
        
    </form>
</body>
</html>
