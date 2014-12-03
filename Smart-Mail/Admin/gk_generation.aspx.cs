using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_gk_generation : System.Web.UI.Page
{
    Base_class obj = new Base_class();
   // DataSet dss = new DataSet();
    SqlDataReader rd;
    public string k;
    Random rand = new Random();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        show();
        update();
        
    }
    public void show()
    {
        ds.Clear();
       ds= obj.show("select gp_id,sender,date from gp_mail  where gp_status=0 and gp_key='0' ");

       fvgroup.DataSource = ds;
       fvgroup.DataBind();
               
    }
    public void update()
    {
        ds.Clear();
        ds = obj.show("select gp_id,sender,date from gp_mail  where gp_status=1 and update_status=1 and gp_key!='0' ");

        fvupdate.DataSource = ds;
        fvupdate.DataBind();
    }

protected void  fvgroup_ItemCommand(object sender, FormViewCommandEventArgs e)
{
    if (e.CommandName== "master")
    {
        k = key();
        string id = e.CommandArgument.ToString();
        bool set = obj.save("update gp_mail set gp_status=1,gp_key='"+k+"' where gp_id='"+id+"'");
        show();
    }
    else if (e.CommandName == "block")
    {
        string id = e.CommandArgument.ToString();
        bool set = obj.save("delete from gp_mail  where gp_id='" + id + "'");
        show();
    }
   
}
     public string key()
    {
        int ab;
        Double k;
        ab = rand.Next(18094, 998740193);
        k = obj.key_value();
        string private_k = Math.Ceiling(k + ab).ToString();
        return private_k;
    }
     protected void FormView2_PageIndexChanging(object sender, FormViewPageEventArgs e)
     {
         fvupdate.PageIndex = e.NewPageIndex;
         update();
     }
     protected void fvupdate_ItemCommand(object sender, FormViewCommandEventArgs e)
     {
      if (e.CommandName == "update")
        {
            k = key();
            string id = e.CommandArgument.ToString();
            bool set = obj.save("update gp_mail set gp_status=1,gp_key='" + k + "',update_status=0 where gp_id='" + id + "'");
            update();
        }
     }
     protected void fvgroup_PageIndexChanging(object sender, FormViewPageEventArgs e)
     {
         fvgroup.PageIndex = e.NewPageIndex;
         show();
     }
}