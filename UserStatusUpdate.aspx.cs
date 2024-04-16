using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class station_SbookingStatus : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        CompareValidator1.ValueToCompare = DateTime.Now.ToShortDateString();
        if (!IsPostBack)
        {
            con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            cmd = new SqlCommand();
            con.Open();
            cmd.CommandText = "select customerName,vehicleRegistration,chargerType,Startdatetime,arrivaltime,unite,time,amount from slotbooking where slotID=@slotID ";
            cmd.Parameters.AddWithValue("@slotID", Convert.ToInt32(Request.QueryString["slotID"]));


            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                txtCostomerN.Text = dr.GetString(0).ToString();
                txtregistration.Text = dr.GetString(1).ToString();
                txtchargerType.Text = dr.GetString(2).ToString();
                // txtbatteryper.Text = dr.GetInt32(3).ToString();
                txtSdateT.Text = dr.GetString(3).ToString();
                txtarrivalT.Text = dr.GetString(4).ToString();
                txtunite.Text = dr.GetInt32(5).ToString() + "" + "KW";
                txttime.Text = dr.GetInt32(6).ToString() + "" + "min";

                txtamount.Text = dr.GetInt32(7).ToString() + "" + " ₹";
            }


            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "Update slotbooking set Startdatetime=@Startdatetime,arrivaltime=@arrivaltime,Uremark=@Uremark  where slotID=@slotID";
        cmd.Parameters.AddWithValue("@Startdatetime", txtSdateT.Text);
        cmd.Parameters.AddWithValue("@arrivaltime", txtarrivalT.Text);
        cmd.Parameters.AddWithValue("@Uremark", txtremark.Text);
        cmd.Parameters.AddWithValue("@slotID", Convert.ToInt32(Request.QueryString["slotID"]));
        cmd.ExecuteNonQuery();
        con.Close();

        string message = "Request Sent Successfully..";
        ScriptManager.RegisterStartupScript(this, GetType(), "station_SbookingStatus", "alert('" + message + "');window.location='userstatus.aspx';", true);

    }
}