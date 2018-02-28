using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbDataReader reader1;
        OleDbConnection con1 = new OleDbConnection();
        OleDbCommand cmd1 = new OleDbCommand();
        con1.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\lab03\\WebSite2\\App_Data\\lab04.accdb";
        cmd1.Connection = con1;

        string sqlSelect = "Select firstName, registrationNo, [class], [section] From Students";
        con1.Open();
        cmd1.CommandText = sqlSelect;
        reader1 = cmd1.ExecuteReader();

        string fname = "";
        Int32 regNo = 0;
        string studentClass = "";
        string studentSection = "";

        string responsesList = "";

        if(reader1.HasRows)
        {
            while(reader1.Read())
            {
                fname = reader1.GetString(0);
                regNo = reader1.GetInt32(1);
                studentClass = reader1.GetString(2);
                studentSection = reader1.GetString(3);

                responsesList += "<li style='margin-left:100px;'class='studentName'>" + fname+"'s Response<ul class='responseDetail'><li>Registraion No:"+
                    regNo+"</li><li>Class:"+studentClass+"</li><li>Section:"+studentSection+"</li></ul></li>";

            }
        }
        con1.Close();
        usersResponses.Controls.Add(new Literal { Text = responsesList });
    }
    
}