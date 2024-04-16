using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public int getRegistrationID()
    {
        int uid = 1001;
        SqlConnection  con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "select id from ContactUS order by id desc";
        cmd.Connection = con;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            uid = Convert.ToInt32(dr[0]);
            uid = uid + 1;
        }
        else
        {
            uid = 1001;
        }
        con.Close();
      
        return uid;

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "insert into ContactUS (id,name,email,subject,message) values(@id,@name,@email,@subject,@message)";
        cmd.Parameters.AddWithValue("@id", getRegistrationID());
        cmd.Parameters.AddWithValue("@name", txtName.Text);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@subject", txtSubject.Text);
        cmd.Parameters.AddWithValue("@message", txtMessage.Text);
        
        cmd.Parameters.AddWithValue("@Area", "-");
        cmd.ExecuteNonQuery();
        con.Close();

        string message = "Successfull ";
        ScriptManager.RegisterStartupScript(this, GetType(), "ContactUs", "alert('" + message + "');", true);


        txtName.Text = "";
        txtEmail.Text = "";
       
        txtSubject.Text = "";
        txtMessage.Text = "";
     





    }
}