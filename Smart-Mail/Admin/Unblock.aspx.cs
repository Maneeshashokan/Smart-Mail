using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Unblock : System.Web.UI.Page
{
    Base_class obj = new Base_class();
    DataSet dss = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show();

        }
    }
    public void show()
    {
       dss=obj.show("select reg_id,name,lname,mob from registration where status='0'");
       Gvblock.DataSource = dss;
       Gvblock.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow r in Gvblock.Rows)
        {
            ((CheckBox)r.FindControl("Cb")).Checked = true;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow r in Gvblock.Rows)
        {
            ((CheckBox)r.FindControl("Cb")).Checked = false;
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow r in Gvblock.Rows)
        {
            if (((CheckBox)r.FindControl("Cb")).Checked == true)
            {
                string id = ((Label)r.FindControl("Label1")).Text;
               bool b= obj.save("delete from registration where reg_id='"+id+"'");
            }           
        }
        show();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow r in Gvblock.Rows)
        {
            if (((CheckBox)r.FindControl("Cb")).Checked == true)
            {
                string id = ((Label)r.FindControl("Label1")).Text;
                bool b = obj.save("update registration set status='1' where reg_id='"+id+"'");
            }
        }
        show();
    }
    protected void Gvblock_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Gvblock.PageIndex = e.NewPageIndex;
        show();
    }
   
    protected void Gvblock_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            Session["view"] = e.CommandArgument.ToString();
            Response.Redirect("profile.aspx");
        }
    }
}