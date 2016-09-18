﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class gridView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)

            BindGridViewData();

    }
    protected void BindGridViewData()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
        try
        {
            string getfields = "SELECT * from EVENT_DETAILS";
            SqlCommand cmd = new SqlCommand(getfields, conn);
            conn.Open();
            GridViewData.DataSource = cmd.ExecuteReader();
            GridViewData.DataBind();
            conn.Close();
        }
        catch (Exception ex)
        {

        }
    }
    protected void GridViewData_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "EditRow")
        {
            int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
            GridViewData.EditIndex = rowIndex;
            BindGridViewData();
        }


        else if (e.CommandName == "CancelUpdate")
        {
            GridViewData.EditIndex = -1;
            BindGridViewData();

        }



    }
    protected void GridViewData_UpdateRow(Object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridViewData.Rows[e.RowIndex];
        Label Id = (Label)row.FindControl("lblId");
        TextBox tbxUserId = (TextBox)row.FindControl("tbxUserId");
        TextBox tbxEventId = (TextBox)row.FindControl("tbxEventId");
        TextBox tbxCityId = (TextBox)row.FindControl("tbxCityId");
        TextBox tbxVenueId = (TextBox)row.FindControl("tbxVenueId");
        TextBox tbxDate = (TextBox)row.FindControl("tbxDate");
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
        string updateFields = "update EVENT_DETAILS set UserId=@userId, EventId=@EventId, CityId=@cityId, VenueId=@venueId,DATE=@date where UserId=@userId";
        try
        {
            SqlCommand cmd = new SqlCommand(updateFields, conn);
            conn.Open();
            cmd.Parameters.AddWithValue("@Id", Id.Text);
            cmd.Parameters.AddWithValue("@userId", tbxUserId.Text);
            cmd.Parameters.AddWithValue("@EventId", tbxEventId.Text);
            cmd.Parameters.AddWithValue("@VenueId", tbxVenueId.Text);
            cmd.Parameters.AddWithValue("@date", tbxDate.Text);

            cmd.ExecuteNonQuery();
            conn.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());

        }




    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");

    }
    protected void GridViewData_DeleteRow(Object sender, GridViewDeleteEventArgs e)
    {
        Label lblUserId = (Label)GridViewData.Rows[e.RowIndex].FindControl("lblId");
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
        string deleteFields = "delete from EVENT_DETAILS where UserId=@UserId";
        SqlCommand cmd = new SqlCommand(deleteFields, conn);
        conn.Open();
        cmd.Parameters.AddWithValue("@Id", lblId.Text);
        cmd.ExecuteNonQuery();
        conn.Close();
        BindGridViewData();


    }



}