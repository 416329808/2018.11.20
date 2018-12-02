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
public partial class Student_Elective : System.Web.UI.Page
{
    string s = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        s = Session["Users01"].ToString();
        lblAccept.Text = s;

    }

    protected void btnAdd_Click1(object sender, EventArgs e)
    {
        string strSQL = "select * from 系统开关表 where 标志位符号='" + 2 + "'";
        string str = ConfigurationManager.ConnectionStrings["WebConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = str;
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter(strSQL, conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        string a = dt.Rows[0]["标志位"].ToString();
        conn.Close();
        if (a == "选课关闭")
        {
            this.Response.Write("<script language='javascript'>alert('功能暂时未开放！')</script>");
        }
        else
        {
           
            try
            {
                Button bt = (Button)sender;
                GridViewRow gvr = (GridViewRow)bt.NamingContainer;
                int index = gvr.RowIndex;
                //int index = Convert.ToInt32(e.CommandArgument);
                string CourseID = gvElective.Rows[index].Cells[0].Text.ToString();
                string TeacherName = gvElective.Rows[index].Cells[2].Text.ToString();
                老师课程TableAdapter taTeacherCourse = new 老师课程TableAdapter();
                DataTable daCourse = taTeacherCourse.GetDataByTeacherNameAndCourseID(CourseID, TeacherName);

                string CourseName = daCourse.Rows[0]["课程名"].ToString();
                string StudentID = Session["Users01"].ToString();
                学生TableAdapter taStudent = new 学生TableAdapter();
                DataTable daStudent = taStudent.GetStudentByID(StudentID);
                string StudentName = daStudent.Rows[0]["姓名"].ToString();
                string TeacherID = daCourse.Rows[0]["教师编号"].ToString();
                //string TeacherName = daCourse.Rows[0]["教师名"].ToString();
                string DepartmentID = daCourse.Rows[0]["开设学院编号"].ToString();
                string DepartmentName = daCourse.Rows[0]["开设学院名"].ToString();
                string ClassID = daStudent.Rows[0]["班级编号"].ToString();
                string ClassName = daStudent.Rows[0]["班级"].ToString();
                string CourseType = daCourse.Rows[0]["课程类型编号"].ToString();
                string CourseTypeName = daCourse.Rows[0]["课程类型名"].ToString();
                string CourseStartTime = daCourse.Rows[0]["开课时间"].ToString();
                float CoursePoint =Convert.ToSingle(daCourse.Rows[0]["课程学分"].ToString());
                成绩TableAdapter taScore = new 成绩TableAdapter();
                int r = taScore.InsertQuery(CourseID, CourseName, StudentID, StudentName,
                    TeacherID, TeacherName, DepartmentID, DepartmentName, ClassID, ClassName,
                    CourseType, CourseTypeName, CourseStartTime,CoursePoint);
          
                if (r > 0)
                {
                    this.Response.Write("<script language='javascript'>alert('选课成功！');location.href='Student-Elective.aspx';</script>");
                }
            }
            catch
            {
                this.Response.Write("<script language='javascript'>alert('请不要添加重复课程！')</script>");

            }
        }
    }




    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Button bt = (Button)sender;
        GridViewRow gvr = (GridViewRow)bt.NamingContainer;
        int index = gvr.RowIndex;
        string CourseID = gvHasElective.Rows[index].Cells[0].Text.ToString();
        string CourseTypeName = gvHasElective.Rows[index].Cells[3].Text.ToString();
        成绩TableAdapter taScore = new 成绩TableAdapter();
        if (CourseTypeName == "专业选修" || CourseTypeName == "通识教育选修" || CourseTypeName == "公共选修")
        {
            try
            {
                int r = taScore.DeleteQuery(CourseID, s);

                this.Response.Write("<script language='javascript'>alert('退课成功！');location.href='Student-Elective.aspx';</script>");

            }
            catch
            {
                this.Response.Write("<script language='javascript'>alert('退课失败！')</script>");
            }
        }
        else
        {
            this.Response.Write("<script language='javascript'>alert('专业课程无法退选！')</script>");

        }
    }
}







