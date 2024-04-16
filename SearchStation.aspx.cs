using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
   {
   


       string id = ddlArea.SelectedIndex.ToString();
       string value = txtusername.Text;
        string url = "viewstation.aspx?id=" + id + "&value=" + value;

        Response.Redirect(url);


    }
    protected void Button2_Click(object sender, EventArgs e)
    {


        Response.Redirect("userstatus.aspx");


    }

}