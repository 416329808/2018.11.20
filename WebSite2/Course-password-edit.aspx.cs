using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MainDataSetTableAdapters;
using System.Data;
using System.Security.Cryptography;
using System.Text;

public partial class Course_password_edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users03"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        try
        {
            用户密码TableAdapter ta = new 用户密码TableAdapter();
            String username = Session["Users03"].ToString();
            DataTable dt = ta.GetDataByUserID(username);
            string pwd = MD5Encrypt16(txtOldPwd.Text);
            if (dt.Rows[0]["密码"].ToString() == pwd)
            {
                if (txtNewPwd.Text == txtNewPwd2.Text)
                {
                    string pwd1 = MD5Encrypt16(txtNewPwd.Text);
                    ta.UpdateQuery(pwd1,username);

                    this.Response.Write("<script language='javascript'>alert('修改成功，请重新登陆！');top.location='login.aspx';</script>");

                    txtOldPwd.Text = "";
                    txtNewPwd.Text = "";
                    txtNewPwd2.Text = "";
                }
                else
                {
                    Response.Write("新密码输入不一致");
                }
            }
            else
            {
                Response.Write("原密码错误");
            }
        }
        catch {

        }
    }


    //MD5加密
    public static string MD5Encrypt16(string password)
    {
        var md5 = new MD5CryptoServiceProvider();
        string t2 = BitConverter.ToString(md5.ComputeHash(Encoding.Default.GetBytes(password)), 4, 8);
        t2 = t2.Replace("-", "");
        return t2;
    }
}