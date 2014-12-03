using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Notifications : System.Web.UI.Page
{
    DataSet dss = new DataSet();
    Base_class obj = new Base_class();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show();
        }
    }
    public void show()
    {
        dss=obj.show("select * from contact");
        FormView1.DataSource = dss;
        FormView1.DataBind();


    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {
        FormView1.PageIndex = e.NewPageIndex;
        show();
    }
    protected void FormView1_ItemDeleting(object sender, FormViewDeleteEventArgs e)
    {

        string id =( (Label)FormView1.FindControl("lblid")).Text;  
        bool b = obj.save("delete from contact where contact_id='"+id+"'");
        show();
    }
}