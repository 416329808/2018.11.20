using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Data.SqlClient;
using MainDataSetTableAdapters;


public partial class Course_Studentinfo_list: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["Users03"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {

        }
    }


    protected void But_Submit_Click(object sender, EventArgs e)
    {
        try
        {
            if (IsBigInt(Txt_StudentID.Text.Trim()))
            {
                用户密码TableAdapter taStudent = new 用户密码TableAdapter();
                学生TableAdapter ta = new 学生TableAdapter();
                int r = ta.InsertQueryStudentinformation(Txt_StudentID.Text.Trim(), Txt_StudentName.Text.Trim(), Ddl_StudentSex.SelectedItem.Text,
                    Convert.ToInt16(Txt_StudentAge.Text),
                   Ddl__StudentTimeOfEnrollment.SelectedItem.Text, Ddl__StudentCollege.SelectedItem.Value, Ddl__StudentCollege.SelectedItem.Text,
                   Ddl_StudentMajor.SelectedItem.Value, Ddl_StudentMajor.SelectedItem.Text, Ddl_StudentClass.SelectedItem.Value,
                   Ddl_StudentClass.SelectedItem.Text, Ddl_DocumentType.SelectedItem.Value, Ddl_DocumentType.SelectedItem.Text, Txt_StudentDocument.Text.Trim(),
                   Txt_StudentQQ.Text.Trim(), Txt_StudentPhone.Text.Trim(), Txt_StudentEMail.Text.Trim());
                taStudent.InsertStudent(Txt_StudentID.Text.Trim());
                if (r > 0)
                    Lbl_Submit.Text = "上传成功！";
            }
        }
        catch (Exception ex)
        {
            this.Response.Write("<script language='javascript'>alert('请不要添加已存在的学生信息！')</script>");
        }
    }

    public bool IsBigInt(string value)
    {
        try
        {
            long temp = Convert.ToInt64((value));
            return true;
        }
        catch (Exception)
        {
            this.Response.Write("<script language='javascript'>alert('学号为纯数字！')</script>");
            return false;
        }
    }
}