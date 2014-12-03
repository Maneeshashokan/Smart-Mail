using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    Base_class obj = new Base_class();
    Random rand = new Random();
    DataSet dss = new DataSet();
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            inbox();
        }
    }
    
    public void inbox()
    {
        dss.Clear();
        dss = obj.show("select * from inbox where to1='manumon'and secure=0 and trash_status=0 ");
        //session not set.
        gvinbox.DataSource = dss;
        gvinbox.DataBind();
        //select i.* from inbox i full outer join attach a on attch=1 and i.msg_id=a.m_id where  to1='manumon' and trash_status=0 and secure=0 
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}