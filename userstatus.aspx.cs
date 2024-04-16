using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userstatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [slotbooking] where customerName LIKE '%" + txtusername.Text + "%' and vehicleRegistration='" + txtvhicaln.Text + "'";
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

       string status = GridView1.SelectedRow.Cells[5].Text;

       if (status == "Request Pending")
       {
           string message = "Your Request is Pending ... ";
           ScriptManager.RegisterStartupScript(this, GetType(), "userstatus", "alert('" + message + "');", true);
       }
       else if (status == "Accept")
       {
           string message = "Your Request is Already Accepted ";
           ScriptManager.RegisterStartupScript(this, GetType(), "userstatus", "alert('" + message + "');", true);
       }
       else if (status == "Reject")
       {
           string message = "Your Request was Rejected";
           ScriptManager.RegisterStartupScript(this, GetType(), "userstatus", "alert('" + message + "');", true);
       }  
       else
       {
           string slotID = GridView1.SelectedRow.Cells[1].Text;

           Response.Redirect("UserStatusUpdate.aspx?slotID=" + slotID);
        
       }


    }
}