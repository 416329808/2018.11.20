using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MainDataSetTableAdapters;

public partial class Course_StudentinformationList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users03"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            //gvStudent.DataSource = odsStudent;
            //gvStudent.DataBind();
        }
    }

    protected void Gv_Stu_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "MyCmd")
        {
            学生TableAdapter ta = new 学生TableAdapter();
            string id = e.CommandArgument.ToString();
            int r = ta.DeleteQueryByStudentID(id);
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


    protected void btnSelectStu_Click(object sender, EventArgs e)
    {
        //    学生TableAdapter taStudent = new 学生TableAdapter();
        //    DataTable daStudent = taStudent.GetDataByLikeName("%" + txtNameLike.Text + "%");
        //    gvStudent.DataSource = daStudent;
        //    gvStudent.DataBind();
    }
}