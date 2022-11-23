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
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)

        {
            Response.Redirect("RegisterContactForm.aspx");
        }
        static string str = ConfigurationManager.ConnectionStrings["UserDBConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(str);
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Id = Convert.ToInt32(Gridview1.DataKeys[e.RowIndex].Value.ToString());

            connection.Open();
            SqlCommand command = new SqlCommand("delete from AddressDetails where Id='" + Id + "'", connection);
            int t = command.ExecuteNonQuery();
            connection.Close();
            if (t > 0)
            {
                Gridview1.EditIndex = -1;
                Gridview1.DataBind();
            }
        }
    }
}