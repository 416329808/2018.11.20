using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MainDataSetTableAdapters;

public partial class Course_AddTeacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["Users03"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button_submit_Click(object sender, EventArgs e)
    {
        老师TableAdapter ta = new 老师TableAdapter();
        用户密码TableAdapter taUser = new 用户密码TableAdapter();
        if (ta.GetDataBy1(TextID.Text).Rows.Count == 0)
        {
            int tmp = ta.InsertQuery(TextID.Text, TextName.Text, ddlSex.SelectedItem.Value, ddlSex.SelectedItem.Text, ddlNation.SelectedItem.Value, ddlNation.SelectedItem.Text, ddlStatus.SelectedItem.Value, ddlStatus.SelectedItem.Text, ddlfaculty.SelectedItem.Value, ddlfaculty.SelectedItem.Text, ddlJob.SelectedItem.Value, ddlJob.SelectedItem.Text, int.Parse(ddlYO.SelectedItem.Text), ddlYear.SelectedItem.Text, ddlcer.SelectedItem.Value, ddlcer.SelectedItem.Text, TextCer.Text, TxtQQ.Text, TxtTel.Text, TxtMail.Text);
            taUser.InsertTeacher(TextID.Text);
            if (tmp > 0)
            {
                lblInfo.Text = "添加成功";
            }
            else
            {
                lblInfo.Text = "添加失败";
            }
        }
        else
        {
            lblInfo.Text = "添加失败，该老师已存在";
        }
    }
}