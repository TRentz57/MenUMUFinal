using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BNB(object sender, EventArgs e)
    {
        Response.Redirect("~/BNBOrderPage.aspx");
    }
    protected void Admin(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminLoginPage.aspx");
    }
    protected void Cafe(object sender, EventArgs e)
    {
        Response.Redirect("~/CafeOrderForm.aspx");
    }
    protected void Khic(object sender, EventArgs e)
    {
        Response.Redirect("~/KhicOrderForm.aspx");
    }
}