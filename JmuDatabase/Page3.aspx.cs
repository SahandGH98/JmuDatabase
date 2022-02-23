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
    public partial class Page3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }

        }

        SqlConnection conn = new SqlConnection("Data Source=Localhost;Initial Catalog=Lab1;Integrated Security=True");

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            Label3.Text = TxtScholarAmount.Text;
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            

                conn.Open();
                SqlCommand comm = new SqlCommand("INSERT INTO Scholarship VALUES('" +TxtScholarAmount.Text + "')", conn);
                comm.ExecuteNonQuery();
                conn.Close();
                LoadRecord();
            
        }

        protected void BtnPopulate4_Click(object sender, EventArgs e)
        {
            
            TxtScholarAmount.Text = "1200";
        }

        protected void BtnClear4_Click(object sender, EventArgs e)
        {
            
            TxtScholarAmount.Text = "";
        }

        //Programmed By Ahmad Wahedi
        protected void BtnUpdate4_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("UPDATE Scholarship SET Scholarship_Amount = '" + TxtScholarAmount2.Text + "'WHERE Scholarship_ID = '" + int.Parse(TxtScholarName2.Text) + "'", conn);
            comm.ExecuteNonQuery();
            conn.Close();
            LoadRecord();
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("SELECT * FROM Scholarship", conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView3.DataBind();

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}