using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MainDataSetTableAdapters;

public partial class Student_user_show : System.Web.UI.Page
{
    学生TableAdapter ta = new 学生TableAdapter();
    short 年龄;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users01"] == null)
        {
            Response.Redirect("login.aspx");
        }
        Lbl学号.Text = Session["Users01"].ToString();
        string s = Lbl学号.Text;
        DataTable dt = ta.GetStudentByID(s);
        if (!IsPostBack)
        {

            Lbl姓名.Text = dt.Rows[0]["姓名"].ToString();
            txt年龄.Text = dt.Rows[0]["年龄"].ToString();
            Lbl民族.Text = dt.Rows[0]["民族"].ToString();
            Lbl政治面貌.Text = dt.Rows[0]["政治面貌"].ToString();
            Lbl入学年份.Text = dt.Rows[0]["入学年份"].ToString();
            Lbl专业.Text = dt.Rows[0]["专业"].ToString();
            Lbl班级.Text = dt.Rows[0]["班级"].ToString();
            Lbl证件号.Text = dt.Rows[0]["证件号"].ToString();
            Lbl院系.Text = dt.Rows[0]["院系"].ToString();
            Lbl性别.Text = dt.Rows[0]["性别"].ToString();
            Lbl证件类型.Text = dt.Rows[0]["证件类型"].ToString();
            txtqq号.Text = dt.Rows[0]["qq号"].ToString();
            txt手机号.Text = dt.Rows[0]["手机号"].ToString();
            txt邮箱.Text = dt.Rows[0]["邮箱"].ToString();

        }

    }

    protected void 提交_Click(object sender, EventArgs e)
    {
        年龄 = short.Parse(txt年龄.Text);
        ta.StudentUpdatedata( 年龄, txtqq号.Text, txt手机号.Text, txt邮箱.Text, Lbl学号.Text);
    }
}