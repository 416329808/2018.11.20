using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MainDataSetTableAdapters;
using System.Data;
public partial class Course_operation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users03"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            string name = Session["Users03"].ToString();
            管理员TableAdapter taAdmin = new 管理员TableAdapter();
            DataTable daAdmin = taAdmin.GetDataBy1(name);

            lblAdminName.Text = daAdmin.Rows[0]["姓名"].ToString();
        }
    }
}