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
    public partial class View : System.Web.UI.Page
    {
        private SqlConnection xConn;
        public String conString = @"Server=ACER-SPIN5\SQLEXPRESS; DataBase=Test2; UID=sa; PWD=12345;";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            xConn = new SqlConnection(conString);
            disp_data();
        }
        private void disp_data()
        {
            DataTable xTable = new DataTable();
            new SqlDataAdapter("Select * from tblCustomer",xConn).Fill(xTable);
            xGrid.DataSource = xTable;
            xGrid.DataBind();
            xConn.Close();
        }

        protected void Deletebtn_Click(object sender, EventArgs e)
        {

            string deleteQuery = "DELETE FROM tblCustomer WHERE CID = " + CustID.Text;
            xConn.Open();
            SqlCommand cmd = new SqlCommand(deleteQuery, xConn);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Data deleted !!')</script>");
            xConn.Close();
            Response.Redirect("View.aspx"); ;
        }
    }
 }