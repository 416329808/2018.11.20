using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MainDataSetTableAdapters;
using System.Data;

public partial class Student_Timetable : System.Web.UI.Page
{
    string s = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        s = Session["Users01"].ToString();
        SelecteCourseData();
        if (Session["Users01"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }

    private void SelecteCourseData()
    {
        string StudentID = s;
        成绩视图TableAdapter taScore = new 成绩视图TableAdapter();
        老师课程视图TableAdapter taTeacherCourse = new 老师课程视图TableAdapter();
        DataTable daScore = taScore.GetElectiveDataByStudentID(StudentID);
        string CourseID = null, TeacherID = null, CourseTime = null, CourseLocal = null,CourseName=null;
        //int index = 0;
        try
        {
            for (int i = 0; i < daScore.Rows.Count; i++)
            {
                CourseID = daScore.Rows[i]["课程编号"].ToString();
                TeacherID = daScore.Rows[i]["教师编号"].ToString();
                DataTable daTeacherCourse = taTeacherCourse.GetCourseTimeByCourseIDAndTeacherID(CourseID, TeacherID);
                CourseTime = daTeacherCourse.Rows[0]["授课时间"].ToString();
                CourseLocal = daTeacherCourse.Rows[0]["上课地点"].ToString();
                CourseName = daTeacherCourse.Rows[0]["课程名"].ToString();
          
                char[] array = CourseTime.ToCharArray();
                if (CourseTime.Length==7||CourseTime.Length==8)
                {
                    switch (array[3])
                    {
                        case '一':
                            switch (array[4])
                            {
                                case '一':
                                    lblM1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblM1.Visible = true;
                                    break;

                                case '三':
                                    lblM3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblM3.Visible = true;
                                    break;

                                case '六':
                                    lblM6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblM6.Visible = true;
                                    break;
                                case '八':
                                    lblM8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblM8.Visible = true;
                                    break;
                                case '十':
                                    lblM10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblM10.Visible = true;
                                    break;

                            }
                            break;

                        case '二':
                            switch (array[4])
                            {
                                case '一':
                                    lblT1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblT1.Visible = true;
                                    break;

                                case '三':
                                    lblT3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblT3.Visible = true;
                                    break;

                                case '六':
                                    lblT6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblT6.Visible = true;
                                    break;
                                case '八':
                                    lblT8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblT8.Visible = true;
                                    break;
                                case '十':
                                    lblT10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblT10.Visible = true;
                                    break;

                            }
                            break;

                        case '三':
                            switch (array[4])
                            {
                                case '一':
                                    lblW1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblW1.Visible = true;
                                    break;

                                case '三':
                                    lblW3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblW3.Visible = true;
                                    break;

                                case '六':
                                    lblW6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblW6.Visible = true;
                                    break;
                                case '八':
                                    lblW8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblW8.Visible = true;
                                    break;
                                case '十':
                                    lblW10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblW10.Visible = true;
                                    break;

                            }
                            break;

                        case '四':
                            switch (array[4])
                            {
                                case '一':
                                    lblTh1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblTh1.Visible = true;
                                    break;

                                case '三':
                                    lblTh3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblTh3.Visible = true;
                                    break;

                                case '六':
                                    lblTh6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblTh6.Visible = true;
                                    break;
                                case '八':
                                    lblTh8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblTh8.Visible = true;
                                    break;
                                case '十':
                                    lblTh10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblTh10.Visible = true;
                                    break;

                            }
                            break;

                        case '五':
                            switch (array[4])
                            {
                                case '一':
                                    lblF1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblF1.Visible = true;
                                    break;

                                case '三':
                                    lblF3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblF3.Visible = true;
                                    break;

                                case '六':
                                    lblF6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblF6.Visible = true;
                                    break;
                                case '八':
                                    lblF8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblF8.Visible = true;
                                    break;
                                case '十':
                                    lblF10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblF10.Visible = true;
                                    break;

                            }
                            break;

                        case '六':
                            switch (array[4])
                            {
                                case '一':
                                    lblS1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblS1.Visible = true;
                                    break;

                                case '三':
                                    lblS3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblS3.Visible = true;
                                    break;

                                case '六':
                                    lblS6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblS6.Visible = true;
                                    break;
                                case '八':
                                    lblS8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblS8.Visible = true;
                                    break;
                                case '十':
                                    lblS10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblS10.Visible = true;
                                    break;

                            }
                            break;

                        case '日':
                            switch (array[4])
                            {
                                case '一':
                                    lblSu1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblSu1.Visible = true;
                                    break;

                                case '三':
                                    lblSu3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblSu3.Visible = true;
                                    break;

                                case '六':
                                    lblSu6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblSu6.Visible = true;
                                    break;
                                case '八':
                                    lblSu8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblSu8.Visible = true;
                                    break;
                                case '十':
                                    lblSu10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblSu10.Visible = true;
                                    break;

                            }
                            break;

                    }

                }
                else
                {
                    switch (array[1])
                    {
                        case '一':
                            switch (array[2])
                            {
                                case '一':
                                    lblM1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblM1.Visible = true;
                                    break;

                                case '三':
                                    lblM3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblM3.Visible = true;
                                    break;

                                case '六':
                                    lblM6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblM6.Visible = true;
                                    break;
                                case '八':
                                    lblM8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblM8.Visible = true;
                                    break;
                                case '十':
                                    lblM10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblM10.Visible = true;
                                    break;

                            }
                            break;

                        case '二':
                            switch (array[2])
                            {
                                case '一':
                                    lblT1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblT1.Visible = true;
                                    break;

                                case '三':
                                    lblT3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblT3.Visible = true;
                                    break;

                                case '六':
                                    lblT6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblT6.Visible = true;
                                    break;
                                case '八':
                                    lblT8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblT8.Visible = true;
                                    break;
                                case '十':
                                    lblT10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblT10.Visible = true;
                                    break;

                            }
                            break;

                        case '三':
                            switch (array[2])
                            {
                                case '一':
                                    lblW1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblW1.Visible = true;
                                    break;

                                case '三':
                                    lblW3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblW3.Visible = true;
                                    break;

                                case '六':
                                    lblW6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblW6.Visible = true;
                                    break;
                                case '八':
                                    lblW8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblW8.Visible = true;
                                    break;
                                case '十':
                                    lblW10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblW10.Visible = true;
                                    break;

                            }
                            break;

                        case '四':
                            switch (array[2])
                            {
                                case '一':
                                    lblTh1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblTh1.Visible = true;
                                    break;

                                case '三':
                                    lblTh3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblTh3.Visible = true;
                                    break;

                                case '六':
                                    lblTh6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblTh6.Visible = true;
                                    break;
                                case '八':
                                    lblTh8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblTh8.Visible = true;
                                    break;
                                case '十':
                                    lblTh10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblTh10.Visible = true;
                                    break;

                            }
                            break;

                        case '五':
                            switch (array[2])
                            {
                                case '一':
                                    lblF1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblF1.Visible = true;
                                    break;

                                case '三':
                                    lblF3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblF3.Visible = true;
                                    break;

                                case '六':
                                    lblF6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblF6.Visible = true;
                                    break;
                                case '八':
                                    lblF8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblF8.Visible = true;
                                    break;
                                case '十':
                                    lblF10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblF10.Visible = true;
                                    break;

                            }
                            break;

                        case '六':
                            switch (array[2])
                            {
                                case '一':
                                    lblS1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblS1.Visible = true;
                                    break;

                                case '三':
                                    lblS3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblS3.Visible = true;
                                    break;

                                case '六':
                                    lblS6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblS6.Visible = true;
                                    break;
                                case '八':
                                    lblS8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblS8.Visible = true;
                                    break;
                                case '十':
                                    lblS10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblS10.Visible = true;
                                    break;

                            }
                            break;

                        case '日':
                            switch (array[2])
                            {
                                case '一':
                                    lblSu1.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblSu1.Visible = true;
                                    break;

                                case '三':
                                    lblSu3.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblSu3.Visible = true;
                                    break;

                                case '六':
                                    lblSu6.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblSu6.Visible = true;
                                    break;
                                case '八':
                                    lblSu8.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblSu8.Visible = true;
                                    break;
                                case '十':
                                    lblSu10.Text += CourseName + " " + CourseTime + " " + CourseLocal;
                                    lblSu10.Visible = true;
                                    break;

                            }
                            break;
                    }
                }
            }
        }
        catch
        {
            Response.Write("<script> alert('木有课表，呜呜呜呜！！');</script>");
        }

    }

    //private void 
}