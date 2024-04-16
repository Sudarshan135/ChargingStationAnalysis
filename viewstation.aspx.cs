using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewstation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"];
        string value = Request.QueryString["value"];

        if (id == "1")
        {
    
           SqlDataSource1.SelectCommand = @"SELECT s.stationID, s.stationName, s.city, d.vehicleTypes, d.rapidcharg,d.fastCharger,d.slowcharger
                                             FROM [ChargingStationDB].[dbo].[StationRegistration] s
                                                 INNER JOIN [ChargingStationDB].[dbo].[stationDetails] d ON s.stationID = d.stationID WHERE s.status='Active' and  s.stationName LIKE '%" + value + "%'";
        }
        else   if (id == "2")
        {



            SqlDataSource1.SelectCommand = @"SELECT s.stationID, s.stationName, s.city, d.vehicleTypes, d.rapidcharg,d.fastCharger,d.slowcharger
                                             FROM [ChargingStationDB].[dbo].[StationRegistration] s
                                                 INNER JOIN [ChargingStationDB].[dbo].[stationDetails] d ON s.stationID = d.stationID  where s.status='Active' and (d.city LIKE '%" + value + "%' or  d.Area LIKE '%" + value + "%' or d.loc1 LIKE '%" + value + "%'  or d.loc2 LIKE '%" + value + "%'  or d.loc3 LIKE '%" + value + "%'  or d.loc4 LIKE '%" + value + "%'  or d.loc5 LIKE '%" + value + "%'  or d.loc6 LIKE '%" + value + "%' ) order by accept desc  ";
      
        
        
        }



    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Response.Redirect("slotbooking.aspx");


    }
}