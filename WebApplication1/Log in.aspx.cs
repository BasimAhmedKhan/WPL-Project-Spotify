using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class Log_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(@"Data Source=DESKTOP-G2N4S24\MSERVER;Integrated Security=True"))
            {
                sqlcon.Open();
                string query = "select COUNT(1) from UserRegistration where  @Email = Email and @Password = Password";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                sqlcmd.Parameters.AddWithValue("@Email", TextBox1.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
                int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["Email"] = TextBox1.Text.Trim();
                    Response.Redirect("Home.html");
                }
                else
                {
                    Label1.Visible = true;
                }
            }
        }
    }
}