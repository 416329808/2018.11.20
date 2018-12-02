using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using MainDataSetTableAdapters;

public partial class Course_AddTeacherCourse : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["Users03"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void Button_Submit_Click1(object sender, EventArgs e)
    {
        老师课程TableAdapter ta = new 老师课程TableAdapter();
        String ClassroomStr = Classroom.SelectedItem.Text + "-" + TxtClassroom.Text;
        String CourseTimeStr = DropCourseTime.SelectedItem.Text + DropCourseTime2.SelectedItem.Text;
        //if (Isint(TxtCourseTimes.Text.Trim()))
        //{
        try
        {
            int times = int.Parse(TxtCourseTimes.Text.Trim());
            float point = Convert.ToSingle(TxtPoint.Text.Trim());
            try
            {
                if (ta.GetDataByTC(TxtCourseID.Text, TxtTeacherID.Text).Rows.Count == 0)
                {
                    int tmp = ta.AddTC(TxtCourseID.Text, TxtCourseName.Text, TxtTeacherID.Text, TxtTeacherName.Text, DropCollege.SelectedItem.Value, DropCollege.SelectedItem.Text, ClassroomStr, DropCourseType.SelectedItem.Value, DropCourseType.SelectedItem.Text, ddlStartTime.SelectedItem.Text, CourseTimeStr, times, point);
                    if (tmp > 0)
                    {
                        Response.Write("<script> alert('添加成功');</script>");
                    }
                    else
                    {
                        Response.Write("<script> alert('添加失败');</script>");
                    }
                }
                else
                {
                    Response.Write("<script> alert('该课程关系已存在');</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script> alert('该老师或课程数据库中不存在！');</script>");
            }
        }
        catch {
            Response.Write("<script> alert('请正确输入课程编号！');</script>");
        }
        //}
    }

    //public bool Isint(string value)
    //{
    //    try
    //    {
    //        int temp = int.Parse(value);
    //        return true;
    //    }
    //    catch (Exception)
    //    {
    //        LblCousTimesTip.Text = "请输入纯数字！";
    //        return false;
    //    }
    //}
}