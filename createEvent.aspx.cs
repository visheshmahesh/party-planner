using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class createEvent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        try
        {
          
            
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
                conn.Open();
                string getFields = "insert into EVENT_DETAILS(Event,Date,City,Venue,NoOfGuests) values(@event,@date,@city,@venue,@noOfGuests)";
                SqlCommand cmd = new SqlCommand(getFields, conn);
                cmd.Parameters.AddWithValue("@event", ddlEvent.Text);
                cmd.Parameters.AddWithValue("@date", tbxDate.Text);
                cmd.Parameters.AddWithValue("@city", ddlCity.Text);

                cmd.Parameters.AddWithValue("@venue", tbxVenue.Text);
                cmd.Parameters.AddWithValue("@noOfGuests", tbxGuests.Text);

                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                conn.Close();
            
         
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
}
