using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

//I DID NOT WORK WITH A PARTNER

namespace JmuDatabase
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }

        SqlConnection conn = new SqlConnection("Data Source=Localhost;Initial Catalog=Lab1;Integrated Security=True");

        protected void BtnCommit_Click(object sender, EventArgs e)
        {
            if (TxtFirstN.Text.Length > 0)
            {

                conn.Open();
                SqlCommand comm = new SqlCommand("INSERT INTO Student VALUES('" + TxtFirstN.Text + "','" + TxtEmail.Text +"')", conn);
                comm.ExecuteNonQuery();
                conn.Close();
                LoadRecord();
            }
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("SELECT * FROM Student", conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataBind();

        }       

        protected void BtnClear_Click(object sender, EventArgs e)
        {
            TxtFirstN.Text = "";
            TxtEmail.Text = "";
        }

        protected void BtnSave_Click1(object sender, EventArgs e)
        {
            if (TxtFirstN.Text.Length > 0)
            {
                LblConcat.Text = TxtFirstN.Text + " " + TxtEmail.Text;
            }
        }

        //Programmed by Ahmad Wahedi
        protected void Button7_Click(object sender, EventArgs e)
        {
            TxtFirstN.Text = "Ahmad Wahedi";
            TxtEmail.Text = "Wahediax@dukes.jmu.edu";
        }

        protected void BtnUpdateN_Click1(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("UPDATE Student SET Student_Name = '" + TxtFirstN2.Text + "'WHERE Student_Email = '" + TxtEmail2.Text + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            LoadRecord();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TxtEmail_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
