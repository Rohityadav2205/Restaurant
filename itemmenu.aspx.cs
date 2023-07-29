using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class menuitem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            lbl.Text = "";
            DataSet1TableAdapters.itemmenuTableAdapter da = new DataSet1TableAdapters.itemmenuTableAdapter();
            da.Insert(Convert.ToInt32(DropDownList1.Text), txtitemname.Text, Convert.ToInt32(txtprice.Text), txtpacking.Text);
            GridView1.DataBind();
            
            lbl.Text = "your order number" + da.maxitem();
        }
        catch (Exception ex){
            lbl.Text = ex.Message;
        }
            

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtitemname.Text = "";
        txtpacking.Text = "";
        txtprice.Text = "";
  



    }
}