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
        if (Session["username"] == null)
        {
            Response.Redirect("../StationLogin.aspx");
        }

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
        cmd.CommandText = "Update slotbooking set status=@status,Sremark=@Sremark where slotID=@slotID";
        
        cmd.Parameters.AddWithValue("@status", ddlstatus.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@Sremark", txtremark.Text);
        cmd.Parameters.AddWithValue("@slotID", Convert.ToInt32(Request.QueryString["slotID"]));
        cmd.ExecuteNonQuery();
        con.Close();

      

        if (ddlstatus.SelectedItem.ToString() == "Accept")
        {
            int count = 0;
            con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select accept  from StationRegistration  where  stationId=" + Convert.ToInt32(Session["stationID"].ToString()) + "";
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                count = dr.GetInt32(0) + 1;  
            }
            con.Close();



            con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "Update StationRegistration set accept="+count+" where StationID=@StationID";
            cmd.Parameters.AddWithValue("@StationID", Convert.ToInt32(Session["stationID"].ToString()));
            cmd.ExecuteNonQuery();
            con.Close();
        }



        string message = "Slotbooking status  is set to be  .. " + ddlstatus.SelectedItem.ToString();
        ScriptManager.RegisterStartupScript(this, GetType(), "station_SbookingStatus", "alert('" + message + "');window.location='stationbooking.aspx'", true);



    }
}