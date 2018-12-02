<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course-AddTeacher.aspx.cs" Inherits="Course_AddTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LblName" runat="server" Text="姓名："></asp:Label>
        <asp:TextBox ID="TextName" runat="server" Height="20px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextName" ErrorMessage="不能为空！"></asp:RequiredFieldValidator>
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblSex" runat="server" Text="性别："></asp:Label>
            <asp:DropDownList ID="ddlSex" runat="server" DataSourceID="Obj_sex" DataTextField="含义" DataValueField="代码" Height="26px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblNation" runat="server" Text="民族："></asp:Label>
            <asp:DropDownList ID="ddlNation" runat="server" Height="26px" DataSourceID="Obj_nationality" DataTextField="含义" DataValueField="代码">
            </asp:DropDownList>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblID" runat="server" Text="工号："></asp:Label>
            <asp:TextBox ID="TextID" runat="server" Width="333px" Height="20px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextID" ErrorMessage="不能为空！"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revID" runat="server" ControlToValidate="TextID" ErrorMessage="请输入以1开始的六位纯数字" ValidationExpression="^([1-9][0-9]{5})$"></asp:RegularExpressionValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblIDName" runat="server" Text="职称："></asp:Label>
&nbsp;<asp:DropDownList ID="ddlJob" runat="server" DataSourceID="Obj_job" DataTextField="含义" DataValueField="代码" Height="26px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblDepartment" runat="server" Text="院系："></asp:Label>
            &nbsp;<asp:DropDownList ID="ddlfaculty" runat="server" DataSourceID="Obj_faculty" DataTextField="学院" DataValueField="学院代码" Height="26px">
            </asp:DropDownList>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblNaType" runat="server" Text="政治面貌："></asp:Label>
            <asp:DropDownList ID="ddlStatus" runat="server" DataSourceID="Obj_status" DataTextField="含义" DataValueField="代码" Height="25px">
            </asp:DropDownList>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblIDType" runat="server" Text="证件号类型："></asp:Label>
            <asp:DropDownList ID="ddlcer" runat="server" DataSourceID="Obj_certificate" DataTextField="含义" DataValueField="代码" Height="26px">
            </asp:DropDownList>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblIDCer" runat="server" Text="证件号："></asp:Label>
            <asp:TextBox ID="TextCer" runat="server" Width="322px" Height="21px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextCer" ErrorMessage="不能为空！"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RevCer" runat="server" ControlToValidate="TextCer" ErrorMessage="请输入正确的身份证号" ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator>
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label14" runat="server" Text="入职年份："></asp:Label>
            &nbsp;<asp:DropDownList ID="ddlYear" runat="server">
                <asp:ListItem Selected="True">2018</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2008</asp:ListItem>
                <asp:ListItem>2007</asp:ListItem>
                <asp:ListItem>2006</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblY0" runat="server" Text="年龄："></asp:Label>
            <asp:DropDownList ID="ddlYO" runat="server">
                <asp:ListItem Selected="True">20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
                <asp:ListItem>32</asp:ListItem>
                <asp:ListItem>33</asp:ListItem>
                <asp:ListItem>34</asp:ListItem>
                <asp:ListItem>35</asp:ListItem>
                <asp:ListItem>36</asp:ListItem>
                <asp:ListItem>37</asp:ListItem>
                <asp:ListItem>38</asp:ListItem>
                <asp:ListItem>39</asp:ListItem>
                <asp:ListItem>40</asp:ListItem>
                <asp:ListItem>41</asp:ListItem>
                <asp:ListItem>42</asp:ListItem>
                <asp:ListItem>43</asp:ListItem>
                <asp:ListItem>44</asp:ListItem>
                <asp:ListItem>45</asp:ListItem>
                <asp:ListItem>46</asp:ListItem>
                <asp:ListItem>47</asp:ListItem>
                <asp:ListItem>48</asp:ListItem>
                <asp:ListItem>49</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
                <asp:ListItem>51</asp:ListItem>
                <asp:ListItem>52</asp:ListItem>
                <asp:ListItem>53</asp:ListItem>
                <asp:ListItem>54</asp:ListItem>
                <asp:ListItem>55</asp:ListItem>
                <asp:ListItem>56</asp:ListItem>
                <asp:ListItem>57</asp:ListItem>
                <asp:ListItem>58</asp:ListItem>
                <asp:ListItem>59</asp:ListItem>
                <asp:ListItem>60</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblQQ" runat="server" Text="qq号："></asp:Label>
&nbsp;<asp:TextBox ID="TxtQQ" runat="server" Width="150px" Height="21px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revqq" runat="server" ControlToValidate="TxtQQ" ErrorMessage="请输入正确的qq号" ValidationExpression="[1-9][0-9]{4,9}"></asp:RegularExpressionValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblTel" runat="server" Text="手机号："></asp:Label>
            &nbsp;<asp:TextBox ID="TxtTel" runat="server" Width="150px" Height="21px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="REVTel" runat="server" ControlToValidate="TxtTel" ErrorMessage="请输入正确的电话号码" ValidationExpression="^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMail" runat="server" Text="邮箱："></asp:Label>
            <asp:TextBox ID="TxtMail" runat="server" Width="333px" Height="20px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="REVMail" runat="server" ControlToValidate="TxtMail" ErrorMessage="请输入正确的邮箱" ValidationExpression="^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button_submit" runat="server" Text="提交" Width="93px" OnClick="Button_submit_Click" />
            <asp:Label ID="lblInfo" runat="server"></asp:Label>
            &nbsp;
            <br />
            <br />
            <asp:ObjectDataSource ID="Obj_sex" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Get_sex" TypeName="MainDataSetTableAdapters.DM_性别代码TableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="Obj_nationality" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetNation" TypeName="MainDataSetTableAdapters.DM_民族代码TableAdapter"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="Obj_status" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="MainDataSetTableAdapters.DM_政治面貌代码TableAdapter" UpdateMethod="Update">
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
            <asp:ObjectDataSource ID="Obj_faculty" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="MainDataSetTableAdapters.DM_学院代码TableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_学院代码" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="学院代码" Type="String" />
                    <asp:Parameter Name="学院" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="学院" Type="String" />
                    <asp:Parameter Name="Original_学院代码" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="Obj_certificate" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="MainDataSetTableAdapters.DM_证件类型代码TableAdapter" UpdateMethod="Update">
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
            <asp:ObjectDataSource ID="Obj_job" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetJob" TypeName="MainDataSetTableAdapters.DM_教师职称代码TableAdapter" UpdateMethod="Update">
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
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

