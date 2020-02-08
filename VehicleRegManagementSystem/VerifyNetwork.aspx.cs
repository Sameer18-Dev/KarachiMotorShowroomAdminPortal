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
    public partial class VerifyNetwork : System.Web.UI.Page
    {
        public String conString = @"Server=ACER-SPIN5\SQLEXPRESS; DataBase=Test2; UID=sa; PWD=12345;";
        protected void Page_Load(object sender, EventArgs e)
        {
            string P = Request.QueryString["Phone"].ToString();
            string Code = P.Substring(0, 4);
            SqlConnection xConn = new SqlConnection(conString);
            DataTable xTable = new DataTable();
            new SqlDataAdapter("Select Company from tblGSM Where Codes='" + Code + "'", xConn).Fill(xTable);
            if (xTable.Rows.Count == 1)
            {
                Response.Write(xTable.Rows[0][0].ToString());
            }
            else
            {
                Response.Write("Unknown Network");
            }

        }
    }
}