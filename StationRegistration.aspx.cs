using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class StationRegistration : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    int p;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public int getRegistrationID()
    {
        int uid = 23001;
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "select stationID from StationRegistration order by stationID desc";
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            uid = Convert.ToInt32(dr[0]);
            uid = uid + 1;
        }
        else
        {
            uid = 23001;
        }
        con.Close();
        p = uid;
        return uid;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "insert into StationRegistration (stationID,stationName,email,mobileNo,username,password,city,Area,status) values(@stationID,@stationName,@email,@mobileNo,@username,@password,@city,@Area,@status)";
        cmd.Parameters.AddWithValue("@stationID", getRegistrationID());
        cmd.Parameters.AddWithValue("@stationName", txtstation.Text);
        //cmd.Parameters.AddWithValue("@Rnumber", txtregistration.Text);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@mobileNo", txtnumber.Text);
        cmd.Parameters.AddWithValue("@username", txtUsername.Text);
        cmd.Parameters.AddWithValue("@password", txtPassword.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@Area", "-");
        cmd.Parameters.AddWithValue("@status", "Active");
        cmd.ExecuteNonQuery();
        con.Close();

        string message = "Registration successful.. Station ID is: " + p;
        ScriptManager.RegisterStartupScript(this, GetType(), "StationRegistration", "alert('" + message + "');window.location='StationLogin.aspx'", true);


        txtstation.Text = "";
        //txtregistration.Text = "";
        txtEmail.Text = "";
        txtnumber.Text = "";
        txtUsername.Text = "";
        txtPassword.Text = "";
       
    }
}
