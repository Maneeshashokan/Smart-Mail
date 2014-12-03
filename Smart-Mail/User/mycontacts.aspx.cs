using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_mycontacts : System.Web.UI.Page
{
    Base_class obj = new Base_class();
    DataSet dss = new DataSet();
    SqlDataReader rd;
     bool fl = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            show_grid();
            rd = obj.search("select gp_id from gp_mail where sender='manumon'");//set session
            if (rd.HasRows)
            {
                ddlgroup.Visible=true;
                while (rd.Read())
                {
                    ddlgroup.Items.Add(rd[0].ToString());
                }
            }
          }
    }
    
        public void show_grid()
        {
            lblmsg.Text = "";
            dss = obj.show("SELECT r.uname,name,lname,city from registration r,mycontacts c where c.contact_id='2'and r.uname=c.uname");//set session 
            gvcontact.DataSource = dss;
            gvcontact.DataBind();
            if (dss.Tables[0].Rows.Count > 0)
            {
                Panel3.Visible = true;
            }
        }
      
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow rr in gvcontact.Rows)
            {
                if(((CheckBox)rr.FindControl("CheckBox1")).Checked)
                {
                    string st = ((Label)rr.FindControl("Label1")).Text;

                    for (int i = 0; i <= lbmembers.Items.Count; i++)
                    {
                        try
                        {
                            if (st == lbmembers.Items[i].ToString())
                            {
                                fl = false;
                            }
                        }
                        catch (Exception ex)
                        {
                            if (lbmembers.Items.Count == 0)
                            {
                                fl = true;
                                break;
                            }
                        }
                    }
                    if(fl)
                    {
                    lbmembers.Items.Add(st);
                    }

                    ((CheckBox)rr.FindControl("CheckBox1")).Checked = false;
                }
               

            }
           
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string t=obj.select1("select count(id) from mycontacts where contact_id='2' and uname='"+lbluser.Text+"'");//set session
            if (int.Parse(t) == 0)
            {
                bool b = obj.save("insert into mycontacts values('2','" + lbluser.Text + "')");//set session

            }
            else
            {
                msg("You are already in contact");
            }
            show_grid();
        }
       
        public void msg(string str)
        {
            RegisterStartupScript("", "<script language=javascript >alert('" + str + "')</script>");
        }
    static int count=0;
    static bool flag = false;
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        string[] id=new string[25];
        try
        {
            for (int i = 0; i < lbmembers.Items.Count; i++)
            {
                 id[i]= obj.select1("select b.id from gp_mail g,gp_member b where g.sender='manumon' and b.uname='" + lbmembers.Items[i].ToString() + "'");
                //set session
                if (id[i]!=null)
                {
                    count++;
                }
            }
            
            for (int i = 0; i < lbmembers.Items.Count-1; i++)
            {
                if (id[i] != id[i + 1])
                {
                    flag=true;
                    break;
                }
            }
            if (flag==true)
            {       
                    //string gp_id = rd[0].ToString();
                    string ccc = obj.select1("select count(uname) from gp_member where id='0'");
                    if (int.Parse(ccc) != lbmembers.Items.Count)
                    {
                        insert();
                        msg("Request forwarded please wait....");
                    }
                    else
                    {
                        msg("Group Already Exist..!");

                    }
                
            }
            else
            {
                insert();
                msg("Request forwarded please wait....");
            }


        }
        catch (Exception ex)
        {

        }
    }
    
        public void insert()
        {
            bool bl = obj.save("insert into gp_mail values('manumon',0,'0',0,'" + DateTime.Now.ToShortDateString() + "')");//session
            if (bl)
            {
                string id = obj.select1("select MAX(gp_id) from gp_mail where sender='manumon' ");//set session
                for (int n = 0; n < lbmembers.Items.Count;n++)
                {
                    bool c = obj.save("insert into gp_member values('" + id + "','" + lbmembers.Items[n].ToString() + "')");
                    
                }
                lbmembers.Items.Clear();
            }
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                lbmembers.Items.Remove(lbmembers.SelectedItem.ToString());
            }
            catch (Exception es)
            {
            }
        }
        protected void gvcontact_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string c_name=gvcontact.Rows[e.RowIndex].Cells[2].Text;
            obj.save("delete mycontacts where uname='"+c_name+"' and contact_id='2'");
            show_grid();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            rd = obj.search("select uname from gp_member where id='" + ddlgroup.SelectedValue + "'");
            if (rd.HasRows)
            {
                lbmembers.Items.Clear();
                while (rd.Read())
                {
                    
                    lbmembers.Items.Add(rd[0].ToString());
                }
            }
        }
        protected void gvcontact_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvcontact.PageIndex = e.NewPageIndex;
            show_grid();
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            lblmsg.Text = " ";
            try
            {
                rd = obj.search("select uname,name,lname,city,image from registration where uname='" + txtsearch.Text + "' and status=1");
                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        Panel1.Visible = true;
                        lbluser.Text = rd[0].ToString();
                        lblfirst.Text = rd[1].ToString();
                        lbllast.Text = rd[2].ToString();
                        lblplace.Text = rd[3].ToString();
                        Image1.ImageUrl = rd[4].ToString();
                    }
                }
                else
                {
                    lblmsg.Text = "Sorry, Invalid Username";
                    Panel1.Visible = false;
                }
            }
            catch (Exception ex)
            {
                lblmsg.Text="Sorry, Invalid Username";
                Panel1.Visible = false;
            }
        }
} 