using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class slotbooking : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    int p;
    int amount;
    int  time;
    int unite;
    protected void Page_Load(object sender, EventArgs e)
    {
        string stationID =Request.QueryString["stationID"];
        string stationName = Request.QueryString["stationName"];
        txtsID.Text = stationID;
        txtstation.Text = stationName;
        CompareValidator1.ValueToCompare = DateTime.Now.ToShortDateString();






      //  SELECT slotID,stationID,customerID,customerName,vehicleRegistration,chargerType,batteryPercentage,Startdatetime,enddatetime,status FROM slotbooking
        
    }



    public int getslotID()
    {
        int uid = 1;
        con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "select slotID from slotbooking order by slotID desc";
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






    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = @"insert into slotbooking (slotID,stationID,customerName,vehicleRegistration,chargerType,arrivaltime,Startdatetime,enddatetime,status,vehicleTypes,Sremark,unite,time,amount)
                                              values(@slotID,@stationID,@customerName,@vehicleRegistration,@chargerType,@arrivaltime,@Startdatetime,@enddatetime,@status,@vehicleTypes,@Sremark,@unite,@time,@amount)";
        cmd.Parameters.AddWithValue("@slotID", getslotID());
        cmd.Parameters.AddWithValue("@stationID",Convert.ToInt32(txtsID.Text));
        cmd.Parameters.AddWithValue("@customerName", txtCostomerN.Text);
        cmd.Parameters.AddWithValue("@vehicleRegistration", txtregistration.Text);
        cmd.Parameters.AddWithValue("@chargerType", ddlcharingT.SelectedValue.ToString());
        cmd.Parameters.AddWithValue("@vehicleTypes", rblvehicle.SelectedValue.ToString());

        //cmd.Parameters.AddWithValue("@batteryPercentage", txtbatteryper.Text);
        cmd.Parameters.AddWithValue("@Startdatetime",txtSdate.Text );
        cmd.Parameters.AddWithValue("@enddatetime", "-");
        cmd.Parameters.AddWithValue("@arrivaltime", txtarrivalT.Text); 
        cmd.Parameters.AddWithValue("@status", "Request Pending");
        cmd.Parameters.AddWithValue("@Sremark", "-");
        cmd.Parameters.AddWithValue("@unite", int.Parse(hfunit.Value));
        cmd.Parameters.AddWithValue("@time", int.Parse(hftime.Value));
        cmd.Parameters.AddWithValue("@amount", int.Parse(hfamount.Value));

        cmd.ExecuteNonQuery();
        con.Close();

        string message = "Slot Request successful..! ";
        ScriptManager.RegisterStartupScript(this, GetType(), "slotbooking", "alert('" + message + "');window.location='SearchStation.aspx'", true);


       // Response.Redirect("SearchStation.aspx");
        


    }
    protected void txtvalue_TextChanged(object sender, EventArgs e)
    {


        if (ddlcharingT.SelectedIndex.ToString() == "1")
        {

            if (rblchargMode.SelectedIndex.ToString() == "0")
            {
                amount = Convert.ToInt32(txtvalue.Text);


                unite = amount / 10;
                time = (int)(1.2 * unite);
                lbl.Text = "Description";
                lblshowamount.Text = "" + unite + " KW units in  " + time + " min";

            }
            else
            {
                unite = Convert.ToInt32(txtvalue.Text);

                amount = unite * 10;
                time = (int)(1.2 * unite);
                lbl.Text = "Description";
                lblshowamount.Text = " Rs. " + amount + " for " + time + " min charge";

            }



        }

        if (ddlcharingT.SelectedIndex.ToString() == "2")
        {

            if (rblchargMode.SelectedIndex.ToString() == "0")
            {
                amount = Convert.ToInt32(txtvalue.Text);

                unite = amount / 7;
                time = (int)(2 * unite);
                lbl.Text = "Description";
                lblshowamount.Text = "" + unite + " KW units in  " + time + " min";

            }
            else
            {
                unite = Convert.ToInt32(txtvalue.Text);
                lbl.Text = "Description";
                amount = unite * 7;
                time = (int)(2 * unite);

                lblshowamount.Text = " Rs. " + amount + " for " + time + " min charge";

            }



        }


        if (ddlcharingT.SelectedIndex.ToString() == "3")
        {

            if (rblchargMode.SelectedIndex.ToString() == "0")
            {
                amount = Convert.ToInt32(txtvalue.Text);

                unite = amount / 4;
                time = (int)(6 * unite);
                lblshowamount.Text = "" + unite + " KW units in  " + time + " min";
                lbl.Text = "Description";
            }
            else
            {
                unite = Convert.ToInt32(txtvalue.Text);


                amount = unite * 4;
                time = (int)(6 * unite);
                lbl.Text = "Description";
                lblshowamount.Text = " Rs. " + amount + " for " + time + " min charge";

            }
        }

        hfunit.Value = unite.ToString();
        hfamount.Value = amount.ToString();
        hftime.Value = time.ToString();

    }



    protected void rblchargMode_SelectedIndexChanged(object sender, EventArgs e)
    {

        lblshowamount.Text = "";
        if (rblchargMode.SelectedIndex.ToString() == "0")
        {
            lblaU.Text = "Add Amount (in Rs):";
        }


        if (rblchargMode.SelectedIndex.ToString() == "1")
        {
            lblaU.Text = "Add Unit (in KW):";
        }
    }
    protected void ddlcharingT_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtvalue.Text = "";
    }
}