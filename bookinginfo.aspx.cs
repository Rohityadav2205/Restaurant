using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class bookinginfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet1TableAdapters.bookinginfoTableAdapter da = new DataSet1TableAdapters.bookinginfoTableAdapter();
            da.Insert(Convert.ToInt32(txttableno.Text), Convert.ToDateTime(txtbookingtime.Text), Convert.ToDateTime(txtbookingendtime.Text));
            lbl.Text = "booked" + da.maxbooking();
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }
}