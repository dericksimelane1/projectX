using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class application : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkUser;
            checkUser = "select count(*) From userData Where name=' " + textBoxName.Text + " ' ";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("user already exist!");
            }
            conn.Close();
        }
    }

    protected void BtnApply_Click(object sender, EventArgs e)
    {
        
        try
        {
            

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery;
            insertQuery = "insert into userData (name,idNumber,passWord, email)values (@name,@idNumber,@passWord,@email)";
            SqlCommand com = new SqlCommand(insertQuery, conn);

            
            com.Parameters.AddWithValue("@name", textBoxName.Text);
            com.Parameters.AddWithValue("@idNumber", TextBoxID.Text);
            com.Parameters.AddWithValue("@passWord", TextBoxPword.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            

            com.ExecuteNonQuery();
            Response.Redirect("Manager.aspx");
            Response.Write("registration is successful");

            conn.Close();


        }

        catch (Exception ex)
        {

            Response.Write("error" + ex.ToString());
        }
    }

}