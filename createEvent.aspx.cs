using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class createEvent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if(Session["UserName"]!=null)
        {
            Response.Write("WELCOME");
            Response.Write(Session["UserName"]);
        }
       else
        {
            Session["UserName"] = null;
        }
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
            DataSet ds = new DataSet();
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select Name from CITY", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                ddlCity.DataTextField = ds.Tables[0].Columns["Name"].ToString();
                ddlCity.DataSource = ds.Tables[0];
                ddlCity.DataBind();
                conn.Close();


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        Response.Write(Session["UserName"]);
        try
        {

            int selectValue1 = Convert.ToInt32(this.rbEvent.SelectedValue);
            string selectValue2 = this.rbFood.SelectedValue;
            string selectValue3 = this.rbMusic.SelectedValue;
            string selectValue4 = this.rbDecoration.SelectedValue;
            string selectValue5 = this.rbCake.SelectedValue;
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
            conn.Open();
            int VenueId,CityId;
            string getFields = "insert into EVENT_DETAILS(UserId,CityId,EventId,VenueId,Date) values(@UserId,@city,@event,@venue,@date)";
            SqlCommand cmd = new SqlCommand(getFields, conn);
            string forVenueId = "select VenueId from VENUE where Name='" + ddlVenue.SelectedValue.ToString() + "'";
            SqlCommand cmdVenueId = new SqlCommand(forVenueId, conn);
            VenueId = Convert.ToInt32(cmdVenueId.ExecuteScalar().ToString());

            string forCityId = "select CityId from CITY where Name='" + ddlCity.SelectedValue.ToString() + "'";
            SqlCommand cmdCityId = new SqlCommand(forCityId, conn);
            CityId = Convert.ToInt32(cmdCityId.ExecuteScalar().ToString());
            conn.Close();


            cmd.Parameters.AddWithValue("@UserId", Convert.ToInt32(Session["UserId"]));
            // UserId = Session["UserId"];
            cmd.Parameters.AddWithValue("@event", selectValue1);
            cmd.Parameters.AddWithValue("@city",CityId);
            //     cmd.Parameters.AddWithValue("@city", selectValue2);
            cmd.Parameters.AddWithValue("@venue",VenueId);
            cmd.Parameters.AddWithValue("@date", tbxDate.Text);
           // cmd.Parameters.AddWithValue("@noOfGuests", tbxGuests.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            //conn.Close();
            // Response.Redirect("addons.aspx");
            // SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
            //conn.Open();
            string getField = "insert into ITEM_DETAILS(UserId,Food,Music,Decoration,Cake) values(@UserId,@Food,@Music,@Decoration,@Cake)";

            SqlCommand cmd1 = new SqlCommand(getField, conn);
            cmd1.Parameters.AddWithValue("@UserId", Convert.ToInt32(Session["UserId"]));

            cmd1.Parameters.AddWithValue("@Food", selectValue2);

            cmd1.Parameters.AddWithValue("@Music", selectValue3);
            cmd1.Parameters.AddWithValue("@Decoration", selectValue4);
            cmd1.Parameters.AddWithValue("@Cake", selectValue5);


            cmd.ExecuteNonQuery();
            Response.Write("Congratulations , you have successfully booked your event");
            //Response.Redirect(".aspx");
            conn.Close();
            Response.Write(Session["EventId"]);
            Response.Write("you have Registered your Event Successfully, you can also update your event here.");
            Response.Redirect("CreateEvent.html");


        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");

    }
    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
            SqlCommand cmdcity = new SqlCommand("select CityId from CITY where Name='" + ddlCity.SelectedIndex.ToString() + "' ", conn);
            DataSet ds = new DataSet();
            conn.Open();
            cmdcity.ExecuteNonQuery();
            //int cityid = Convert.ToInt32(cmdcity.ExecuteScalar().ToString());
            Session["City"] = ddlCity.SelectedIndex + 1;
            SqlCommand cmd = new SqlCommand("Select Name from VENUE where City='" + Session["City"] + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            ddlVenue.DataTextField = ds.Tables[0].Columns["Name"].ToString();
            ddlVenue.DataSource = ds.Tables[0];
            ddlVenue.DataBind();
            conn.Close();


        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

}
       
           
   
     

