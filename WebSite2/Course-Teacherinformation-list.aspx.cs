using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MainDataSetTableAdapters;
using System.Data;

public partial class Course_Teacherinformation_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users03"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if(!IsPostBack)
        {
            //gvTeacher.DataSource = odsTeacher;
            //gvTeacher.DataBind();
        }

    }
    protected void gvTeacher_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void btnSelectTeacher_Click(object sender, EventArgs e)
    {
        //老师TableAdapter taTeacher = new 老师TableAdapter();
        //DataTable daTeacher = taTeacher.GetDataByLikeTeacherName("%" + txtSelect.Text + "%");
        //gvTeacher.DataSource = daTeacher;
        //gvTeacher.DataBind();
    }
}