using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MainDataSetTableAdapters;
using System.IO;
using System.Data;

public partial class Course_AddNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users03"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }

    //判断上传文件是否是图片
    private static bool IsAllowedExtension(FileUpload upfile)
    {
        string strOldFilePath = "";
        string strExtension = "";
        string[] arrExtension = { ".gif", ".jpg", ".bmp", ".png" };
        if (upfile.PostedFile.FileName != string.Empty)
        {
            strOldFilePath = upfile.PostedFile.FileName;//获得文件的完整路径名 
            strExtension = strOldFilePath.Substring(strOldFilePath.LastIndexOf("."));//获得文件的扩展名，如：.jpg 
            for (int i = 0; i < arrExtension.Length; i++)
            {
                if (strExtension.Equals(arrExtension[i]))
                {
                    return true;
                }
            }
        }
        return false;
    }
    public bool Isint(string value)
    {
        try
        {
            int temp = int.Parse(value);
            return true;
        }
        catch (Exception)
        {
            this.Response.Write("<script language='javascript'>alert('请在课程课时框中正确输入纯数字！')</script>");
            return false;
        }
    }

    public bool Isfloat(string value)
    {
        try
        {
            float temp = float.Parse(value);
            return true;
        }
        catch (Exception)
        {
            this.Response.Write("<script language='javascript'>alert('请在课程学分框中正确输入纯数字！')</script>");
            return false;
        }
    }
    protected void Button_Submit_Click(object sender, EventArgs e)
    {
        资讯TableAdapter ta = new 资讯TableAdapter();
        try
        {
            if (FileUpload1.HasFile)
            {
                if (IsAllowedExtension(FileUpload1))
                {
                    string path = Server.MapPath("~/images/");
                    FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
                    this.Image1.ImageUrl = "images/" + FileUpload1.FileName;
                    string savepath = "images/" + FileUpload1.FileName;
                    int tmp = ta.InsertQuery(TextID.Text, Convert.ToDateTime(TextTime.Text), TextTitle.Text, savepath, TextContent.Text);
                    if (tmp > 0)
                        lblInfo.Text = "上传成功！";
                }
            }
            else
            {
                this.Response.Write("<script language='javascript'>alert('请添加图片！')</script>");
            }
        }
        catch (Exception ex)
        {
            lblInfo.Text = "输入了重复的ID,请重新输入！";
        }

    }


    protected void btnPreview_Click(object sender, EventArgs e)
    {
        try
        {
            string filename = FileUpload1.FileName;
            string uploadfilename = Server.MapPath("~/") + filename;
            FileUpload1.PostedFile.SaveAs(uploadfilename);
            Image1.ImageUrl = filename;
        }
        catch
        {
            this.Response.Write("<script language='javascript'>alert('请添加图片！')</script>");
        }
    }
}