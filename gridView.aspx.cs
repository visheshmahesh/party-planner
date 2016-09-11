using System;
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

}