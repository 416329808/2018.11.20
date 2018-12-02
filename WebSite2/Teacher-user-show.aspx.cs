using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MainDataSetTableAdapters;

public partial class Teacher_user_show : System.Web.UI.Page
{
    老师TableAdapter ta = new 老师TableAdapter();
    int 年龄;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users02"] == null)
        {
            Response.Redirect("login.aspx");
        }
        Lbl工号.Text = Session["Users02"].ToString();
        string s = Lbl工号.Text;
        DataTable dt = ta.GetDataBy1(s);
        Lbl性别.Text = dt.Rows[0]["性别"].ToString();
        if (!IsPostBack)
        {
            Lbl入职年份.Text = dt.Rows[0]["入职年份"].ToString();
            Lbl姓名.Text = dt.Rows[0]["姓名"].ToString();
            txt年龄.Text = dt.Rows[0]["年龄"].ToString();
            Lbl职称.Text = dt.Rows[0]["职称"].ToString();
            Lbl证件号.Text = dt.Rows[0]["证件号"].ToString();
            Lbl院系.Text = dt.Rows[0]["院系"].ToString();
            Lbl证件类型.Text = dt.Rows[0]["证件类型名"].ToString();
            txtqq号.Text = dt.Rows[0]["qq号"].ToString();
            txt手机号.Text = dt.Rows[0]["手机号"].ToString();
            txt邮箱.Text = dt.Rows[0]["邮箱"].ToString();
            Lbl民族.Text = dt.Rows[0]["民族"].ToString();
            Lbl政治面貌.Text = dt.Rows[0]["政治面貌"].ToString();

        }
    }

    protected void 提交_Click(object sender, EventArgs e)
    {
        年龄 = int.Parse(txt年龄.Text);
        ta.TeacherUpdatedata(年龄, txtqq号.Text, txt手机号.Text, txt邮箱.Text, Lbl工号.Text);
    }
}