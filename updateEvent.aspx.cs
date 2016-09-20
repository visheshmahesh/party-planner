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
        int temp;
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
        conn1.Open();

        string checkEmail = "select count(*) from EVENT_DETAILS where UserId='" + Session["UserId"] + "'";
        SqlCommand cmdEmail = new SqlCommand(checkEmail, conn1);
        temp = Convert.ToInt32(cmdEmail.ExecuteScalar().ToString());
        conn1.Close();
        if(temp==0)
        {
            Response.Redirect("createUpdate.aspx");
        }

        if (!IsPostBack)
        {
            lblWelcome.Text += Session["UserName"].ToString();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);

            DataTable dt = new DataTable();
            conn.Open();
            SqlDataReader myReader = null;
            SqlCommand myCommand = new SqlCommand("SELECT * FROM EVENT_DETAILS WHERE UserId='" + Session["UserId"] + "'", conn);
            myReader = myCommand.ExecuteReader();

            while (myReader.Read())
            {
                
                rbEvent.SelectedValue = (myReader["EventId"].ToString());
                this.ddlCity.SelectedValue = (myReader["CityId"].ToString());
                this.ddlVenue.SelectedValue = (myReader["VenueId"].ToString());
                tbxDate.Text = (myReader["DATE"].ToString());
                this.rbFood.SelectedValue = (myReader["Food"].ToString());
                this.rbDecoration.SelectedValue = (myReader["Decoration"].ToString());
                this.rbMusic.SelectedValue = (myReader["Music"].ToString());
                this.rbCake.SelectedValue = (myReader["Cake"].ToString());
            }
            conn.Close();

        }
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Session["UserId"] = null;
        Response.Redirect("Login.aspx");

    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);

        conn.Open();
        SqlCommand cmd1 = new SqlCommand("UPDATE EVENT_DETAILS SET  EventId = @event, CityId=@city, VenueId= @venue, DATE = @date, Food = @food, Decoration = @decoration, Music= @music, Cake= @cake where UserId='" + Session["UserId"] + "'", conn);
       
       
        cmd1.Parameters.AddWithValue("@event", this.rbEvent.SelectedValue.ToString());
        cmd1.Parameters.AddWithValue("@city", this.ddlCity.SelectedValue.ToString());
        cmd1.Parameters.AddWithValue("@venue", this.ddlVenue.SelectedValue.ToString());
        cmd1.Parameters.AddWithValue("@date", tbxDate.Text);
        cmd1.Parameters.AddWithValue("@food", this.rbFood.SelectedValue.ToString());
        cmd1.Parameters.AddWithValue("@music", this.rbMusic.SelectedValue.ToString());
        cmd1.Parameters.AddWithValue("@decoration", this.rbDecoration.SelectedValue.ToString());
        cmd1.Parameters.AddWithValue("@cake", this.rbCake.SelectedValue.ToString());
        cmd1.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("Success.aspx");

    }
    protected void change_Click(object sender, EventArgs e)
    {
        string VenueId;
        VenueId = this.ddlVenue.SelectedValue.ToString();

        tbxVenueId.Text = VenueId;
    }

}
