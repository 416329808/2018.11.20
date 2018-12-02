using System;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


using System.Data;
using System.Data.SqlClient;
using MainDataSetTableAdapters;
using System.IO;

public partial class Course_information_editor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Users03"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {

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


    protected void Button_Submit_Click1(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                if (IsAllowedExtension(FileUpload1))
                {
                    if (Isint(TxtCourseTime.Text.Trim()) & Isfloat(TxtCourseCredit.Text.Trim()))
                    {
                       
                        string path = Server.MapPath("~/images/");
                        //string Extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                        //FileUpload1.SaveAs(FilePath + Extension);
                        //string savepath = "/images/" + Extension;
                          
                        FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
                        this.Image1.ImageUrl ="images/"+ FileUpload1.FileName;
                        string savepath= "images/" + FileUpload1.FileName;
                        课程TableAdapter ta = new 课程TableAdapter();
                        int r=ta.InsertCourse(TxtCourseID.Text.Trim(), TxtCourseName.Text.Trim(), int.Parse(TxtCourseTime.Text.Trim()),
                            savepath, TxtCourseDescribe.Text.Trim(), float.Parse(TxtCourseCredit.Text.Trim()),
                            DropCourseType.SelectedItem.Text, DropCourseCollege.SelectedItem.Text);
                     
                        if (r > 0)
                            lblInfo.Text = "上传成功！";
                    }
                }
            }
            else
            {
                lblInfo.Text = "请选择上传文件";
            }
        }
        catch (Exception ex)
        {
            this.Response.Write("<script language='javascript'>alert('请不要添加已存在的课程号！')</script>");
            //lblInfo.Text = "上传发生错误！原因是：" + ex.ToString();
        }
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