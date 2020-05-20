using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TicketReservation
{
    public partial class Reservation : System.Web.UI.Page
    {
        //Create data database connection
        String CS = ConfigurationManager.ConnectionStrings["RegFormConnectionString2"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
            using (SqlConnection con = new SqlConnection(CS)) 
            {
                //Read the data from trains table and add them in the dropdown list
                SqlCommand cmd = new SqlCommand("Select TrainId, TrainNo, Day, DepartureTime, ArrivalTime, Date from Trains", con);
                con.Open();
                DropDownList1.DataSource= cmd.ExecuteReader();
                DropDownList1.DataBind();
                
            }
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Add the selected option in the textbox
            SqlConnection con = new SqlConnection(CS);
            TextBox1.Text =Convert.ToString(DropDownList1.SelectedItem.Value);
            TextBox1.Text= Convert.ToString(DropDownList1.SelectedItem.Text);
         }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Add the selected option into the booking table
            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand("insert into Bookings (TrainNo) values (@TrainNo)", con);
            cmd.Parameters.AddWithValue("TrainNo", DropDownList1.SelectedItem.Value);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i != 0)
            {
                lblmsg.Text = " Your ticket has been reserved!";
                lblmsg.ForeColor = System.Drawing.Color.ForestGreen;

            }
            else
            {
                lblmsg.Text = "Something went wrong with selection";
                lblmsg.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}