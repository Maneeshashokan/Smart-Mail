using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Data.SqlClient;
using System.Configuration;

public partial class Index_Register : System.Web.UI.Page
{
   public string k;
   static string path;
    Base_class obj = new Base_class();
    Random rand = new Random();
    SqlDataReader rd;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["key"]);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string[] img = Profile_upload.FileName.Split('.');


            path = "../Photos/" + txtmobile.Text + '.' + img[1];
            Profile_upload.SaveAs(MapPath(path));
            Profile_Image.ImageUrl = path;
            Profile_Image.Visible = true;
        }
        catch (Exception ex)
        {

        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        try
        {
            lbldob.Text = "";
            string[] dt = txtdob.Text.Split('/');
            DateTime ob = DateTime.Now;
            string txtyear = dt[2].ToString();
            string year = ob.Year.ToString();
            if (int.Parse(year) < int.Parse(txtyear) || int.Parse(year) - int.Parse(txtyear) < 15)
            {

                lbldob.Text = "Age Limit Not Valid";
                txtdob.Text = "";

            }
        }
        catch (Exception ex)
        {
            lbldob.Text = "Age Limit Not Valid";
            txtdob.Text = "";
        }
           

    }
    public void msg(string str)
    {
        RegisterStartupScript("", "<Script Language=JavaScript>alert('" + str + "')</Script>");

    }

   coding ok = new coding();
    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (rblsecure.SelectedValue == "USB Security" && txtusbkey.Text == "")
        {
            
                lblerror.Text = "Insert your USB key";
           
        }
        bool b = obj.save("insert into registration values('" + txtname.Text + "','" + txtlname.Text + "','" + rblsex.SelectedItem + "','" + txtdob.Text + "','" + txtcity.Text + "','" + txtaddress.Text + "','" + txtmobile.Text + "','" + txtnationality.Text + "','" + txtuid.Text + "','" + txtpassword.Text + "','" + path + "','" + txtqst.Text + "','" + txtans.Text + "','1','1','" + rblsecure.SelectedItem + "',getdate());");
       if(b==true)
       {
           string k = key();
           // Label2.Text = k; display it
           string m_key = ok.encrypt(k);
           con.Open();
           cmd = new SqlCommand("select max(reg_id) from registration", con);

           string id = cmd.ExecuteScalar().ToString();
           con.Close();
           if (rblsecure.SelectedValue == "Normal")
           {
               bool p = obj.save("insert into secure values('" + id + "','" + m_key + "','" + txtuid.Text + "')");
           }
           else
           {
               bool z = obj.save("insert into secure values('" + id + "','" + m_key + "','345')");
           }
           Response.Redirect("../User/Userhome.aspx");
       }
       
    }
    public string key()
    {
        int ab;
        Double k;
        ab = rand.Next(1111, 99999999);
        k = obj.key_value();
        string private_k = Math.Ceiling(k + ab).ToString();
        return private_k;
    }

    protected void rblsecure_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rblsecure.SelectedValue == "USB Security")
        {
            plusb.Visible = true;
            
        }
        else
        {
            plusb.Visible = false;
        }
    }
}