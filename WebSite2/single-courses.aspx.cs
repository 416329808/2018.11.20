using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Data.SqlClient;


public partial class single_courses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblAccept.Text =Request.QueryString["课程编号"].ToString();
       
    }
}