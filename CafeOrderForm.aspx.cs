using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;  // for ConfigurationManager
using System.Data.SqlClient; // for SqlConnection, SqlCommand, and SqlDataReader
using System.Data;           // for CommandType

public partial class CafeOrderForm : System.Web.UI.Page
{ 
 SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    string connectionString;
    ListItem listItem;
    int numRowsAffected;
    //double totalSum = 0;
    protected void Page_Load(object sender, EventArgs e)
{
    //realPriceLbl2.Text = Convert.ToString(totalSum);
}

//protected double getTotalSum()
//{

//    return totalSum;
//}

/* protected void setTotalSum(double Value)
 {
     string valu = realPriceLbl.Text;
     Value = Convert.ToDouble(valu);
     totalSum = Value + price;
 } */
protected void BNBgv_SelectedIndexChanged(object sender, EventArgs e)
{
    string strFoodID = BNBgv.SelectedRow.Cells[1].Text;
    string name = BNBgv.SelectedRow.Cells[1].Text;
    string price = BNBgv.SelectedRow.Cells[2].Text;
    string allergies = BNBgv.SelectedRow.Cells[3].Text;
    string wait = BNBgv.SelectedRow.Cells[4].Text;

    Food tempFood = new Food(name, allergies, price, wait);
    BNBListBox.Items.Add(new ListItem(tempFood.ToString(), strFoodID));
        realPriceLbl.Text = price;
        realWaitLbl1.Text = wait;

    //if (realPriceLbl.Text == "")
    //{
    //    realPriceLbl.Text = price;
    //    realPriceLbl.Visible = true;

    //}
    //else
    //{
    //    realPriceLbl.Visible = false;
    //    realPriceLbl2.Text = realPriceLbl.Text;
    //    realPriceLbl.Text = "";
    //    realPriceLbl.Text = price;
    //    decimal price1 = Convert.ToDecimal(realPriceLbl.Text);
    //    decimal price2 = Convert.ToDecimal(realPriceLbl2.Text);
    //    decimal sum = price1 + price2;
    //    string finalSum = Convert.ToString(sum);
    //    realPriceLbl3.Text = finalSum;
    //    realPriceLbl.Text = finalSum;

    //}
    //if (realWaitLbl1.Text == "")
    //{
    //    realWaitLbl1.Text = wait;
    //    realWaitLbl1.Visible = true;

    //}
    //else
    //{
    //    realWaitLbl1.Visible = false;
    //    realWaitLbl2.Text = realWaitLbl1.Text;
    //    realWaitLbl1.Text = "";
    //    realWaitLbl1.Text = wait;
    //    decimal wait1 = Convert.ToDecimal(realWaitLbl1.Text);
    //    decimal wait2 = Convert.ToDecimal(realWaitLbl2.Text);
    //    decimal waitSum = wait1 + wait2;
    //    string finalWaitSum = Convert.ToString(waitSum);
    //    realWaitLbl3.Text = finalWaitSum;
    //    realWaitLbl1.Text = finalWaitSum;

    
    //} if () {
    //    realPriceLbl.Text.Equals(price + realPriceLbl.Text);
    //    decimal price2 = Convert.ToDecimal(price);
    //    string price4 = realPriceLbl.Text;
    //    decimal price1 = Convert.ToDecimal(price4);
    //    decimal sum = price1 + price2;
    //    string price3 = Convert.ToString(sum);
    //    realPriceLbl2.Text = price3;
    //}



    // string pricelbl = realPriceLbl.Text;
    // realPriceLbl.Text = realPriceLbl.Text + price;
    //double price1 = Convert.ToDouble(price);
    //string valu = realPriceLbl.Text;
    //double Value = Convert.ToDouble(valu);
    //totalSum = Value + price1;
}

protected void DeleteBtn_Click(object sender, EventArgs e)
{
        realPriceLbl.Text = "";
        realPriceLbl2.Text = "";
        realPriceLbl3.Text = "";
        realWaitLbl1.Text = "";
        realWaitLbl2.Text = "";
        realWaitLbl3.Text = "";
        BNBListBox.Items.Clear();
    }

protected void SubmitBtn_Click(object sender, EventArgs e)
{

    ListItem[] x = new ListItem[BNBListBox.Items.Count];

    BNBListBox.Items.CopyTo(x, 0);
    Session["lbl1"] = realPriceLbl.Text;
    Session["lbx1"] = realWaitLbl1.Text;
    Session["wrd1"] = x;
    Response.Redirect("~/ThankCafe.aspx");
    Server.Transfer("~/CafeAdmin.aspx");

}
}

    