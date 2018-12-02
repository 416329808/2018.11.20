using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MainDataSetTableAdapters;
using System.Data;
public partial class Student_Score_show : System.Web.UI.Page
{
    string s = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        s = Session["Users01"].ToString();
        lblAccept.Text = s;
        lblPoint.Text = Calculate(s).ToString();
        if (Session["Users01"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }

    private float Calculate(string s)
    {

        成绩视图TableAdapter taScore = new 成绩视图TableAdapter();
        DataTable daScore = taScore.GetScoreDataByStudentID(s);
        float totalPoint = 0;
        int count =0,count3=0;
        try
        {
            for (int i = 0; i < daScore.Rows.Count; i++)
            {
                if (daScore.Rows[i]["总成绩"] != null)
                {
                    count3++;
                    if (Convert.ToInt32(daScore.Rows[i]["总成绩"]) >= 60)
                    {
                        totalPoint += Convert.ToSingle(daScore.Rows[i]["课程学分"]);
                        count++;
                    }
                }
            }
        }
        catch (Exception)
        {         
            if(count3!=daScore.Rows.Count)
                Response.Write("<script> alert('有些科目还未考试，请抓紧复习！！！');</script>");
            else if (count3 != count)
                Response.Write("<script> alert('有些科目挂了呀，请努力学习！！！');</script>");
        }

        return totalPoint;
    }
}