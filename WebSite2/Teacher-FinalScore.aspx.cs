using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_FinalScore : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
        string s = Session["Users02"].ToString();
        lblAdcept.Text = s;
        if (Session["Users02"] == null)
        {
            Response.Redirect("login.aspx");
        }

    }

    protected void btnScore_Click(object sender, EventArgs e)
    {

        string strSQL = "select * from 系统开关表 where 标志位符号='" + 1 + "'";
        string str = ConfigurationManager.ConnectionStrings["WebConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = str;
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter(strSQL, conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        string a = dt.Rows[0]["标志位"].ToString();
        conn.Close();
        if (a == "打分关闭")
        {
            this.Response.Write("<script language='javascript'>alert('功能暂时未开放！')</script>");
        }
        else
        {
            Button bt = (Button)sender;
            GridViewRow gvr = (GridViewRow)bt.NamingContainer;
            int index = gvr.RowIndex;
            Session["课程编号"] = gvScoreCourse.Rows[index].Cells[0].Text.ToString();
            Page.Response.Redirect("Teacher-Score.aspx");
        }

    }
}



