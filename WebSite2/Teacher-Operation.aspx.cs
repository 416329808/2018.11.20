using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MainDataSetTableAdapters;
using System.Data;
public partial class Teaxcher_Operation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["users02"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            string name = Session["users02"].ToString();
            老师TableAdapter taTeacher = new 老师TableAdapter();
            DataTable daTeacher = taTeacher.GetDataBy1(name);
            lblTeacherName.Text = daTeacher.Rows[0]["姓名"].ToString();
        }
    }
}