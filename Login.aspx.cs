using System;http://localhost:54829/App_Data/dbParty.mdf
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn= new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
     
        conn.Open();
        string checkuser = "select count(*) from USERS where NAME= '" + TxtUserName.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.open();
            string checkPasswordQuery = "select password from USERS where Name= '" + TxtUserName.Text + "'";
            SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
            string password = passCom.ExecuteScalor().Tostring();
            if(password==TxtPassword.Text)
            {
                Session["New"] = TxtUserName.Text;
                Response.Write("password is correct");
            
            }
            else
            {
                Response.Write("password is incorrect");
            }



        }
    }
}