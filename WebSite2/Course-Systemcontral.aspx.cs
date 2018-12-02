using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using MainDataSetTableAdapters;
using System.Data;
public partial class System_Control : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users03"] == null)
        {
            Response.Redirect("login.aspx");
        }

    }

    protected void bntsure_score_Click(object sender, EventArgs e)
    {
        try
        {
            提交按钮状态TableAdapter ta = new 提交按钮状态TableAdapter();
            DataTable da = ta.GetDataBy1("1");     
            ta.UpdateQuery("允许提交", "1");
                  
            string sql = "Update 系统开关表 Set 标志位='" + ddlstate_score.SelectedItem.Text + "' where 标志位符号='" + 1 + "'";
            string str = ConfigurationManager.ConnectionStrings["WebConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = str;
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();       
            con.Close();
            Response.Write("<script>alert('修改成功!')</script>");
               
        }
        catch (HttpException)
        {

            Response.Write("<script>alert('修改失败！')</script>");
        }

    }

    protected void btnsure_course_Click(object sender, EventArgs e)
    {
        try
        {
            string sql = "Update 系统开关表  Set 标志位='" + ddlstate_course.SelectedItem.Text + "' where 标志位符号='" + 2 + "'";
            string str = ConfigurationManager.ConnectionStrings["WebConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = str;
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('修改成功!')</script>");
        }
        catch (HttpException)
        {

            Response.Write("<script>alert('修改失败！')</script>");
        }

    }


}