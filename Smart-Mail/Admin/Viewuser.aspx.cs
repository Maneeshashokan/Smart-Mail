using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Viewuser : System.Web.UI.Page
{
    DataSet dss = new DataSet();
    Base_class ob = new Base_class();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show();
        }
    }
    public void show()
    {
       dss= ob.show("select reg_id,name,lname,mob,city,secur_type,date from registration where status='1'");
        Gvview.DataSource = dss;
        Gvview.DataBind();
    }



    protected void btmark_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow r in Gvview.Rows)
        {
            ((CheckBox)r.FindControl("Cb")).Checked = true;
        }
    }
    protected void btunmark_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow r in Gvview.Rows)
        {
            ((CheckBox)r.FindControl("Cb")).Checked = false;
        }
    }
    protected void btblock_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow r in Gvview.Rows)
        {
            string id = ((Label)r.FindControl("Label1")).Text;
            if (((CheckBox)r.FindControl("Cb")).Checked == true)
            {
                ob.save("update registration set status='0' where reg_id='"+id+"'");
            }
        }
        show();
    }
    protected void Gvview_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Gvview.PageIndex = e.NewPageIndex;
        show();
    }
    protected void btview_Click(object sender, EventArgs e)
    {
        
    }
    protected void Gvview_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            Session["view"] = e.CommandArgument.ToString();
            Response.Redirect("profile.aspx");
        }
    }
}