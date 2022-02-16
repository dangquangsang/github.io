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
    public partial class Dang_Nhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);

            SqlCommand cmd = new SqlCommand("select * from nhom where username='" + Login1.UserName + "'and pass ='" + Login1.Password + "'", cn);
            cmd.CommandType = CommandType.Text;
            cn.Open();
            SqlDataReader rs = cmd.ExecuteReader();

            if (rs.Read())
            {
                string maquyen = rs["manhom"].ToString();
                string username = rs["username"].ToString();
                Session["Username"] = Login1.UserName;
                cmd.Dispose();
                rs.Close();
                SqlCommand cmd2 = new SqlCommand("select * from Quyen where manhom=" + maquyen, cn);
                cmd2.CommandType = CommandType.Text;
                SqlDataReader rs2 = cmd2.ExecuteReader();
                if (rs2.Read())
                {
                    string nhom1 = rs2[1].ToString();
                    switch (nhom1)
                    {
                        case "admin":
                            FormsAuthentication.SetAuthCookie(username, false);
                            Response.Redirect("~/Admin/Trangchu.aspx");
                            break;
                        case "users":
                            Response.Redirect("~/Users/Trangchu.aspx");
                            break;
                    }
                }
                else Response.Redirect("Dang_Nhap.aspx");
            }
            else Login1.FailureText = "Bạn đăng nhập sai";

        }
    }
}