using System;
using System.Data.SqlClient;
using System.Configuration;
public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        try
        {
            int UserId = 0,temp;
            if (tbxPassword.Text == tbxConfirmPassword.Text)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
                conn.Open();
                string getFields = "insert into USERS(Name,Email,Password,ContactNo,DOB,UserType) values(@name, @email, @password, @contactNo, @dob,@UserType)";
                SqlCommand cmd = new SqlCommand(getFields, conn);
                string checkEmail= "select count(*) from USERS where Email='" + tbxEmail.Text + "'";
                SqlCommand cmdEmail = new SqlCommand(checkEmail, conn);
                temp = Convert.ToInt32(cmdEmail.ExecuteScalar().ToString());
                cmd.Parameters.AddWithValue("@name", tbxName.Text);
                cmd.Parameters.AddWithValue("@email", tbxEmail.Text);
                cmd.Parameters.AddWithValue("@password", tbxPassword.Text);
              
                cmd.Parameters.AddWithValue("@contactNo", tbxContactNo.Text);
                cmd.Parameters.AddWithValue("@dob", tbxDOB.Text);
                cmd.Parameters.AddWithValue("@UserType", ddlLoginAs.SelectedValue.ToString());
                UserId = Convert.ToInt32(cmd.ExecuteNonQuery());
                
               Response.Redirect("Login.aspx");
                conn.Close();

                if (temp == 1)
                {
                    Response.Write("Email already registered,please try another email");

                }
                else
                {
                    Response.Write("registered successfully");
                    Response.Write("createEvnet.aspx");
                }
            
                 
                

            }
            else
                Response.Write("Passwords do not match");

        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
}