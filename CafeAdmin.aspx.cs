using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration; // for ConfigurationManager
using System.Data.SqlClient; // for SqlConnection, SqlCommand, and SqlDataReader
using System.Data;

public partial class CafeAdmin : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader dr;
    string connectionString;
    ListItem listItem;
    int numRowsAffected;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getListBox();
        }
        this.DataBind();
    }
    private void BindData()
    {
        string test = ConfigurationManager.ConnectionStrings["OrderFoodConnectionString"].ConnectionString;
        string test2 = "SELECT * FROM CafeTable";
        using (SqlConnection con = new SqlConnection(test))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter(test2, con))
            {
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }
    private void getListBox()
    {
        ListItem[] x = (ListItem[])Session["wrd1"];
        OrderListBox.Items.AddRange(x);
    }
    protected void AddFoodButton_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection(getConnectionString());
        conn.Open();
        cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO CafeTable (FoodType, Price, Allergies, Wait, FoodId) VALUES ('"
        + NameTextBox.Text + "','" + PriceTextBox.Text + "','" + AllergiesTextBox.Text + "','" + WaitTxtBx.Text + "','" + FoodIdTxtBx.Text +"')";
        try
        {
            numRowsAffected = cmd.ExecuteNonQuery();
            if (numRowsAffected == 1)
            {
                CafeAdminSDS.Insert();
                NameTextBox.Text = "";
                PriceTextBox.Text = "";
                AllergiesTextBox.Text = "";
                WaitTxtBx.Text = "";
                FoodIdTxtBx.Text = "";
            }

        }
        catch (Exception ex)
        {

        }
        conn.Close();
        GridView1.DataBind();
    }
    private string getConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["OrderFoodConnectionString"].ConnectionString;
    } // end of getConnectionString

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridView1.SelectedIndex = -1;
    }
    protected void DeleteItemBtn_Click(object sender, EventArgs e)
    {
        List<ListItem> itemsToRemove = new List<ListItem>();

        foreach (ListItem listItem in OrderListBox.Items)
        {
            if (listItem.Selected)
                itemsToRemove.Add(listItem);
        }

        foreach (ListItem listItem in itemsToRemove)
        {
            OrderListBox.Items.Remove(listItem);
        }
    }
}
