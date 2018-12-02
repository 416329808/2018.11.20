using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using MainDataSetTableAdapters;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //string strConn = ConfigurationManager.ConnectionStrings["WebConnectionString"].ConnectionString;
            //SqlConnection conn = new SqlConnection(strConn);
            //conn.Open();
            //conn.Close();
            Bind_News(); //增加了一个函数
        }
    }

    private void Bind_News()
    {
        资讯TableAdapter da = new 资讯TableAdapter();
        Datli_News.DataSource = odsTopData;
        Datli_News.DataKeyField = "资讯ID";
        Datli_News.DataBind();
    }
}