using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        int temp;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
        conn.Open();
        string checkEmail = "select count(*) from USERS where Email='" + tbxEnterEmail.Text + "'";
        SqlCommand cmdEmail = new SqlCommand(checkEmail, conn);
        temp = Convert.ToInt32(cmdEmail.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPassword = "select Password from USERS where Email='" + tbxEnterEmail.Text + "'";
            SqlCommand cmdPassword = new SqlCommand(checkPassword, conn);
            string password = cmdPassword.ExecuteScalar().ToString();
            if (password == tbxEnterPassword.Text)
            {
                Response.Redirect("Event.aspx");
            }
            else
            {
                Response.Write("Incorrect Password");
            }
        }
        else
        {
            Response.Write("Invalid Email");
        }
        

        
        
    }
}
    
