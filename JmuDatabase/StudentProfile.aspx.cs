using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;



namespace JmuDatabase
{
    public partial class StudentProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            updateGridView();
        }

        protected void btnEnrollStudent_Click(object sender, EventArgs e)
        {
            int scholarship_ID = int.Parse(drplstTermChoose.SelectedValue);
            int mentor_ID = int.Parse(drplstCourseChoose.SelectedValue);
            int student_ID = int.Parse(drplstStudentChoose.SelectedValue);

            String sqlQuery = "INSERT INTO Profile (Scholarship_ID, Mentor_ID, Student_ID) VALUES ('" + scholarship_ID + "','" + mentor_ID + "','" + student_ID + "')";

            SqlConnection conn = new SqlConnection("Data Source=Localhost;Initial Catalog=Lab1;Integrated Security=True");

            SqlCommand sqlCommand = new SqlCommand();
            sqlCommand.Connection = conn;
            sqlCommand.CommandType = CommandType.Text;
            sqlCommand.CommandText = sqlQuery;

            conn.Open();
            SqlDataReader queryResults = sqlCommand.ExecuteReader();

            queryResults.Close();
            conn.Close();

            updateGridView();
        }

        protected void drplstStudentViewEnrollment_SelectedIndexChanged(object sender, EventArgs e)
        {
            grdvwEnrollmentDisplay.DataSource = null;
            grdvwEnrollmentDisplay.DataBind();

            int student_ID = int.Parse(drplstStudentViewEnrollment.SelectedValue);

            String sqlQuery = "SELECT Scholarship.Scholarship_Amount AS Scholarship_Amount, Mentor.Mentor_Name + ' - ' + Mentor.Mentor_Email AS Mentor_Information, Student.Student_Name FROM(((Profile Inner Join Mentor ON Profile.Mentor_ID = Mentor.Mentor_ID ) Inner Join Scholarship ON Profile.Scholarship_ID = Scholarship.Scholarship_ID) Inner Join Student ON Profile.Student_ID = Student.Student_ID) WHERE Profile.Student_ID = " + student_ID;

            SqlConnection conn = new SqlConnection("Data Source=Localhost;Initial Catalog=Lab1;Integrated Security=True");

            SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, conn);

            DataTable dtEnrollmentGridView = new DataTable();

            sqlAdapter.Fill(dtEnrollmentGridView);

            grdvwEnrollmentDisplay.DataSource = dtEnrollmentGridView;

            grdvwEnrollmentDisplay.DataBind();
        }

        //Programmed by Ahmad Wahedi

        protected void updateGridView()
        {
            grdvwEnrollmentDisplay.DataSource = null;
            grdvwEnrollmentDisplay.DataBind();

            String sqlQuery = "SELECT Scholarship.Scholarship_Amount AS Scholarship_Amount, Mentor.Mentor_Name + ' - ' + Mentor.Mentor_Email AS Mentor_Information, Student.Student_Name FROM(((Profile Inner Join Mentor ON Profile.Mentor_ID = Mentor.Mentor_ID ) Inner Join Scholarship ON Profile.Scholarship_ID = Scholarship.Scholarship_ID) Inner Join Student ON Profile.Student_ID = Student.Student_ID)";

            SqlConnection conn = new SqlConnection("Data Source=Localhost;Initial Catalog=Lab1;Integrated Security=True");

            SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, conn);

            DataTable dtEnrollmentGridView = new DataTable();

            sqlAdapter.Fill(dtEnrollmentGridView);

            grdvwEnrollmentDisplay.DataSource = dtEnrollmentGridView;

            grdvwEnrollmentDisplay.DataBind();

        }
    }
}