using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        int temp, UserId; //declaring variables
        string UserName;

        if (tbxEnterEmail.Text == "" || tbxEnterpassword.Text == "")
        {
            Response.Write("<script>alert('Please Enter All The Details')</script>");
        }
        
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString); //defining connection string
            conn.Open(); //opening connection string
            string checkEmail = "select count(*) from USERS where Email='" + tbxEnterEmail.Text + "'"; //checking email from the table
            SqlCommand cmdEmail = new SqlCommand(checkEmail, conn);
            temp = Convert.ToInt32(cmdEmail.ExecuteScalar().ToString()); //Converting to int and Executes the query, and returns the first column of the first row
            conn.Close(); //closing connection string
            if (temp == 1)
            {
                string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(tbxEnterpassword.Text, "SHA1");
                conn.Open();
                string checkpassword = "select password from USERS where Email='" + tbxEnterEmail.Text + "'"; //assigning password into variable checkpassword from the table
                string checkLoginAs = "select UserType from USERS where Email='" + tbxEnterEmail.Text + "'"; //assigning  Usertype into variable checkloginas from the table
                SqlCommand cmdpassword = new SqlCommand(checkpassword, conn);
                SqlCommand cmdLoginAs = new SqlCommand(checkLoginAs, conn);
                string password = cmdpassword.ExecuteScalar().ToString();
                string LoginAs = cmdLoginAs.ExecuteScalar().ToString();

                string forUserId = "select UserId from USERS where Email='" + tbxEnterEmail.Text + "'";
                SqlCommand cmdUserId = new SqlCommand(forUserId, conn);
                UserId = Convert.ToInt32(cmdUserId.ExecuteScalar().ToString());
                Session["UserId"] = UserId;

                string forUserName = "select Name from USERS where Email='" + tbxEnterEmail.Text + "'";
                SqlCommand cmdUserName = new SqlCommand(forUserName, conn);
                UserName = cmdUserName.ExecuteScalar().ToString();

               

                if (password == EncryptedPassword)
                {
                    Session["UserName"] = UserName;

                    if (LoginAs == "1")
                    {
                        Response.Redirect("AdminPanel.aspx");
                    }
                    else
                    {
                        Response.Redirect("createUpdate.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Details')</script>");
                }

            }
        }
    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        string hash = FormsAuthentication.HashPasswordForStoringInConfigFile(tbxPassword.Text, "SHA1");


        try
        {
            int UserId = 0, temp;
            if(tbxPassword.Text== "" || tbxConfirmPassword.Text == "" || tbxEmail.Text== "" || tbxName.Text== "" || tbxDOB.Text=="")
            {
                Response.Write("<script>alert('Please Enter All The Details')</script>");

            }
            else if (tbxPassword.Text == tbxConfirmPassword.Text )
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
                conn.Open();

                string checkEmail = "select count(*) from USERS where Email='" + tbxEmail.Text + "'";
                SqlCommand cmdEmail = new SqlCommand(checkEmail, conn);
                temp = Convert.ToInt32(cmdEmail.ExecuteScalar().ToString());
                conn.Close();

                if (temp == 1)
                {
                    Response.Write("<script>alert('Email already registered,please try another email')</script>");

                }
                else
                {
                    conn.Open();

                    string getFields = "insert into USERS(Name,Email,Password,DOB,UserType) values(@name, @email, @password,  @dob,@UserType)";
                    SqlCommand cmd = new SqlCommand(getFields, conn);
                    cmd.Parameters.AddWithValue("@name", tbxName.Text);
                    cmd.Parameters.AddWithValue("@email", tbxEmail.Text);
                    cmd.Parameters.AddWithValue("@password", hash);

                    cmd.Parameters.AddWithValue("@dob", tbxDOB.Text);
                    cmd.Parameters.AddWithValue("@UserType", ddlLoginAs.SelectedValue.ToString());
                    UserId = Convert.ToInt32(cmd.ExecuteNonQuery());
                    string forUserId = "select UserId from USERS where Email='" + tbxEmail.Text + "'";
                    SqlCommand cmdUserId = new SqlCommand(forUserId, conn);
                    UserId = Convert.ToInt32(cmdUserId.ExecuteScalar().ToString());
                    Session["UserId"] = UserId;

                    conn.Close();
                    Response.Write("registered successfully");
                    Response.Redirect("update.aspx");
                }




            }
            else
                Response.Write("<script>alert('Password Do Not Match')</script>");

        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }


}
    
