using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class createUpdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            lblWelcome.Text += Session["UserName"].ToString();
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
}