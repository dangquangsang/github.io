using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace TruongDhv
{
    public partial class Dang_Ky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ToString());
                cn.Open();
                SqlCommand cm = new SqlCommand();
                cm.CommandText = "insert into nhom values('" + TextBox1.Text + "','2','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
                cm.Connection = cn;
                cm.CommandType = CommandType.Text;
                cm.ExecuteNonQuery();

                Response.Redirect("Welcome.aspx");
            }
            catch
            {
                ClientScript.RegisterClientScriptBlock(GetType(), "", "<script language='javascript'>alert('Bạn cần điền đây đủ thông tin Hoặc tên đăng nhập đã có!')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Trangchu.aspx");
        }
    }
}