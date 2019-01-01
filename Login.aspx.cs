using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void signUp_Click(object sender, EventArgs e)
    {
        
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TestDBConnectionString"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("Insert into personalInfo Values(@username,@password)", conn))
            {
                cmd.Parameters.Add(new SqlParameter("username", username.Text));
                cmd.Parameters.Add(new SqlParameter("password", password.Text));
                conn.Open();
                cmd.ExecuteNonQuery();
                //Response.Write("<script>alert('注册成功！')</script>");
            }
        }
    }
    protected void logIn_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TestDBConnectionString"].ConnectionString))
        {
            // Response.Write("<script>alert('" + ConfigurationManager.ConnectionStrings["memberConnStrConnectionString"].ConnectionString + "')</script>");
            using (SqlCommand cmd = new SqlCommand("select * from personalInfo where username=@username and password=@password", conn))
            {
                cmd.Parameters.Add(new SqlParameter("username", username.Text));
                cmd.Parameters.Add(new SqlParameter("password", password.Text));
                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (username.Text.Equals("20168") && password.Text.Equals("20168"))
                        {
                            Response.Redirect("Bgindex.aspx");
                        }
                    if (reader.Read()){       
                            Response.Redirect("Index.aspx");
                        
                    }
                        
                        //login then turn to about.aspx maybe have mistake
                    else
                        Response.Write("<script>alert('请输入用户名和密码！')</script>");
                }
            }
        }
    }
    protected void username_TextChanged(object sender, EventArgs e)
    {

    }
}