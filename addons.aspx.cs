using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class addons : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        try
        {

            string selectValue1 = this.rbFood.SelectedValue;

            string selectValue2 = this.rbMusic.SelectedValue;
            string selectValue3 = this.rbDecoration.SelectedValue;
            string selectValue4 = this.rbCake.SelectedValue;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SignupConnectionString"].ConnectionString);
            conn.Open();
            string getFields = "insert into ITEM_DETAILS(EventId,Food,Music,Decoration,Cake) values(@EventId,@Food,@Music,@Decoration,@Cake)";
            SqlCommand cmd = new SqlCommand(getFields, conn);
            cmd.Parameters.AddWithValue("@EventId", Convert.ToInt32(Session["EventId"]));

            cmd.Parameters.AddWithValue("@Food", selectValue1);

            cmd.Parameters.AddWithValue("@Music", selectValue2);
            cmd.Parameters.AddWithValue("@Decoration", selectValue3);
            cmd.Parameters.AddWithValue("@Cake", selectValue4);


            cmd.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
            conn.Close();

        }

     
      catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
     }
}