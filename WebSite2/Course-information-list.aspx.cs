using System;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


using System.Data;
using MainDataSetTableAdapters;



public partial class Course_information_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users03"] == null)
        {
             Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {

        }
    }
    protected void Gidvew_All_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "MyCmd")
        {
            string id = e.CommandArgument.ToString();
            课程TableAdapter ta = new 课程TableAdapter();
            int r = ta.DeleteCourseByID(id);
            if (r > 0)
            {
                this.Response.Write("<script language='javascript'>alert('删除成功！')</script>");
            }
            else
            {
                this.Response.Write("<script language='javascript'>alert('删除失败！')</script>");
            }
        }
    }
}