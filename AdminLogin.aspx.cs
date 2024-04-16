using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using System.Web.UI.HtmlControls;
public partial class AdminLogin : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnsign_Click(object sender, EventArgs e)
    {

        string password = txtpwd.Text;
        string username = txtusername.Text;
        if (username == "admin" && password == "super")
        {
            Response.Redirect("ADMIN/AdminDefault.aspx");
        }
        else
        {
            Response.Write("Invalid Username and Password !");
        }
    }


    public string txtname { get; set; }
    public string pass { get; set; }
}