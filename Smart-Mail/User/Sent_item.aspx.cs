using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Sent_item : System.Web.UI.Page
{
    Base_class obj = new Base_class();
    DataSet dss = new DataSet();
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            sent();
            MultiView1.ActiveViewIndex = 0;
            Session["f_msgid"] = "";
        }
    }
    public void sent()
    {
        dss = obj.show("select * from inbox where frm='manumon' and sent_status=1 and secure=0");//set session " + Session["uname"].ToString() + "
        gvinbox0.DataSource = dss;
        gvinbox0.DataBind();
    }
    public void secure()
    {
        //dss.Clear();
        dss = obj.show("select * from inbox where frm='manumon' and sent_status=1 and secure=1");//set session " + Session["uname"].ToString() + "
        gvinbox0.DataSource = dss;
        gvinbox0.DataBind();
    }  
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        sent();
        plsecure.Visible = false;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        plsecure.Visible = false;
        secure();

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        plsecure.Visible = false;
    }
    protected void Btmark_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow op in gvinbox0.Rows)
        {
            ((CheckBox)op.FindControl("cbcheched0")).Checked = true;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow op in gvinbox0.Rows)
        {
            ((CheckBox)op.FindControl("cbcheched0")).Checked = false;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow r in gvinbox0.Rows)
        {
            if (((CheckBox)r.FindControl("cbcheched0")).Checked == true)
            {
                string id = ((Label)r.FindControl("lblcheck0")).Text;
                bool s = obj.save("update inbox set trash_status=1,sent_status=0 where msg_id='" + id + "'");
            }
        }
        sent();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        plsecure.Visible = false;
        rd = obj.search("select master_key from secure s, registration r where s.s_id=r.reg_id and reg_id='2'");
        //session not set
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                Session["id1"] = rd[0].ToString();

            }
        }
        string k = txtkey.Text;
        if (Session["id1"].ToString() == k)
        {

            plsecure.Visible = true;

        }
        else
        {
            msg("Security Key Not Matching.");
        }

    }
    public void msg(string str)
    {
        RegisterStartupScript("", "<script language=javascript >alert('" + str + "')</script>");
    }
    protected void gvinbox0_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "forward")
        {
            Session["f_msgid"] = e.CommandArgument;
            Response.Redirect("compose.aspx");
        }
    }
    protected void gvsecure_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "forward")
        {
            Session["f_msgid"] = e.CommandArgument;
            Response.Redirect("compose.aspx");
        }
    }
    protected void btmark_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow op in gvsecure.Rows)
        {
            ((CheckBox)op.FindControl("CheckBox2")).Checked = true;
        }
    }
    protected void btunmark_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow op in gvsecure.Rows)
        {
            ((CheckBox)op.FindControl("CheckBox2")).Checked = false;
        }
    }
    protected void btdelete_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow r in gvsecure.Rows)
        {
            if (((CheckBox)r.FindControl("CheckBox2")).Checked == true)
            {
                string id = ((Label)r.FindControl("lblck")).Text;
                bool s = obj.save("update inbox set trash_status=1,sent_status=0 where msg_id='" + id + "'");
            }
        }
        secure();
 
    }
    protected void gvsecure_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvsecure.PageIndex = e.NewPageIndex;
        secure();
    }
    protected void gvinbox0_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvinbox0.PageIndex = e.NewPageIndex;
        sent();
    }
}
