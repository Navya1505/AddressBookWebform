using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AddressBook.Webforms
{
    public partial class RegisterContactForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static string connectionString = ConfigurationManager.ConnectionStrings["UserDBConnectionString"].ConnectionString;
        SqlConnection connection=new SqlConnection(connectionString);
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("AdressformCredentials", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@FirstName", TextBox1.Text);
            command.Parameters.AddWithValue("@LastName", TextBox2.Text);
            command.Parameters.AddWithValue("@Address", TextBox3.Text);
            command.Parameters.AddWithValue("@City", TextBox4.Text);
            command.Parameters.AddWithValue("@State", DropDownList1.SelectedValue);
            command.Parameters.AddWithValue("@PinCode", TextBox5.Text);
            command.Parameters.AddWithValue("@PhoneNumber", TextBox6.Text);
            command.Parameters.AddWithValue("@Email",TextBox7.Text);    
            connection.Open();
            var datareader=command.ExecuteReader();
            if(datareader!= null)
            {
                Session["form"] = datareader;
                Response.Redirect("HomePage.aspx");
                Label9.Text = "Details inserted successfully in to Dasebase";
              
            }
            else
            {
                Label9.Text = "Not inserted into database";

            }
            connection.Close();
        }


        protected void Button1_Click(object sender,EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}