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
    public partial class Signup : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-G2N4S24\MSERVER;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Clear();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(connectionString))
            {
                sqlcon.Open();
                SqlCommand sqlCmd = new SqlCommand("UserAddorEdit", sqlcon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value == ""? "0" : hfUserID.Value));
                sqlCmd.Parameters.AddWithValue("@UserName", TextBox1.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Email", TextBox2.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", TextBox3.Text.Trim());
                sqlCmd.ExecuteNonQuery();
                Clear();
                Label1.Text = "Account Created";
            }
        }
        void Clear()
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
            hfUserID.Value = "";
        }
    }
}