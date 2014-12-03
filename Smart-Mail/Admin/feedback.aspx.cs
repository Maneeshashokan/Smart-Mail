using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_feedback : System.Web.UI.Page
{
    Base_class ob = new Base_class();
    SqlDataReader rd;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show();
        }
    }
    public void show()
    {
        ds = ob.show("select funame from feedback ");
        ListBox1.DataSource = ds;
        ListBox1.DataTextField = "funame";
        ListBox1.DataBind();
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        rd = ob.search("select r.mob,r.name,r.lname,f.comment,r.reg_id from registration r,feedback f where r.uname=f.funame and funame='"+ListBox1.SelectedItem.Text+"'");
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                lblname.Text = rd[1].ToString()+" "+rd[2].ToString();
                lblfb.Text=rd[3].ToString();
                lblmob.Text = rd[0].ToString();
                Session["view"] = rd[4].ToString();

            }
       }
        
        Panel1.Visible = true;
    }
    protected void btmark_Click(object sender, EventArgs e)
    {
        
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx");
    }
}