using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class StudentLogin : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsign_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "select username,password,stationID from StationRegistration where username=@username and password=@password and status='Active'";
        cmd.Parameters.AddWithValue("@username", txtusername.Text);
        cmd.Parameters.AddWithValue("@password", txtpwd.Text);
       
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("username", dr.GetString(0).ToString());
            Session.Add("stationID", dr.GetInt32(2));
            //Session.Add("stationID", dr.GetString(2).ToString());
            Response.Redirect("station/StationDefault.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid UserName or Password or Station Deactive');</script>");
        }

        con.Close();

        txtusername.Text = "";
        txtpwd.Text = "";
    }
}