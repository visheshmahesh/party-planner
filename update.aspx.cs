using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);

        DataTable dt = new DataTable();
        conn.Open();
        SqlDataReader myReader = null;
        SqlDataReader myReader1 = null;
        SqlCommand myCommand = new SqlCommand("select * from EVENT_DETAILS where Id='" + Session["UserId"] + "'", conn);
        SqlCommand myCommand1 = new SqlCommand("select * from ITEM_DETAILS where EventId='" + Session["UserId"] + "'",conn);
        myReader = myCommand.ExecuteReader();
        conn.Close();
        conn.Open();
        while (myReader.Read())
        {
            tbxDate.Text = (myReader["DATE"].ToString());
          //  tbxGuests.Text = (myReader["NoOfGuests"].ToString());
            this.rbEvent.SelectedValue = (myReader["EventId"].ToString());
            this.rbCity.SelectedValue = (myReader["CityId"].ToString());
            this.rbVenue.SelectedValue = (myReader["VenueId"].ToString());
        }
        conn.Close();
        conn.Open();
        myReader1 = myCommand1.ExecuteReader();
      
        while (myReader1.Read())
        {
            this.rbFood.SelectedValue = (myReader1["Food"].ToString());
            this.rbMusic.SelectedValue = (myReader1["Decoration"].ToString());
            this.rbDecoration.SelectedValue = (myReader1["Music"].ToString());
            this.rbCake.SelectedValue = (myReader1["Cake"].ToString());
        }
        conn.Close();


    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
      
        SqlCommand cmd = new SqlCommand("UPDATE EVENT_DETAILS SET DATE = @date, EventId = @event, CityId = @city, VenueId= @venue where Id='" + Session["EventId"] + "'", conn);
        conn.Open();

        cmd.Parameters.AddWithValue("@date", tbxDate.Text);
     //   cmd.Parameters.AddWithValue("@guests", tbxGuests.Text);
        cmd.Parameters.AddWithValue("@event", this.rbEvent.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@city", this.rbCity.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@venue", this.rbVenue.SelectedValue.ToString());
        cmd.ExecuteNonQuery();
        conn.Close();

        SqlCommand cmd1 = new SqlCommand("UPDATE ITEM_DETAILS SET Food = @food, Decoration = @decoration, Music= @music, Cake= @cake where EventId='" + Session["EventId"] + "'", conn);
        conn.Open();

        cmd1.Parameters.AddWithValue("@food", this.rbFood.SelectedValue.ToString());
        cmd1.Parameters.AddWithValue("@music", this.rbMusic.SelectedValue.ToString());
        cmd1.Parameters.AddWithValue("@decoration", this.rbDecoration.SelectedValue.ToString());
        cmd1.Parameters.AddWithValue("@cake", this.rbCake.SelectedValue.ToString());
        cmd1.ExecuteNonQuery();
        conn.Close();


    }
}