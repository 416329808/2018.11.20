using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MainDataSetTableAdapters;
using System.Data;
public partial class Student_Operation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users01"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            string name = Session["Users01"].ToString();
            学生TableAdapter taStudent = new 学生TableAdapter();
            DataTable daStudent = taStudent.GetStudentByID(name); ;
            lblStudentName.Text = daStudent.Rows[0]["姓名"].ToString();
        }
    }
}