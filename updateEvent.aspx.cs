using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class updateEvent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);

            DataTable dt = new DataTable();
            conn.Open();
            SqlDataReader myReader = null;
            SqlCommand myCommand = new SqlCommand("SELECT EVENT_DETAILS.EventId,EVENT_DETAILS.CityId, EVENT_DETAILS.VenueId, EVENT_DETAILS.DATE, ITEM_DETAILS.Food, ITEM_DETAILS.Decoration,ITEM_DETAILS.Music,ITEM_DETAILS.Cake FROM EVENT_DETAILS INNER JOIN ITEM_DETAILS ON EVENT_DETAILS.UserId = ITEM_DETAILS.UserId ", conn);
            myReader = myCommand.ExecuteReader();

            while (myReader.Read())
            {
                tbxDate.Text = (myReader["DATE"].ToString());
                rbEvent.SelectedValue = (myReader["EventId"].ToString());
                this.ddlCity.SelectedValue = (myReader["CityId"].ToString());
                this.ddlVenue.SelectedValue = (myReader["VenueId"].ToString());
                this.rbFood.SelectedValue = (myReader["Food"].ToString());
                this.rbDecoration.SelectedValue = (myReader["Decoration"].ToString());
                this.rbMusic.SelectedValue = (myReader["Music"].ToString());
                this.rbCake.SelectedValue = (myReader["Cake"].ToString());
            }
            conn.Close();

        }
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);

        SqlCommand cmd = new SqlCommand("UPDATE EVENT_DETAILS SET DATE = @date, NoOfGuests = @guests, EventId = @event, VenueId= @venue where Id='" + Session["UseId"] + "'", conn);
        conn.Open();

        cmd.Parameters.AddWithValue("@date", tbxDate.Text);
        cmd.Parameters.AddWithValue("@guests", tbxGuests.Text);
        cmd.Parameters.AddWithValue("@event", this.rbEvent.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@city", this.ddlCity.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@venue", this.ddlVenue.SelectedValue.ToString());
        cmd.ExecuteNonQuery();
        conn.Close();

        SqlCommand cmd1 = new SqlCommand("UPDATE ITEM_DETAILS SET Food = @food, Decoration = @decoration, Music= @music, Cake= @cake where UserId='" + Session["UserId"] + "'", conn);
        conn.Open();

        cmd1.Parameters.AddWithValue("@food", this.rbFood.SelectedValue.ToString());
        cmd1.Parameters.AddWithValue("@music", this.rbMusic.SelectedValue.ToString());
        cmd1.Parameters.AddWithValue("@decoration", this.rbDecoration.SelectedValue.ToString());
        cmd1.Parameters.AddWithValue("@cake", this.rbCake.SelectedValue.ToString());
        cmd1.ExecuteNonQuery();
        conn.Close();

    }
}