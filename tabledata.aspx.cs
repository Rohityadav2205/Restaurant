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
            DataSet1TableAdapters.tabledetailTableAdapter da = new DataSet1TableAdapters.tabledetailTableAdapter();
            da.Insert1( Convert.ToInt32(txtseats.Text), txtcomment.Text);
            GridView1.DataBind();
            lbl.Text = "your table data= " + da.maxtable();
        }
        catch(Exception ex)
        {
            lbl.Text = ex.Message; 
        }


    }
}