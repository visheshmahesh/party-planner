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
        Response.Write(Session["UserName"]);
        try
        {
            {
                int selectValue1 = Convert.ToInt32(this.rbEvent.SelectedValue);
                int selectValue2 = Convert.ToInt32(this.rbCity.SelectedValue);
                int selectValue3 = Convert.ToInt32(this.rbVenue.SelectedValue);               
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
                conn.Open();

                    string forEventId = "select * from EVENT_DETAILS where UserId='" + Session["UserId"] + "'";
                //AND CityId='" + selectValue2 + "' AND Date='" + tbxDate.Text + "'";

                SqlDataReader myReader = null;
                SqlCommand cmdEventId = new SqlCommand(forEventId, conn);
                myReader = cmdEventId.ExecuteReader();
                
                //EventId = Convert.ToInt32(cmdEventId.ExecuteScalar().ToString());
                if (myReader.Read())
                {
                    Session["EventId"] = Convert.ToInt32(myReader[1]);
                    //Response.Write(Session["EventId"]);

                }
                conn.Close();
                //string venueId = "select Name from VENUE where City=1";
                //SqlCommand cmdvenue = new SqlCommand(venueId, conn);

                //Response.Write(venueId);


                string getFields = "insert into EVENT_DETAILS(UserId,EventId,CityId,VenueId,Date,NoOfGuests) values(@UserId,@event,@city,@venue,@date,@noOfGuests)";
                SqlCommand cmd = new SqlCommand(getFields, conn);
                cmd.Parameters.AddWithValue("@UserId",Convert.ToInt32(Session["UserId"]));
               // UserId = Session["UserId"];
                cmd.Parameters.AddWithValue("@event", selectValue1);
                cmd.Parameters.AddWithValue("@city", selectValue2);
                cmd.Parameters.AddWithValue("@venue", selectValue3);
                cmd.Parameters.AddWithValue("@date", tbxDate.Text);
                cmd.Parameters.AddWithValue("@noOfGuests", tbxGuests.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                 Response.Redirect("addons.aspx");
                Response.Write(Session["EventId"]);

            }
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
}
