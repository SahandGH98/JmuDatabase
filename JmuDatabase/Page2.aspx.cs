using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace JmuDatabase
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

        SqlConnection conn = new SqlConnection("Data Source=Localhost;Initial Catalog=Lab1;Integrated Security=True");

        protected void Button9_Click(object sender, EventArgs e)
        {
            if (TxtMentor.Text.Length > 0)
            {
                Label1.Text = TxtMentor.Text + " " + TxtMentorEmail.Text;
            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            if (TxtMentor.Text.Length > 0)
            {

                conn.Open();
                SqlCommand comm = new SqlCommand("INSERT INTO Mentor VALUES('" + TxtMentor.Text + "','" + TxtMentorEmail.Text + "')", conn);
                comm.ExecuteNonQuery();
                conn.Close();
                LoadRecord();
            }

        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            TxtMentor.Text = "Jordan Peterson";
            TxtMentorEmail.Text = "JordanPeterson@Gmail.com";
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            TxtMentor.Text = "";
            TxtMentorEmail.Text = "";

        }

        //Programmed By Ahmad Wahedi
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("SELECT * FROM Mentor", conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView2.DataBind();

        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("UPDATE Mentor SET Mentor_Name = '" + TxtMentor2.Text + "'WHERE Mentor_Email = '" + TxtMentorEmail2.Text + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            LoadRecord();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}