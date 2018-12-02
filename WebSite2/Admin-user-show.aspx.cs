using MainDataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_user_show : System.Web.UI.Page
{
    管理员TableAdapter ta = new 管理员TableAdapter();
    int 年龄;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users03"] == null)
        {
            Response.Redirect("login.aspx");
        }
        Lbl工号.Text = Session["Users03"].ToString();
        string s = Lbl工号.Text;
        DataTable dt = ta.GetDataBy1(s);
        if (!IsPostBack)
        {         
            Lbl证件号.Text = dt.Rows[0]["证件号"].ToString();
            Lbl姓名.Text = dt.Rows[0]["姓名"].ToString();
            txt年龄.Text = dt.Rows[0]["年龄"].ToString();
            Lbl性别.Text = dt.Rows[0]["性别"].ToString();
            Lbl证件类型.Text = dt.Rows[0]["证件类型名"].ToString();
            txtqq号.Text = dt.Rows[0]["qq号"].ToString();
            txt手机号.Text = dt.Rows[0]["手机号"].ToString();
            txt邮箱.Text = dt.Rows[0]["邮箱"].ToString();
            Lbl民族.Text = dt.Rows[0]["民族"].ToString();
            Lbl政治面貌.Text = dt.Rows[0]["政治面貌"].ToString();
        }

    }



    protected void btn提交_Click(object sender, EventArgs e)
    {
        ta.AdminUpdatedata(Convert.ToInt32(txt年龄.Text), txtqq号.Text, txt手机号.Text, txt邮箱.Text, Lbl工号.Text);

    }





}