using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_Trash : System.Web.UI.Page
{
    Base_class obj = new Base_class();
    DataSet dss = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            trash();
        }

    }
    public void trash()
    {
        dss = obj.show("select * from inbox where (to1='manumon' and trash_status=1) or (frm='manumon' and sent_status=0 and trash_status=1) or (frm='manumon' and draft_status=0 and trash_status=1)");
        //session  not set
        gvtrash.DataSource = dss;
        gvtrash.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach(GridViewRow rr in gvtrash.Rows  )
        {
            ((CheckBox)rr.FindControl("CheckBox1")).Checked = true;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow rr in gvtrash.Rows)
        {
            ((CheckBox)rr.FindControl("CheckBox1")).Checked = false;
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}