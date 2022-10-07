using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Tour_Management
{
    public partial class TourCrud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                refreshdata();
            }
        }
        public void refreshdata()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            conn.Open();
            string insertQuery = "select * from Tour";
            SqlCommand com = new SqlCommand(insertQuery, conn);
          // GridView1.DataSource = insertQuery;
           // GridView1.DataBind();


            // SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        //    SqlCommand cmd = new SqlCommand("select * from tbl_data", con);
         //   SqlDataAdapter sda = new SqlDataAdapter(cmd);
           // DataTable dt = new DataTable();
            //sda.Fill(dt);
           // GridView1.DataSource = dt;
            //GridView1.DataBind();


        }

       
    }
}