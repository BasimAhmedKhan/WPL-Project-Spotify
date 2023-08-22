using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using AjaxControlToolkit;

namespace WebApplication1
{
    public partial class Library : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM WeekndRating");
                Rating1.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                lbresult.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM YSRating");
                Rating2.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label1.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM KKRating");
                Rating3.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label2.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM HSRating");
                Rating4.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label3.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM CPRating");
                Rating5.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label4.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM DLRating");
                Rating6.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label5.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM BERating");
                Rating7.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label6.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM TCRating");
                Rating8.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label7.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM DNCERating");
                Rating9.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label8.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM COLDRating");
                Rating10.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label9.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM SWRating");
                Rating11.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label10.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM ONERating");
                Rating12.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label11.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM JUICERating");
                Rating13.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label12.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM JBRating");
                Rating14.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label13.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT ISNULL(AVG(Rating), 0) AverageRating, COUNT(Rating) RatingCount FROM ANRating");
                Rating15.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                Label14.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
            }
        }

        private DataTable GetData(string query)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(query);
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            return dt;
        }

        public void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into WeekndRating values (@ratingvalue,@review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@ratingvalue", Rating1.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into YSRating values (@ratingvalue,@review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@ratingvalue", Rating2.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into KKRating values (@Ratingvalue,@Review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Ratingvalue", Rating3.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@Review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into HSRating values (@Ratingvalue,@Review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Ratingvalue", Rating4.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@Review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into CPRating values (@Ratingvalue,@Review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Ratingvalue", Rating5.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@Review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into DLRating values (@Ratingvalue,@Review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Ratingvalue", Rating6.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@Review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into BERating values (@Ratingvalue,@Review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Ratingvalue", Rating7.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@Review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into TCRating values (@Ratingvalue,@Review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Ratingvalue", Rating8.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@Review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into DNCERating values (@Ratingvalue,@Review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Ratingvalue", Rating9.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@Review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into COLDRating values (@Ratingvalue,@Review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Ratingvalue", Rating10.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@Review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into SWRating values (@Ratingvalue,@Review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Ratingvalue", Rating11.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@Review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into ONERating values (@Ratingvalue,@Review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Ratingvalue", Rating12.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@Review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into JUICERating values (@Ratingvalue,@Review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Ratingvalue", Rating13.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@Review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into JBRating values (@Ratingvalue,@Review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Ratingvalue", Rating14.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@Review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        protected void Button14_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into ANRating values (@Ratingvalue,@Review)");
            SqlDataAdapter sda = new SqlDataAdapter();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Ratingvalue", Rating15.CurrentRating.ToString());
            cmd.Parameters.AddWithValue("@Review", txtreview.Text);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}