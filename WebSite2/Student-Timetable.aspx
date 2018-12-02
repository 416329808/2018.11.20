<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student-Timetable.aspx.cs" Inherits="Student_Timetable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link href="css/style_password.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="" />
<script src="js/jquery-2.1.4.min.js"></script>
    <style type="text/css">
        .auto-style2 {
            height: 41px;
        }
        .auto-style4 {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
           <div class="row">
        <div class="col-lg-pull-13 col-sm-offset-0" style="margin-top:10px;margin-left:30px">
          <table class="table table-striped " id="courseTable" style="cellpadding:10px">
            <colgroup>
              <col style="width: 9%">
              <col style="width: 13%">
              <col style="width: 13%">
              <col style="width: 13%">
              <col style="width: 13%">
              <col style="width: 13%">
              <col style="width: 13%">
              <col style="width: 13%">
            </colgroup>
            <thead>
            <tr>
              <td>课程表</td>
              <td>周一</td>
              <td>周二</td>
              <td>周三</td>
              <td>周四</td>
              <td>周五</td>
              <td>周六</td>
              <td>周日</td>
            </tr>
            </thead>
            <tbody>
            <tr id="1">
              <td class="auto-style4">
                  第一节
              <br/>
                  第二节
              </td>
                 <td class="auto-style4">
                     <asp:Label ID="lblM1" runat="server" Visible="False"></asp:Label>
                 </td>
              <td class="auto-style4">
                  <asp:Label ID="lblT1" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblW1" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblTh1" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblF1" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblS1" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblSu1" runat="server" Visible="False"></asp:Label>
              </td>
            
                  </tr>              
            <tr id="3">
              <td class="auto-style4">
                  第三节
              <br/>
                  第四节
              </td>
                 <td class="auto-style4">
                     <asp:Label ID="lblM3" runat="server" Visible="False"></asp:Label>
                 </td>
              <td class="auto-style4">
                  <asp:Label ID="lblT3" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblW3" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblTh3" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblF3" runat="server" Visible="False"></asp:Label></td>
              <td class="auto-style4">
                  <asp:Label ID="lblS3" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblSu3" runat="server" Visible="False"></asp:Label>
              </td>

            </tr>
            <tr id="4">
              <td class="auto-style2">第五节</td>
              <td class="auto-style2">
              </td>
              <td class="auto-style2"></td>
              <td class="auto-style2"></td>
              <td class="auto-style2"></td>
              <td class="auto-style2"></td>
              <td class="auto-style2"></td>
              <td class="auto-style2"></td>
            </tr>
            <tr id="5">
              <td class="auto-style4">
                  第六节
              <br/>
               第七节
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblM6" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblT6" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblW6" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblTh6" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblF6" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblS6" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblSu6" runat="server" Visible="False"></asp:Label>
              </td>
            </tr>
            <tr id="7">
              <td class="auto-style4">第八节
               <br/>
                  第九节
              </td>
               <td class="auto-style4">
                  <asp:Label ID="lblM8" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblT8" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblW8" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblTh8" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblF8" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblS8" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblSu8" runat="server" Visible="False"></asp:Label>
              </td>
            </tr>
            <tr id="9">
              <td class="auto-style4">第十节
                  <br/>
                  第十一节
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblM10" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblT10" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblW10" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblTh10" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblF10" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblS10" runat="server" Visible="False"></asp:Label>
              </td>
              <td class="auto-style4">
                  <asp:Label ID="lblSu10" runat="server" Visible="False"></asp:Label>
              </td>
            </tr>
            </tbody>
          </table>
          
        </div>
      </div>
    </form>
</body>
</html>
