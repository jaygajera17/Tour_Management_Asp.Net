using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tour_Management
{
    public partial class SignUpForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into UserInfo(Email,FirstName,LastName,Gender,Password,dob,Street,City,State) values(@email,@FirstName,@LastName,@Gender,@Password,@dob,@Street,@City,@State)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@Email", email.Text);
            com.Parameters.AddWithValue("@FirstName", fname.Text);
            com.Parameters.AddWithValue("@LastName", lname.Text);
            com.Parameters.AddWithValue("@Gender", gender.Text);
            com.Parameters.AddWithValue("@Password", password1.Text);
            com.Parameters.AddWithValue("@dob", dob.Text);
            com.Parameters.AddWithValue("@Street", street.Text);
            com.Parameters.AddWithValue("@City", city.Text);
            com.Parameters.AddWithValue("@State", state.Text);

            com.ExecuteNonQuery();
            Response.Write("Registration Successful");
            Response.Redirect("userlogin.aspx");
            Server.Transfer("usercrud.aspx");
            conn.Close();

        }
           
}
    }
