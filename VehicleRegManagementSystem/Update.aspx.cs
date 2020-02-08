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
    public partial class Update : System.Web.UI.Page
    {
        private SqlConnection xConn;
        public String conString = @"Server=ACER-SPIN5\SQLEXPRESS; DataBase=Test2; UID=sa; PWD=12345;";
        protected void Page_Load(object sender, EventArgs e)
        {
            xConn = new SqlConnection(@"Server=ACER-SPIN5\SQLEXPRESS; DataBase=Test2; UID=sa; PWD=12345;");
            disp_data();
        }

        private void disp_data()
        {
            DataTable xTable = new DataTable();
            new SqlDataAdapter("Select * from tblCustomer", xConn).Fill(xTable);
            xGrid.DataSource = xTable;
            xGrid.DataBind();
            xConn.Close();
        }
        protected void Searchbtn_Click(object sender, EventArgs e)
        {
            string SearchQuery = "SELECT OwnerName, OwnerCNIC, Phone, VehicleName, EngineNo, ChasisNo, NoPlate, RegFees FROM tblCustomer WHERE CID = " + CustID.Text;
            SqlCommand cmd = new SqlCommand(SearchQuery, xConn);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = xConn;
            xConn.Open();

            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                sdr.Read();
                OwnerIDtxt.Text = sdr["OwnerName"].ToString();
                NICtxt.Text = sdr["OwnerCNIC"].ToString();
                Phonetxt.Text = sdr["Phone"].ToString();
                VehicleNametxt.Text = sdr["VehicleName"].ToString();
                EngineNotxt.Text = sdr["EngineNo"].ToString();
                ChasisNotxt.Text = sdr["ChasisNo"].ToString();
                NoPlatetxt.Text = sdr["NoPlate"].ToString();
                RegFeestxt.Text = sdr["RegFees"].ToString();
            }
            cmd.ExecuteNonQuery();
            xConn.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string query = "UPDATE tblCustomer SET OwnerName = '" + OwnerIDtxt.Text + "', OwnerCNIC = '" + NICtxt.Text + "', Phone = '" + Phonetxt.Text + "', VehicleName = '" + VehicleNametxt.Text + "', EngineNo = '" + EngineNotxt.Text + "', ChasisNo = '" + ChasisNotxt.Text + "', NoPlate = '" + NoPlatetxt.Text + "', RegFees = '" + RegFeestxt.Text + "' WHERE CID = " + CustID.Text;
            xConn.Open();
            SqlCommand cmd = new SqlCommand(query, xConn);
            cmd.ExecuteNonQuery();
            xConn.Close();
            Response.Redirect("Update.aspx");
        }
    }
}