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

namespace TruongDhv.Users
{
    public partial class Guibaiviet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CmdGui_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ToString());
            cn.Open();

            SqlCommand cm = new SqlCommand();
            cm.CommandText = "insert into Tb_DetailNews values('10','" + TxtTieude.Text + "','" + TxtNDChinh.Text + "','" + TxtNoidung.Text + "','1.jpg','4/4/2008','SK')";
            cm.Connection = cn;
            cm.CommandType = CommandType.Text;
            cm.ExecuteNonQuery();
            Response.Redirect("~/Users/Thanhcong.aspx");
        }

        protected void CmdThoat_Click(object sender, EventArgs e)
        {
            Response.Redirect("Trangchu.aspx");
        }
    }
}