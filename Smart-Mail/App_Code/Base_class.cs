using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Base_class
/// </summary>
public class Base_class
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["key"]);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader rd;
    SqlDataAdapter ad = new SqlDataAdapter();
    DataSet ds = new DataSet();
    private static uint m1, m2;
    
    public bool save(string str)
    {
        con.Close();
        try
        {
            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            return true;

        }
        catch(Exception ex)
        {
            return false;
        }
            
    }
    public SqlDataReader search(string str)
    {
        con.Close();
        cmd = new SqlCommand(str, con);
        con.Open();
        rd = cmd.ExecuteReader();
        return rd;

    }
    public DataSet show(string str)
    {
        ad = new SqlDataAdapter(str, con);
        ad.Fill(ds);
        return ds;
    }
    public Double key_value()
    {
        uint u = getuint();
        
        return (u + 1.0) * 3.190987662352367932;
    }
    public uint getuint()
    {
          m1 = 65434 * (m1 & 9898) + (m1 >> 16);
          m2 = 876523 * (m2 & 9898) + (m2 >> 16);
          return (m1 << 16) + (m2 + 9898);
    }
    string st = "0";
    public string  select1(string str)
    {
        try
        {
            con.Close();
            cmd = new SqlCommand(str, con);
            con.Open();
            st = cmd.ExecuteScalar().ToString();
            
                return st;
        }
        catch (Exception ex)
        {
            return st;
        }

    }
   
}