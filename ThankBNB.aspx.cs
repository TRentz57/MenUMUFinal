using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThankBNB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getLabel();
            getListBox();
            getWait();
        }
    }
    private void getLabel()
    {
        string lbl = Session["lbl"].ToString();
        priceLbl.Text = lbl;
    }
     private void getWait()
    {
        string lbx = Session["lbx"].ToString();
        waitslbl.Text = lbx;
    }
    private void getListBox()
    {
        ListItem[] x = (ListItem[])Session["wrd"];
        listBox.Items.AddRange(x);
    }

    protected void submitBnt_Click(object sender, EventArgs e)
    {
        ListItem[] x = new ListItem[listBox.Items.Count];

        listBox.Items.CopyTo(x, 0);
        Session["wrd"] = x;
        Response.Redirect("~/MainPage.aspx");
        Server.Transfer("~/BNBAdmin.aspx");
    }
}