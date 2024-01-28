using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\REIGN\Documents\Visual Studio 2012\Projects\WebApplication4\WebApplication4\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();


            SqlCommand cmd = new SqlCommand("INSERT INTO reg(pic) VALUES (@pic)", con);
            cmd.Parameters.AddWithValue("@pic", TextBox1.Text);

            cmd.ExecuteNonQuery();

            con.Close();
         
        }
    }
}