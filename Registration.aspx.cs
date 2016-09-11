using System;
using System.Data.SqlClient;
using System.Configuration;
public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        try
        {
            if (tbxPassword.Text == tbxConfirmPassword.Text)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
                conn.Open();
                string getFields = "insert into USERS(Name,Email,Password,ContactNo,DOB) values(@name, @email, @password, @contactNo, @dob)";
                SqlCommand cmd = new SqlCommand(getFields, conn);
                cmd.Parameters.AddWithValue("@name", tbxName.Text);
                cmd.Parameters.AddWithValue("@email", tbxEmail.Text);
                cmd.Parameters.AddWithValue("@password", tbxPassword.Text);

                cmd.Parameters.AddWithValue("@contactNo", tbxContactNo.Text);
                cmd.Parameters.AddWithValue("@dob", tbxDOB.Text);

                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                conn.Close();
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