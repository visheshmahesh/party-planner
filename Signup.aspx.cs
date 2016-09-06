using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from USERS where NAME= '" + TxtName.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User Already Exists");

                }

                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into USERS (Name,Email,Password,ContactNo) values (@Name,@Email,@Password,@ContactNo)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Name", TxtName.Text);
                com.Parameters.AddWithValue("@Email", TxtEmail.Text);
                com.Parameters.AddWithValue("@Password", TxtPassword.Text);
                com.Parameters.AddWithValue("@ContactNo", TxtContact.Text);
                com.ExecuteNonQuery();
                Response.Write("Registration is Successful");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error:" + ex.Message());
            }
        }
    }

}  
