using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TruongDhv.Admin
{
    public partial class Quantri_web : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblAdmin.Text = "Xin chào Admin: " + Session["Username"].ToString();
        }
    }
}