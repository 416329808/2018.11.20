using System;
using System.Collections.Generic;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Drawing;

using System.Security.Cryptography;
using System.Text;
using MainDataSetTableAdapters;


public partial class ValiCode_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        imgCheck.ImageUrl = "ValiCode.aspx";
    }
    
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        string ValiCode = txtVailCode.Text.ToString();
        try
        {
            用户密码TableAdapter ta = new 用户密码TableAdapter();
            DataTable dt = ta.GetDataByUserID(txtusename.Text);
            string password = MD5Encrypt16(txtpwd.Text.ToString());
            if (ValiCode.ToLower() == Session["ValiCode"].ToString().ToLower())
            {
                if (dt.Rows.Count > 0)
                {                  
                        if (dt.Rows[0]["用户类型编号"].ToString() == "1")
                        {
                            if (dt.Rows[0]["密码"].ToString() == password)
                            {
                                Session["Users01"] = txtusename.Text;
                               
                                Page.Response.Redirect("Student-Operation.aspx");
                            }
                            else
                            {
                                Response.Write("<script> alert('密码错误');</script>");
                            }
                        }
                        else Response.Write("<script> alert('此学生不存在');</script>");

                        if (dt.Rows[0]["用户类型编号"].ToString() == "2")
                        {
                            if (dt.Rows[0]["密码"].ToString() == password)
                            {
                                Session["Users02"] = txtusename.Text;
                                
                                Page.Response.Redirect("Teacher-Operation.aspx");
                            }
                            else
                            {
                                Response.Write("<script> alert('密码错误');</script>");
                            }
                        }
                        else Response.Write("<script> alert('此教师不存在');</script>");

                       if (dt.Rows[0]["用户类型编号"].ToString() == "3")
                        {
                            if (dt.Rows[0]["密码"].ToString() == password)
                            {
                                Session["Users03"] = txtusename.Text;
                               
                                Page.Response.Redirect("Course-Operation.aspx");
                            }
                            else
                            {
                                Response.Write("<script> alert('密码错误');</script>");
                            }
                        }
                        else Response.Write("<script> alert('此管理员不存在');</script>");
                }
                else
                {
                    Response.Write("<script> alert('此用户不存在');</script>");
                }
            }
            else
            {
                Response.Write("<script> alert('验证码输入错误');</script>");
            }
        }
        catch {
            Response.Write("<script> alert('请正确输入用户名密码登录');</script>");
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
