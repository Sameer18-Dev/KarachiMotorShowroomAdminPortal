using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace VehicleRegManagementSystem
{
    public partial class LoginForm : System.Web.UI.Page
    {
        private SqlConnection xConn;
        public String conString = @"Server=ACER-SPIN5\SQLEXPRESS; DataBase=Test2; UID=sa; PWD=12345;";
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataBase=VehicleReg;
            xConn = new SqlConnection(conString);
            //FillCustomer();
        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {
            DataTable xTable = new DataTable();
            new SqlDataAdapter("Select * from tblLogin Where Username='" + emailtxt.Text + "' AND Password='" + pwdtxt.Text + "'", xConn).Fill(xTable);
            if (xTable.Rows.Count == 1)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                emailtxt.Text = "Some Error...";
                pwdtxt.Text = null;
            }
        }
    }
}