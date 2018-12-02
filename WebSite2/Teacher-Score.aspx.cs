using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MainDataSetTableAdapters;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Teacher_Score : System.Web.UI.Page
{
    string s = null;
    int countHasScore = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        s = Session["课程编号"].ToString();
        lblAcept.Text = s;
        //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["Users02"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {                 
            string strSQL = "select * from  提交按钮状态 where 标志位符号='" + 1 + "'";
            string str = ConfigurationManager.ConnectionStrings["WebConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = str;
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(strSQL, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            string a = dt.Rows[0]["标志位"].ToString();
            conn.Close();
            if (a == "不允许提交")
            {
                but_submit.Enabled = false;
                but_registor.Enabled = false;
            }
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        try
        {
            string ratio = ddl_ratio.SelectedItem.Text;
            string[] ratio1 = ratio.Split(new Char[] { ':' });
            double x = Convert.ToDouble(ratio1[0]) / 10;
            double y = Convert.ToDouble(ratio1[1]) / 10;
            TextBox tb = (TextBox)sender;
            GridViewRow gvr = (GridViewRow)tb.NamingContainer;
            int index = gvr.RowIndex;
            TextBox tbn = (TextBox)gvr.FindControl("txt_normalscore");
            TextBox tbt = (TextBox)gvr.FindControl("txt_testscore");
            Label lblscore = (Label)gvr.FindControl("lbl_score");
            if (tbn.Text == "")
            {
                tbn.Text = "0";
            }
            if (tbt.Text == "")
            {
                tbt.Text = "0";
            }
            double tmp = Convert.ToDouble(tbn.Text) * x + Convert.ToDouble(tbt.Text) * y;
            lblscore.Text = tmp.ToString();
            成绩TableAdapter taNormalScore = new 成绩TableAdapter();
            int r = taNormalScore.UpdateNormalScore(Convert.ToInt32(tbn.Text), gv_score.Rows[index].Cells[0].Text.ToString(), gv_score.Rows[index].Cells[2].Text.ToString());
        }
        catch {
            Response.Write("<script>alert('请输入不大于100的正整数!')</script>");
        }
    }

    protected void txt_testscore_TextChanged(object sender, EventArgs e)
    {
        try
        {
            string ratio = ddl_ratio.SelectedItem.Text;
            string[] ratio1 = ratio.Split(new Char[] { ':' });
            double x = Convert.ToDouble(ratio1[0]) / 10;
            double y = Convert.ToDouble(ratio1[1]) / 10;
            TextBox tb = (TextBox)sender;
            GridViewRow gvr = (GridViewRow)tb.NamingContainer;
            int index= gvr.RowIndex;
            TextBox tbn = (TextBox)gvr.FindControl("txt_normalscore");
            TextBox tbt = (TextBox)gvr.FindControl("txt_testscore");
            Label lblscore = (Label)gvr.FindControl("lbl_score");
            if (tbn.Text == "")
            {
                tbn.Text = "0";
            }
            if (tbt.Text == "")
            {
                tbt.Text = "0";
            }
            double tmp = Convert.ToDouble(tbn.Text) * x + Convert.ToDouble(tbt.Text) * y;
            lblscore.Text = tmp.ToString();
            成绩TableAdapter taTestScore = new 成绩TableAdapter();
            int r = taTestScore.UpdateTestScore(Convert.ToInt32(tbt.Text),tmp,gv_score.Rows[index].Cells[0].Text.ToString(), gv_score.Rows[index].Cells[2].Text.ToString());
        }
        catch
        {
            Response.Write("<script>alert('请输入不大于100的正整数!')</script>");
        }
    }



    protected void btn_sure_Click(object sender, EventArgs e)
    {
        try
        {
            成绩视图TableAdapter ta = new 成绩视图TableAdapter();
            for(int i = 0; i < gv_score.Rows.Count; i++)
            {
                string studentid = gv_score.Rows[i].Cells[2].Text.ToString();
                string ratio = ddl_ratio.SelectedItem.Text;
                string[] ratio1 = ratio.Split(new Char[] { ':' });
                double x = Convert.ToDouble(ratio1[0]) / 10;
                double y = Convert.ToDouble(ratio1[1]) / 10;               
                TextBox tbn = (TextBox)gv_score.Rows[i].FindControl("txt_normalscore");
                TextBox tbt = (TextBox)gv_score.Rows[i].FindControl("txt_testscore");
                Label lblscore = (Label)gv_score.Rows[i].FindControl("lbl_score");
                double tmp = Convert.ToDouble(tbn.Text) * x + Convert.ToDouble(tbt.Text) * y;
                lblscore.Text = tmp.ToString();
                int r = ta.UpdateDataByStudentIDAndCourseID(Convert.ToInt32(tbn.Text), Convert.ToInt32(tbt.Text), tmp, s, studentid);

            }
        }
        catch { }
    }



    protected void but_submit_Click(object sender, EventArgs e)
    {
        int count = 0;
        try
        {         
            成绩视图TableAdapter ta = new 成绩视图TableAdapter();
            for (int i = 0; i < gv_score.Rows.Count; i++)
            {
                string studentid = gv_score.Rows[i].Cells[2].Text.ToString();
                TextBox tbNormal = (TextBox)gv_score.Rows[i].FindControl("txt_normalscore");
                int normal = Convert.ToInt32(tbNormal.Text.ToString());
                TextBox tbTestscore = (TextBox)gv_score.Rows[i].FindControl("txt_testscore");
                int testscore = Convert.ToInt32(tbTestscore.Text.ToString());
                Label lblFinalscore = (Label)gv_score.Rows[i].FindControl("lbl_score");
                float finalscore = Convert.ToSingle(lblFinalscore.Text.ToString());
                int r = ta.UpdateDataByStudentIDAndCourseID(normal, testscore, finalscore, s, studentid);
                if (r > 0)
                {
                    count++;
                }
            }
        }
        catch
        {
            if (count != gv_score.Rows.Count)
            {
                this.Response.Write("<script language='javascript'>alert('还有学生没有评分哦！')</script>");
            }
        }
        if (count ==gv_score.Rows.Count)
        {
            string sql = "Update 提交按钮状态  Set 标志位='" + "不允许提交" + "' where 标志位符号='" + 1 + "'";
            string str = ConfigurationManager.ConnectionStrings["WebConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = str;
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('提交成功!')</script>");
            but_submit.Enabled = false;
        }
    }

    protected void but_registor_Click(object sender, EventArgs e)
    {

        成绩视图TableAdapter ta = new 成绩视图TableAdapter();
        for (int i = 0; i < gv_score.Rows.Count; i++)
        {
            string studentid = gv_score.Rows[i].Cells[2].Text.ToString();
            try
            {

                TextBox tbNormal = (TextBox)gv_score.Rows[i].FindControl("txt_normalscore");
                int normal = Convert.ToInt32(tbNormal.Text.ToString());
                TextBox tbTestscore = (TextBox)gv_score.Rows[i].FindControl("txt_testscore");
                int testscore = Convert.ToInt32(tbTestscore.Text.ToString());
                Label lblFinalscore = (Label)gv_score.Rows[i].FindControl("lbl_score");
                float finalscore = Convert.ToSingle(lblFinalscore.Text.ToString());
                int r = ta.UpdateDataByStudentIDAndCourseID(normal, testscore, finalscore, s, studentid);
                Response.Write("<script>alert('保存成功!')</script>");

            }
            catch (Exception)
            {
                //ta.UpdateDataByStudentIDAndCourseID(0, 0, 0, s, studentid);
            }

        }
    }
}