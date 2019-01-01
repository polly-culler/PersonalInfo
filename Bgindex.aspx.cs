using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Manage : System.Web.UI.Page
{
    //private void GridView1_Bind() {
    //    using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["TestDBConnectionString"].ConnectionString)) {
    //        SqlCommand command = new SqlCommand();
    //        command.Connection = connection;
    //        command.CommandType = CommandType.Text;
    //        command.CommandText = "SELECT username,password,email,phoneNum FROM personalInfo";
    //        connection.Open();
    //        SqlDataAdapter adapter = new SqlDataAdapter(command);
    //        DataSet dataSet = new DataSet();
    //        adapter.Fill(dataSet,"personalInfo");
    //       // GridView1.DataSource = dataSet.Tables[0];
    //        GridView1.DataKeyNames = new string[] { "ID" };
    //        GridView1.DataBind();
    //        adapter.Dispose();
    //        dataSet.Dispose();
    //    }
    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack) {
        //    GridView1_Bind();
        //}
    }
    //protected void GridView1_RowEditing(Object sender, GridViewEditEventArgs e) {
    //    GridView1.EditIndex = e.NewEditIndex;
    //    GridView1_Bind();
    //}
    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e) {
    //    string ID = GridView1.DataKeys[e.RowIndex].Value.ToString();
    //    string username = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.Trim().ToString();
    //    string password = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.Trim().ToString();
    //    string email = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text.Trim().ToString();
    //    string phoneNum = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text.Trim().ToString();
    //    using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["TestDBConnectionString"].ConnectionString))
    //    {
    //        SqlCommand command = new SqlCommand();
    //        command.Connection = connection;
    //        command.CommandType = CommandType.Text;
    //        command.CommandText = "UPDATE personalInfo SET username='" + username + "',password='" + password + "',email='" + email + "',email='" + email + "'WHERE ID=" + ID;
    //        connection.Open();
    //        try
    //        {
    //            command.ExecuteNonQuery();
    //        }
    //        catch (Exception ex)
    //        {
    //            Response.Write("<script>alert(" + ex.Message + ")</script>");

    //        }
    //        finally
    //        {
    //            command.Dispose();
    //        }
    //        GridView1.EditIndex = -1;
    //        GridView1_Bind();

    //    }
    //}
    //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e) {
    //    GridView1.EditIndex = -1;
    //    GridView1_Bind();
    //}
    //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e) {
    //    string ID = GridView1.DataKeys[e.RowIndex].Value.ToString();

    //    using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["TestDBConnectionString"].ConnectionString)) {
    //        SqlCommand command = new SqlCommand();
    //        command.Connection = connection;
    //        command.CommandType = CommandType.Text;
    //        command.CommandText = "DELETE personalInfo WHERE ID="+ID;
    //        connection.Open();
    //        try
    //        {
    //            command.ExecuteNonQuery();
    //        }
    //        catch (Exception ex)
    //        {
    //            Response.Write("<script>alert(" + ex.Message + ")</script>");
    //        }
    //        finally {
    //            command.Dispose();
    //        }
    //        GridView1.EditIndex = -1;
    //        GridView1_Bind();
    //    }
    //}
}