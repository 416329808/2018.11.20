using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using MainDataSetTableAdapters;
using System.Data;

public partial class Teacher_CourseList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users02"] == null)
        {
            Response.Redirect("login.aspx");
        }
        string s= Session["Users02"].ToString();
        lblAdcept.Text = s;
    }
}