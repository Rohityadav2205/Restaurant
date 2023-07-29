using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class restaurant_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lbl.Text = "";
            DataSet1TableAdapters.restaurant_infoTableAdapter da = new DataSet1TableAdapters.restaurant_infoTableAdapter();
            DataSet1.restaurant_infoDataTable dt = da.GetDataByrestaurant();
            if (dt.Rows.Count <= 0)
            {
                throw new Exception("Error");
            }
            DataSet1.restaurant_infoRow dr = (DataSet1.restaurant_infoRow)dt.Rows[0];
            lblname.Text = dr.name;
            lblphoneno.Text = "" + dr.phoneno;
            lbladdress.Text = dr.address;
            lblpincode.Text = dr.pincode;
            lbltagline.Text = dr.tagline;
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
            lblname.Text = "";
            lblphoneno.Text = "";
            lbladdress.Text = "";
            lblpincode.Text = "";
            lbltagline.Text = "";
        }





    }
}