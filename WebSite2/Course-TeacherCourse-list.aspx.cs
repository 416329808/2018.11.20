using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using MainDataSetTableAdapters;
using System.Data;
public partial class Course_TeacherCourseList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users03"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            //gvTeacherCourse.DataSource = odsAll;
            //gvTeacherCourse.DataBind();
        }
       
    }

    protected void Gidvew_All_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "MyCmd")
        {
            老师课程TableAdapter ta = new 老师课程TableAdapter();
            string CourseID = e.CommandArgument.ToString();
            string[] s = CourseID.Split(',');
            int r = ta.Delete(s[0], s[1]);
            if (r > 0)
            {
                this.Response.Write("<script language='javascript'>alert('删除成功！')</script>");
            }
            else
            {
                this.Response.Write("<script language='javascript'>alert('删除失败！')</script>");
            }
        }
    }

    protected void btnSelectTeacher_Click(object sender, EventArgs e)
    {
        //老师课程TableAdapter taTeacherCourse = new 老师课程TableAdapter();
        //DataTable daTeacherCourse = taTeacherCourse.GetDataByLikeTeacherName("%"+txtTeacher.Text + "%");
        //gvTeacherCourse.DataSource = daTeacherCourse;
        //gvTeacherCourse.DataBind();
    }

    protected void btnSelectCourse_Click(object sender, EventArgs e)
    {
        //老师课程TableAdapter taTeacherCourse = new 老师课程TableAdapter();
        //DataTable daTeacherCourse = taTeacherCourse.GetDataByLikeCourse("%" + txtCourse.Text + "%");
        //gvTeacherCourse.DataSource = daTeacherCourse;
        //gvTeacherCourse.DataBind();
    }
}