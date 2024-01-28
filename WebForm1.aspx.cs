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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\REIGN\Documents\Visual Studio 2012\Projects\WebApplication4\WebApplication4\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();


            SqlCommand cmd = new SqlCommand("INSERT INTO register(Fname,Mname,Lname,Address) VALUES (@Fname,@Mname,@Lname,@Address)", con);
            cmd.Parameters.AddWithValue("@Fname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Mname", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Lname", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox5.Text);

            cmd.ExecuteNonQuery();
            Response.Write("Save");
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfuly insert');", true);
            con.Close();
            LoadRecord();
         
        }
        void LoadRecord()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\REIGN\Documents\Visual Studio 2012\Projects\WebApplication4\WebApplication4\App_Data\Database1.mdf;Integrated Security=True");
            SqlCommand cmd;


            cmd = new SqlCommand("Select * from register order by Id desc", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dt.Clear();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
      

       

        }
    }
}