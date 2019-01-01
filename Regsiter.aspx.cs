using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void signUp_Click(object sender, EventArgs e)
    {

        //判断邮箱是否正确
        string emailStr =
        @"([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,5})+";
        //邮箱正则表达式对象
        Regex emailReg = new Regex(emailStr);

        //判断手机号码是否正确
        Regex phoneNumReg = new Regex("[0-9]{11,11}");

        if (emailReg.IsMatch(email.Text.Trim()))
        {
            if (phoneNumReg.IsMatch(phoneNum.Text.Trim()))
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TestDBConnectionString"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("Insert into personalInfo Values(@username,@password,@email,@phoneNum)", conn))
                    {
                        cmd.Parameters.Add(new SqlParameter("username", username.Text));
                        cmd.Parameters.Add(new SqlParameter("password", password.Text));
                        cmd.Parameters.Add(new SqlParameter("email", email.Text));
                        cmd.Parameters.Add(new SqlParameter("phoneNum", phoneNum.Text));
                        conn.Open();

                        cmd.ExecuteNonQuery();
                        Response.Redirect("Login.aspx");
                        //Response.Write("<script>alert('注册成功！')</script>");

                    }
                }
            }
            else
            {
                phoneNumRegLab.Text = "手机号码有误！";
            }

        }
        else
        {
            lblResult.Text = "输入的不是有效的邮件地址格式";

        }

        
    }
}