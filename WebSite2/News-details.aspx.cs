using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MainDataSetTableAdapters;

public partial class News_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind_News();
        }
    }

    private void Bind_News()
    {
        资讯TableAdapter da = new 资讯TableAdapter();
        Datli_News.DataSource = Ods_News;
        Datli_News.DataKeyField = "资讯ID";
        Datli_News.DataBind();
    }
}