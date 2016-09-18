using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class eventView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridViewDataEvent();
        }
        if (Session["UserName"] != null || Session["UserId"] != null)
        {

        }
        else
        {
            Session["UserName"] = null;
            Session["UserId"] = null;
            Response.Redirect("Login.aspx");
        }


    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Session["UserId"] = null;
        Response.Redirect("Login.aspx");

    }
    protected void BindGridViewDataEvent()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
        try
        {
            string getfields = "SELECT * from EVENT_DETAILS";
            SqlCommand cmd = new SqlCommand(getfields, conn);
            conn.Open();
            GridViewDataEvent.DataSource = cmd.ExecuteReader();
            GridViewDataEvent.DataBind();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
    protected void GridViewDataEvent_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "EditRow")
        {
            int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
            GridViewDataEvent.EditIndex = rowIndex;
            BindGridViewDataEvent();
        }


        else if (e.CommandName == "CancelUpdate")
        {
            GridViewDataEvent.EditIndex = -1;
            BindGridViewDataEvent();

        }


    }
    protected void GridViewDataEvent_UpdateRow(Object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridViewDataEvent.Rows[e.RowIndex];
        Label UserId = (Label)row.FindControl("lblUserId");
        TextBox tbxEventId = (TextBox)row.FindControl("tbxEventId");
        TextBox tbxCityId = (TextBox)row.FindControl("tbxCityId");
        TextBox tbxVenueId = (TextBox)row.FindControl("tbxVenueId");
        TextBox tbxDate = (TextBox)row.FindControl("tbxDate");
        TextBox tbxFood = (TextBox)row.FindControl("tbxFood");
        TextBox tbxDecoration = (TextBox)row.FindControl("tbxDecoration");
        TextBox tbxMusic = (TextBox)row.FindControl("tbxMusic");
        TextBox tbxCake = (TextBox)row.FindControl("tbxCake");

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
        string updateFields = "update EVENT_DETAILS set EventId=@eventId, CityId=@cityId, VenueId=@venueId, DATE=@date, Food=@food, Decoration=@decoration, Music=@music, Cake=@cake where UserId=@userId";
        try
        {
            SqlCommand cmd = new SqlCommand(updateFields, conn);
            conn.Open();
            cmd.Parameters.AddWithValue("@userId", UserId.Text);
            cmd.Parameters.AddWithValue("@eventId", tbxEventId.Text);
            cmd.Parameters.AddWithValue("@cityId", tbxCityId.Text);
            cmd.Parameters.AddWithValue("@venueId", tbxVenueId.Text);
            cmd.Parameters.AddWithValue("@date", tbxDate.Text);
            cmd.Parameters.AddWithValue("@food", tbxFood.Text);
            cmd.Parameters.AddWithValue("@decoration", tbxDecoration.Text);
            cmd.Parameters.AddWithValue("@music", tbxMusic.Text);
            cmd.Parameters.AddWithValue("@cake", tbxCake.Text);

            cmd.ExecuteNonQuery();
            conn.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());

        }




    }

    protected void GridViewDataEvent_DeleteRow(Object sender, GridViewDeleteEventArgs e)
    {
        Label lblUserId = (Label)GridViewDataEvent.Rows[e.RowIndex].FindControl("lblUserId");
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
        string deleteFields = "delete from EVENT_DETAILS where UserId=@userId";
        SqlCommand cmd = new SqlCommand(deleteFields, conn);
        conn.Open();
        cmd.Parameters.AddWithValue("@userId", lblUserId.Text);
        cmd.ExecuteNonQuery();
        conn.Close();
        BindGridViewDataEvent();
    }



}