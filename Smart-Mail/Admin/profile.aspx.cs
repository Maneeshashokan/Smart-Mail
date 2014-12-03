using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_profile : System.Web.UI.Page
{
    SqlDataReader re;
    Base_class obj = new Base_class();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            show();
        }

    }
    public void show()
    {
        re=obj.search("select name,lname,sex,dob,address,mob,city,nationality,uname,image,secur_type,date from registration where reg_id='"+Session["view"].ToString()+"'");
        if (re.HasRows)
        {
            while(re.Read())
            {
                string[] dt = re[3].ToString().Split(' ');

                lblname.Text = re[0].ToString()+" " + re[1].ToString();
                lblsex.Text = re[2].ToString();
                lbldob.Text = dt[0] ;
                lbladdr.Text = re[4].ToString();
                lblmob.Text = re[5].ToString();
                lblcity.Text = re[6].ToString();
                lblnationality.Text = re[7].ToString();
                lblusername.Text = re[8].ToString();
                Profile_Image.ImageUrl = re[9].ToString();
                lblsecure.Text = re[10].ToString();
                lbljoin.Text = re[11].ToString();
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("feedback.aspx");
    }
}