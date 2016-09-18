using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

public partial class passwordMailing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
            conn.Open();
            string getpassword = "select Password from USERS where Email ='" + tbxEmail.Text + "'";
            string getname = "select Name from USERS where Email ='" + tbxEmail.Text + "'";
            SqlCommand cmdpassword = new SqlCommand(getpassword, conn);
            SqlCommand cmdname = new SqlCommand(getname, conn);
            string password = cmdpassword.ExecuteScalar().ToString();
            string name = cmdname.ExecuteScalar().ToString();


            conn.Close();
            string activationCode = Guid.NewGuid().ToString();
            using (MailMessage mm = new MailMessage("visheshmhshwr@gmail.com", tbxEmail.Text))
            {
                mm.Subject = "Forgot Password";
                string body = "Hey " + name + ",  " + "Your Registered password is : " + password + "";
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("visheshmhshwr@gmail.com", "arv*01234");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
                Response.Write("<Script>alert('successfully sent')</Script>");
                //   Response.Redirect("Login.aspx");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<Script>alert('email not registered')</Script>");
        }
    }
    }
    
