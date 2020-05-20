﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.Configuration;

namespace TicketReservation
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Compate the inserted information with the database for users (Registers)
            if (authenticate(TextBox1.Text, TextBox2.Text))
            {
                Response.Redirect("~/Home.aspx");
            }
            else
            {
                Label3.Text = "Invalid Username and Password";
                Label3.ForeColor = System.Drawing.Color.Red;
            }
        }

        private bool authenticate(string Username, string Passsword)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegFormConnectionString1"].ConnectionString);
            SqlCommand cmd = new SqlCommand("sp_select", con);
            cmd.CommandType = CommandType.StoredProcedure;

            string encryp = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "SHA1");
            //Add the inserted value to the database
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", encryp);
            con.Open();
            int codereturn = (int)cmd.ExecuteScalar();
            return codereturn == 1;


        }
    }
}