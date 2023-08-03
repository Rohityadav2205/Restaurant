using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editsitemmenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return;
        lblName.Text = Utilities.getCategoryNameByCategoryNo(Request.QueryString["categoryno"]);


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            DataSet1TableAdapters.itemmenuTableAdapter da = new DataSet1TableAdapters.itemmenuTableAdapter();
            da.Insert(Convert.ToInt32(Request.QueryString["categoryno"]), txtitemname.Text, Convert.ToInt32(txtprice.Text), txtpacking.Text);

            
            lbl.Text = "item is added" + da.maxitem();
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        {
            txtitemname.Text = "";
            txtprice.Text = "";
            txtpacking .Text= "";
        }

    }
}