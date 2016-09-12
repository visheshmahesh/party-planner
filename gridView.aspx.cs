﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class gridView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if(!IsPostBack)
        
            BindGridViewData();
        
    }
    protected void BindGridViewData()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
        try
        {
            string getfields = "SELECT * from USERS";
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
    protected void GridViewData_RowCommand(object sender , GridViewCommandEventArgs e)
    {
        if (e.CommandName == "EditRow") 
        {
            int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
            GridViewData.EditIndex = rowIndex;
            BindGridViewData();
        }
        

        else if(e.CommandName=="CancelUpdate")
        {
            GridViewData.EditIndex = -1;
            BindGridViewData();
        
        }
        


    }
    protected void GridViewData_UpdateRow(Object sender,GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridViewData.Rows[e.RowIndex];
        Label UserId = (Label)row.FindControl("UserId");
        TextBox tbxName = (TextBox)row.FindControl("tbxName");
        TextBox tbxEmail = (TextBox)row.FindControl("tbxEmail");
        TextBox tbxPassword = (TextBox)row.FindControl("tbxPassword");
        TextBox tbxContactNo = (TextBox)row.FindControl("tbxContactNo");
        TextBox tbxDOB = (TextBox)row.FindControl("tbxDOB");
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
        string updateFields = "update USERS set Name=@name, Email=@email, Password=@password, ContactNo=@contactNo, DOB=@dob where UserId=@userId";
        try
        {
            SqlCommand cmd = new SqlCommand(updateFields, conn);
            cmd.Parameters.AddWithValue("@userId", UserId.Text);
            cmd.Parameters.AddWithValue("@name", tbxName.Text);
            cmd.Parameters.AddWithValue("@email", tbxEmail.Text);
            cmd.Parameters.AddWithValue("@password", tbxPassword.Text);
            cmd.Parameters.AddWithValue("@contactNo", tbxContactNo.Text);
            cmd.Parameters.AddWithValue("@dob", tbxDOB.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }
        catch(Exception ex)
        {
            Response.Write("Error:"+ex.ToString());
        
        }




    }
    protected void GridViewData_DeleteRow(Object sender, GridViewDeleteEventArgs e)
    {
        Label lblUserId = (Label)GridViewData.Rows[e.RowIndex].FindControl("lblUserId");
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
        string deleteFields = "delete from USERS where UserId=@UserId";
        SqlCommand cmd = new SqlCommand(deleteFields, conn);
        conn.Open();
        cmd.Parameters.AddWithValue("@UserId", lblUserId.Text);
        cmd.ExecuteNonQuery();
        conn.Close();
        BindGridViewData();


    }


}