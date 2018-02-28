using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserInput : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submitBtn_Click(object sender, EventArgs e)
    {
        OleDbDataReader reader1;
        OleDbConnection con1 = new OleDbConnection();
        OleDbCommand cmd1 = new OleDbCommand();
        con1.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\lab03\\WebSite2\\App_Data\\lab04.accdb";
        cmd1.Connection = con1;

        string sqlInsert = "INSERT INTO Students ([firstName],[registrationNo],[class],[section]) values('"+nameInput.Text+"',"+regNoInput.Text+",'"+classInput.Text+"','"+sectionInput.Text+"')";
        con1.Open();

        cmd1.CommandText = sqlInsert;
        cmd1.ExecuteNonQuery();
        submissionStatus.Controls.Add(new Literal { Text = "Information Has Been Added To Database Successfully" });
        con1.Close();
    }
}