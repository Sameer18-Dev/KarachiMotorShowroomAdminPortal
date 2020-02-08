using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace VehicleRegManagementSystem
{
    public partial class InsertData : System.Web.UI.Page
    {
        private SqlConnection xConn;
        public String conString = @"Server=ACER-SPIN5\SQLEXPRESS; DataBase=Test2; UID=sa; PWD=12345;";
        protected void Page_Load(object sender, EventArgs e)
        {
            xConn = new SqlConnection(conString);
        }

       
        protected void Savebtn_Click(object sender, EventArgs e)
        {
            xConn.Open();
            new SqlCommand("Insert into tblCustomer values ('" + txtName.Text + "','" + txtNic.Text + "','" + txtPhone.Text + "','" + txtVehicle.Text + "','" + txtEngine.Text + "','" + txtChasis.Text + "','" + txtNoPlate.Text + "','" + RegFees.Text + "')", xConn).ExecuteNonQuery();
            Response.Write("<script>alert('Data Inserted !!')</script>");
            xConn.Close();            
        }

        protected void Resetbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertData.aspx");
        }
    }
}