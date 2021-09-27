using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class AdminLoginPage : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data source=silver.mountunion.edu;initial catalog=OrderFood; " +
           "Persist Security Info=True; User ID=OrderFood; Password=nORTH5Art2";
        con.Open();
    }

    protected void LoginBtn_Click(object sender, EventArgs e)
    {
        
        string username = "";
        string password = "";


        cmd.CommandText = "SELECT * FROM AdminTable WHERE Username ='" + UserNameTxt.Text +
            "'and Password='" + PasswordTxt.Text + "'"; //Select Username and password to login. Also pull permission to load correct session
        cmd.Connection = con;
        da.SelectCommand = cmd;
        da.Fill(ds, "AdminTable");



        if (ds.Tables[0].Rows.Count > 0)//Test if any rows username and password match. Search through the column and get permission
        {

            username = Convert.ToString(ds.Tables[0].Rows[0].ItemArray[0]);
            password = Convert.ToString(ds.Tables[0].Rows[0].ItemArray[0]);



            //lblTest.Text = "Data is found";
            //lblPermTest.Text = "perm: " + perm;
            //lblUsernameTest.Text = "username: " + username;
          

            Session["username"] = username;
            Session["password"] = password;
            if (UserNameTxt.Text.Equals("CafeAdmin") && PasswordTxt.Text.Equals("Password1")) {
                Response.Redirect("CafeAdmin.aspx", false);
                con.Close();
            }
        }
        if (ds.Tables[0].Rows.Count > 0)//Test if any rows username and password match. Search through the column and get permission
        {

            username = Convert.ToString(ds.Tables[0].Rows[0].ItemArray[0]);
            password = Convert.ToString(ds.Tables[0].Rows[0].ItemArray[0]);



            //lblTest.Text = "Data is found";
            //lblPermTest.Text = "perm: " + perm;
            //lblUsernameTest.Text = "username: " + username;


            Session["username"] = username;
            Session["password"] = password;
            if (UserNameTxt.Text.Equals("B&BAdmin") && PasswordTxt.Text.Equals("Password123"))
            {
                Response.Redirect("BNBAdmin.aspx", false);
                con.Close();
            }
        }
        if (ds.Tables[0].Rows.Count > 0)//Test if any rows username and password match. Search through the column and get permission
        {

            username = Convert.ToString(ds.Tables[0].Rows[0].ItemArray[0]);
            password = Convert.ToString(ds.Tables[0].Rows[0].ItemArray[0]);



            //lblTest.Text = "Data is found";
            //lblPermTest.Text = "perm: " + perm;
            //lblUsernameTest.Text = "username: " + username;


            Session["username"] = username;
            Session["password"] = password;
            if (UserNameTxt.Text.Equals("KhicAdmin") && PasswordTxt.Text.Equals("Password1234"))
            {
                Response.Redirect("KhicAdmin.aspx", false);
                con.Close();
            }
        }
        else
        {
            Response.Write(@"<script langauge='text/javascript'>alert('Username or Password is incorrect.');</script>");

            //lblTest.Text = "Data is NOT found";
            //lblPermTest.Text = "perm: " + null;
            //lblUsernameTest.Text = "username: " + null;
        }


    }
}

