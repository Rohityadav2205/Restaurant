using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Utilities
/// </summary>
public class Utilities
{
	public static String getCategoryNameByCategoryNo(object categoryno)
	{

        try
        {
            DataSet1TableAdapters.categorymenu2TableAdapter da = new DataSet1TableAdapters.categorymenu2TableAdapter();
            String s = (String)da.getCategoryNameByCategoryNo(Convert.ToInt32(categoryno));
            return s;
        }
        catch
        {
            return
                "error";
        }  
	}
}