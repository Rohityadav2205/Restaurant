using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tabledata : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            DataSet1TableAdapters.TablesTableAdapter da = new DataSet1TableAdapters.TablesTableAdapter();
            da.Insert(txtTablename.Text, Convert.ToInt32(txtnoofseats.Text), txtcomments.Text, "free");
            GridView1.DataBind();
            lbl.Text = "Table selected" + da.Maxtables();


        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtTablename.Text = "";
        txtnoofseats.Text = "";
        txtcomments.Text = "";
        //Bookingstatus.Text = "";
        lbl.Text = "";

    }
}