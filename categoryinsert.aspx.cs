using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class categoryinsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet1TableAdapters.categorymenuTableAdapter da = new DataSet1TableAdapters.categorymenuTableAdapter();
            da.Insert(txtName.Text, txtComment.Text);
            GridView1.DataBind();
            lbl.Text = "item added = " + da.MaxCategory();
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }
}