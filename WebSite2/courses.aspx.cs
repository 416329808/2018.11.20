using System;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

using System.Data;
using System.Drawing;
using MainDataSetTableAdapters;
public partial class courses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LinkButton3.Visible = false;
            ViewState["currentpage"] = 0;
            BindDataToDataList();            
        }
    }
  
    private int PageIndex
    {
        get { return Convert.ToInt32(ViewState["currentpage"].ToString()); }
        set { ViewState["currentpage"] = value; }
    }
    

    private void BindDataToDataList()
    {
        string strConn = ConfigurationManager.ConnectionStrings["WebConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(strConn);
        conn.Open();
        string sql = "select * from 课程";
        SqlDataAdapter da = new SqlDataAdapter(sql,conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        PagedDataSource pds = new PagedDataSource();
        pds.DataSource = ds.Tables[0].DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = 12;
        pds.CurrentPageIndex = PageIndex;

        lblCount.Text = pds.DataSourceCount.ToString();
        lblPageCount.Text = pds.PageCount.ToString();
        LinkButton1.ForeColor = Color.Red;

        Datli_All.DataSource = pds;
        Datli_All.DataBind();
        conn.Close();
        if (pds.IsFirstPage)
        {
            lbtnFirst.Enabled = false;
            lbtnPre.Enabled = false;
        }
        else
        {
            lbtnFirst.Enabled = true;
            lbtnPre.Enabled = true;
        }
        if (pds.IsLastPage)
        {
            lbtnLast.Enabled = false;
            lbtnNext.Enabled = false;
        }
        else
        {
            lbtnNext.Enabled = true;
            lbtnLast.Enabled = true;
        }
    }
    protected void lbtnFirst_Click(object sender, EventArgs e)
    {
        PageIndex = 0;
        BindDataToDataList();

        valueToButton();
        ShowButton();

        //  ddl3.SelectedValue = (PageIndex + 1).ToString();
    }
    protected void lbtnPre_Click(object sender, EventArgs e)
    {
        PageIndex = PageIndex - 1;
        BindDataToDataList();

        valueToButton();
        ShowButton();

        // ddl3.SelectedValue = (PageIndex + 1).ToString();
    }
    protected void lbtnNext_Click(object sender, EventArgs e)
    {
        PageIndex = PageIndex + 1;
        BindDataToDataList();

        valueToButton();
        ShowButton();

        // ddl3.SelectedValue = (PageIndex + 1).ToString();
    }
    protected void lbtnLast_Click(object sender, EventArgs e)
    {
        PageIndex = Convert.ToInt32(lblPageCount.Text) - 1;
        BindDataToDataList();

        valueToButton();
        ShowButton();

        // ddl3.SelectedValue = (PageIndex + 1).ToString();
    }

    private void ShowButton()
    {
        if (Convert.ToInt32(lblPageCount.Text) < 3)
        {
            switch (Convert.ToInt32(lblPageCount.Text))
            {
                case 1: LinkButton1.Visible = true; LinkButton2.Visible = true; LinkButton3.Visible = false; break;
                case 2: LinkButton1.Visible = true; LinkButton2.Visible = true; LinkButton3.Visible = false; break;
                default: LinkButton1.Visible = false; LinkButton2.Visible = false; LinkButton3.Visible = false; break;
            }
        }
        else if (Convert.ToInt32(lblPageCount.Text) >= 3)
        {
            LinkButton1.Visible = true;
            LinkButton2.Visible = true;
            LinkButton3.Visible = true;
        }

        if (Convert.ToInt32(LinkButton3.Text) > Convert.ToInt32(lblPageCount.Text))
        { LinkButton3.Visible = false; }

        if (Convert.ToInt32(LinkButton2.Text) > Convert.ToInt32(lblPageCount.Text))
        { LinkButton2.Visible = true; }

        if (Convert.ToInt32(LinkButton1.Text) < 1)
        { LinkButton1.Visible = false; }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        PageIndex = Convert.ToInt32(LinkButton1.Text) - 1;
        BindDataToDataList();
        valueToButton();
        ShowButton();
        // ddl3.SelectedValue = (PageIndex + 1).ToString();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        PageIndex = Convert.ToInt32(LinkButton2.Text) - 1;
        BindDataToDataList();
        ShowButton();
        // ddl3.SelectedValue = (PageIndex + 1).ToString();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        PageIndex = Convert.ToInt32(LinkButton3.Text) - 1;
        BindDataToDataList();
        valueToButton();
        ShowButton();
        //  ddl3.SelectedValue = (PageIndex + 1).ToString();
    }

    private void valueToButton()
    {
        int num1 = PageIndex;
        int num2 = PageIndex + 1;
        int num3 = PageIndex + 2;
        LinkButton1.Text = num1.ToString();
        LinkButton2.Text = num2.ToString();
        LinkButton3.Text = num3.ToString();

        LinkButton1.ForeColor = Color.Blue;
        LinkButton2.ForeColor = Color.Red;
    }
    /*protected void ddl3_SelectedIndexChanged(object sender, EventArgs e)
    {
        PageIndex = Convert.ToInt32(ddl3.SelectedValue) - 1;
        BindDataToDataList();
        valueToButton();
        ShowButton();
    }
    */
}