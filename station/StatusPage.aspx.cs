using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class station_stationbooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] == null)
        {
            Response.Redirect("../StationLogin.aspx");
        }

        SqlDataSource1.SelectCommand = "SELECT * FROM [slotbooking] where (status='Accept' or status='Reject') and  stationID=" + Session["stationID"] + "Order By slotID desc" ;

    
    }
}