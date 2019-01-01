using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TestDBConnectionString"].ConnectionString))
        {
            // Response.Write("<script>alert('" + ConfigurationManager.ConnectionStrings["memberConnStrConnectionString"].ConnectionString + "')</script>");
            using (SqlCommand cmd = new SqlCommand("select * from personalInfo where username=@username", conn))
            {
                
                conn.Open();
                
            }
        }
    }
   
}