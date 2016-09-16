﻿using System;
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

        //int city;


        //SqlCommand cmdcity = new SqlCommand("select CityId from CITY where Name='" + ddlCity.SelectedIndex.ToString() + "' ", conn);
        //cmdcity.ExecuteNonQuery();


        //int cityid=Convert.ToInt32(cmdcity.ExecuteScalar().ToString());

        //city= Convert.ToInt32(cmdcity.ExecuteScalar().ToString());
        //conn.Close();
        //DataSet ds = new DataSet();

        //try
        //{
        //    conn.Open();
        //    SqlCommand cmd = new SqlCommand("Select Name from VENUE where City='" + cityid + "'", conn);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    da.Fill(ds);
        //    ddlVenue.DataTextField = ds.Tables[0].Columns["Name"].ToString();
        //    ddlVenue.DataSource = ds.Tables[0];
        //    ddlVenue.DataBind();
        //    conn.Close();

        //}
        //catch(Exception ex)
        //{
        //    Response.Write(ex.Message);
        //}

    }

    /*protected void btnNext_Click(object sender, EventArgs e)
    {
        int EventId,Id;
         
        try
        {
            {
                int selectValue1 = Convert.ToInt32(this.rbEvent.SelectedValue);
              //  int selectValue2 = Convert.ToInt32(this.rbCity.SelectedValue);
              //  int selectValue3 = Convert.ToInt32(this.rbVenue.SelectedValue);               
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
                conn.Open();

                Id = Convert.ToInt32(Session["UserId"].ToString());
                    string forEventId = "select Id from EVENT_DETAILS where UserId='" +Id + "'";
                //AND CityId='" + selectValue2 + "' AND Date='" + tbxDate.Text + "'";
                SqlCommand cmdEventId = new SqlCommand(forEventId, conn);
                EventId = Convert.ToInt32(cmdEventId.ExecuteScalar().ToString());
               Session["EventId"] = EventId;
                Response.Write(Session["EventId"]);
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
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("addons.aspx");


            }
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
    */
}
