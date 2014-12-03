using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_MyInbox : System.Web.UI.Page
{
    Base_class obj = new Base_class();
    DataSet ds1 = new DataSet();
    DataSet dss = new DataSet();
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            inbox();
        //    secure();
            MultiView1.ActiveViewIndex = 0;
            Session["r_uname"] = "";
            Session["f_msgid"] = "";
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
        MultiView1.ActiveViewIndex = 0;
        inbox();
        plsecure.Visible = false;
        //inbox();
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

    public void inbox()
    {
        dss.Clear();
        dss = obj.show("select * from inbox where to1='manumon'and secure=0 and trash_status=0");
        //session not set.
        gvinbox0.DataSource = dss;
        gvinbox0.DataBind();
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
    //string k = ((TextBox)gvsinbox.FindControl("txtkey")).Text;
    //string key_e= objct.encrypt(k);
    public void secure()//show the secure mails
    {
        ds1.Clear();

        ds1 = obj.show("select * from inbox where to1='manumon'and secure=0 and trash_status=0 and draft_status=0");//secure=1
        gvsecure.DataSource = ds1;
        gvsecure.DataBind();
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
                bool s = obj.save("update inbox set trash_status=1 where msg_id='" + id + "'");
            }
        }
        secure();
    }
    public void msg(string str)
    {
        RegisterStartupScript("", "<script language=javascript >alert('" + str + "')</script>");
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
                bool s = obj.save("update inbox set trash_status=1 where msg_id='" + id + "'");
            }
        }
        inbox();
    }
    protected void gvsecure_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="reply")
        {
            Session["r_uname"] = e.CommandArgument;
            Response.Redirect("compose.aspx");
        }
        else if (e.CommandName == "forward")
        {
            Session["f_msgid"] = e.CommandArgument;
            Response.Redirect("compose.aspx");
        }
    }
    protected void gvinbox0_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvinbox0.PageIndex = e.NewPageIndex;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void gvinbox0_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "reply")
        {
            Session["r_uname"] = e.CommandArgument;
            Response.Redirect("compose.aspx");
        }
        else if (e.CommandName == "forward")
        {
            Session["f_msgid"] = e.CommandArgument;
            Response.Redirect("compose.aspx");
        }
    }
}