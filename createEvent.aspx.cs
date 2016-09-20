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

     
       if (Session["UserName"]!=null|| Session["UserId"] != null)
        {
           
        }
       else
        {
            Session["UserName"] = null;
            Session["UserId"] = null;
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
           
           
                lblWelcome.Text += Session["UserName"].ToString();
            
           
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
        string currentDate = DateTime.Now.ToString("yyyy-MM-dd");
        string dob = tbxDate.Text;
        int result = string.Compare(currentDate, dob);
        if (result > 0 || result == 0)
        {
           
            Response.Write("<script>alert('Please choose valid date')</script>");
            tbxDate.Text = String.Empty;
        }
        else
        {

            try
            {

                int selectValue1 = Convert.ToInt32(this.rbEvent.SelectedValue);
                string selectValue2 = this.rbFood.SelectedValue;
                string selectValue3 = this.rbMusic.SelectedValue;
                string selectValue4 = this.rbDecoration.SelectedValue;
                string selectValue5 = this.rbCake.SelectedValue;
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);

                conn.Open();
                int VenueId, CityId;
                string getFields = "insert into EVENT_DETAILS(UserId,CityId,EventId,VenueId,DATE,Food,Music,Decoration,Cake) values(@UserId,@city,@event,@venue,@date,@Food,@Music,@Decoration,@Cake)";
                SqlCommand cmd = new SqlCommand(getFields, conn);
                string forVenueId = "select VenueId from VENUE where Name='" + ddlVenue.SelectedValue.ToString() + "'";
                SqlCommand cmdVenueId = new SqlCommand(forVenueId, conn);
                VenueId = Convert.ToInt32(cmdVenueId.ExecuteScalar().ToString());

                string forCityId = "select CityId from CITY where Name='" + ddlCity.SelectedValue.ToString() + "'";
                SqlCommand cmdCityId = new SqlCommand(forCityId, conn);
                CityId = Convert.ToInt32(cmdCityId.ExecuteScalar().ToString());

                cmd.Parameters.AddWithValue("@UserId", Convert.ToInt32(Session["UserId"]));
                cmd.Parameters.AddWithValue("@event", selectValue1);
                cmd.Parameters.AddWithValue("@city", CityId);
                cmd.Parameters.AddWithValue("@venue", VenueId);
                cmd.Parameters.AddWithValue("@date", tbxDate.Text);
                cmd.Parameters.AddWithValue("@Food", selectValue2);
                cmd.Parameters.AddWithValue("@Music", selectValue3);
                cmd.Parameters.AddWithValue("@Decoration", selectValue4);
                cmd.Parameters.AddWithValue("@Cake", selectValue5);

                cmd.ExecuteNonQuery();
                conn.Close();


                //   Response.Write("Congratulations , you have successfully booked your event");
                Response.Redirect("Success.aspx");

            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Session["UserId"] = null;
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

    protected void change_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
        conn.Open();
        string VenueId;

        string forVenueId = "select VenueId from VENUE where Name='" + ddlVenue.SelectedValue.ToString() + "'";
        SqlCommand cmdVenueId = new SqlCommand(forVenueId, conn);
        VenueId = cmdVenueId.ExecuteScalar().ToString();
        conn.Close();
        tbxVenueId.Text = VenueId;
    }

}





