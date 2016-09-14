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
        int temp,UserId;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
        conn.Open();
       
        string checkEmail = "select count(*) from USERS where Email='" + tbxEnterEmail.Text + "'";
        SqlCommand cmdEmail = new SqlCommand(checkEmail, conn);
        temp = Convert.ToInt32(cmdEmail.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkpassword = "select password from USERS where Email='" + tbxEnterEmail.Text + "'";
            string checkLoginAs = "select UserType from USERS where Email='" + tbxEnterEmail.Text + "'";
            SqlCommand cmdpassword = new SqlCommand(checkpassword, conn);
            SqlCommand cmdLoginAs = new SqlCommand(checkLoginAs, conn);
            string password = cmdpassword.ExecuteScalar().ToString();
            string LoginAs = cmdLoginAs.ExecuteScalar().ToString();

            string forUserId = "select UserId from USERS where Email='" + tbxEnterEmail.Text + "'";
            SqlCommand cmdUserId = new SqlCommand(forUserId, conn);
            UserId = Convert.ToInt32(cmdUserId.ExecuteScalar().ToString());

            Session["UserId"] = UserId;

            if (password == tbxEnterpassword.Text)
            {
                
                    if (LoginAs == "1")
                    {
                        Response.Write("logged in as admin");
                         Response.Redirect("gridView.aspx");
                   
                    }
                    else
                    {
                   
                        Response.Write("logged in as user");
                    Response.Redirect("createEvent.aspx");
                    }

                }
           
            Response.Redirect("user.aspx");

          //  Response.Write(Session["UserId"]);
        }
            else
            {
                Response.Write("Incorrect password");
            }
        }
    
        

        
        
    
}
    
