using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_Stationdetails : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    int p;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("../StationLogin.aspx");
        }


        txtsID.Text = Session["stationID"].ToString();

        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "select dayTime,Pspaces,Paymodes,Area,state,city,Pincode,vehicleTypes,rapidcharg,fastCharger,slowcharger,loc1,loc2,loc3,loc4,loc5,loc6 from stationDetails where stationID=@stationID";
        //cmd.CommandText = "select dayTime,Pspaces,Paymodes,unitcost,state,city,Pincode,vehicleTypes,rapidcharg,fastCharger,slowcharger,loc1,loc2,loc3,loc4,loc5,loc6 from stationDetails where stationID=@stationID";
        cmd.Parameters.AddWithValue("@stationID", Session["stationID"].ToString());

        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtoperationDHr.Text=dr.GetString(0);
            txtspace.Text=dr.GetString(1);
            ddlpaymentMode.Text=dr.GetString(2);
            //txtUcost.Text=dr.GetString(3);
            //txtUcost.Text="";
            txtstate.Text = dr.GetString(4);
            txtcity.Text = dr.GetString(5);
            txtpincode.Text = dr.GetString(6);
            txtArea.Text = dr.GetString(3);
            string selectedVehicle = dr.GetString(7).ToString();
            string[] selectedVehicles = selectedVehicle.Split(',');
            foreach (ListItem item in cblvehicle.Items)
            {
                if (selectedVehicles.Contains(item.Value))
                {
                    item.Selected = true;
                }
            }
            txtrapid.Text = dr.GetString(8);
            txtfast.Text = dr.GetString(9);
            txtslow.Text = dr.GetString(10);
            txtloc1.Text = dr.GetString(11);
            txtloc2.Text = dr.GetString(12);
            txtloc3.Text = dr.GetString(13);
            txtloc4.Text = dr.GetString(14);
            txtloc5.Text = dr.GetString(15);
            txtloc6.Text = dr.GetString(16);
            
        }
        else
        {
           
        }

        con.Close();

    }

    public int getRegistrationID()
    {
        int uid = 1;
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "select sID from stationDetails order by sID desc";
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            uid = Convert.ToInt32(dr[0]);
            uid = uid + 1;
        }
        else
        {
            uid = 1;
        }
        con.Close();
        p = uid;
        return uid;
    }


    protected void btnsave_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "delete from  stationDetails where stationID=@stationID";
        cmd.Parameters.AddWithValue("@stationID", Session["stationID"]);
        cmd.ExecuteNonQuery();



        string selectedVehicle = "";
        foreach (ListItem item in cblvehicle.Items)
        {
            if (item.Selected)
            {
                selectedVehicle += item.Value + ",";
            }
        }

        // Remove the trailing comma
        if (selectedVehicle.Length > 0)
        {
            selectedVehicle = selectedVehicle.Substring(0, selectedVehicle.Length - 1);

        }



        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "insert into stationDetails (sID,stationID,dayTime,Pspaces,Paymodes,Area,state,city,Pincode,vehicleTypes,rapidcharg,fastCharger,slowcharger,loc1,loc2,loc3,loc4,loc5,loc6) values(@sID,@stationID,@dayTime,@Pspaces,@Paymodes,@Area,@state,@city,@Pincode,@vehicleTypes,@rapidcharg,@fastCharger,@slowcharger,@loc1,@loc2,@loc3,@loc4,@loc5,@loc6)";
        //cmd.CommandText = "insert into stationDetails (sID,stationID,dayTime,Pspaces,Paymodes,unitcost,state,city,Pincode,vehicleTypes,rapidcharg,fastCharger,slowcharger,loc1,loc2,loc3,loc4,loc5,loc6) values(@sID,@stationID,@dayTime,@Pspaces,@Paymodes,@unitcost,@state,@city,@Pincode,@vehicleTypes,@rapidcharg,@fastCharger,@slowcharger,@loc1,@loc2,@loc3,@loc4,@loc5,@loc6)";
        cmd.Parameters.AddWithValue("@sID", getRegistrationID());
        cmd.Parameters.AddWithValue("@stationID", Session["stationID"]);
        cmd.Parameters.AddWithValue("@dayTime", txtoperationDHr.Text);
        cmd.Parameters.AddWithValue("@Pspaces", txtspace.Text);
        cmd.Parameters.AddWithValue("@Paymodes", ddlpaymentMode.SelectedValue.ToString());
       // cmd.Parameters.AddWithValue("@unitcost", txtUcost.Text);
        cmd.Parameters.AddWithValue("@state",txtstate.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@Pincode", txtpincode.Text);
        cmd.Parameters.AddWithValue("@vehicleTypes", selectedVehicle);
        cmd.Parameters.AddWithValue("@rapidcharg", txtrapid.Text);
        cmd.Parameters.AddWithValue("@fastCharger", txtfast.Text);
        cmd.Parameters.AddWithValue("@slowcharger", txtslow.Text);
        cmd.Parameters.AddWithValue("@loc1", txtloc1.Text);
        cmd.Parameters.AddWithValue("@loc2", txtloc2.Text);
        cmd.Parameters.AddWithValue("@loc3", txtloc3.Text);
        cmd.Parameters.AddWithValue("@loc4", txtloc4.Text);
        cmd.Parameters.AddWithValue("@loc5", txtloc5.Text);
        cmd.Parameters.AddWithValue("@loc6", txtloc6.Text);
        cmd.Parameters.AddWithValue("@Area", txtArea.Text);

        int n = cmd.ExecuteNonQuery();

        if (n > 0)
        {

            string message = "Station Details Updated Successfully.... ";
            ScriptManager.RegisterStartupScript(this, GetType(), "station_SbookingStatus", "alert('" + message + "');window.location='StationDefault.aspx';", true);
        }

        con.Close();

    }
}