using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using ShoppingCart.Models;

namespace ShoppingCart.DataAccessLayer
{
    public class DBMethods
    {
        string connect = "Data Source=(localdb)\\MSSqlLocalDB;Initial Catalog=ComSim2;Integrated Security=true;";
        SqlConnection con = null;
        SqlCommand cmd = null;
        SqlDataReader r = null;
        public string Login(int cid, string password)
        {
            try
            {
                con = new SqlConnection(connect);
                con.Open();
                cmd = new SqlCommand("sp_LoginCustomer", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cid", cid);
                cmd.Parameters.AddWithValue("@pass", password);
                r = cmd.ExecuteReader();
                string result = "";
                if (r.Read()) result = "Login Success";
                else result = "Login Failure";

                return result;
            }
            catch (System.Exception)
            {
                throw;
            }
            finally
            {
                con.Close();
            }
        }

        public int InsertCustomer(CustomerModel cm)
        {
            try
            {
                con = new SqlConnection(connect);
                con.Open();
                cmd = new SqlCommand("sp_InsertCustomer", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", cm.CustName);
                cmd.Parameters.AddWithValue("@add", cm.CustAddress);
                cmd.Parameters.AddWithValue("@mno", cm.MobNo);
                cmd.Parameters.AddWithValue("@email", cm.EmailId);
                cmd.Parameters.AddWithValue("@pwd", cm.Password);
                SqlParameter cid = new SqlParameter("@cid", SqlDbType.Int);
                cid.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(cid);
                var res = cmd.ExecuteNonQuery();
                if (res == 1) return (int)cid.Value;

            }
            catch (System.Exception)
            {
                throw;
            }
            finally
            {
                con.Close();
            }
            return 0;
        }


        public int InsertOrder(OrderModel om)
        {
            try
            {
                con = new SqlConnection(connect);
                con.Open();
                cmd = new SqlCommand("sp_InsertOrder", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cid", om.CustId);
                cmd.Parameters.AddWithValue("@pid", om.ProductId);
                cmd.Parameters.AddWithValue("@qty", om.Qty);
                cmd.Parameters.AddWithValue("@oamt", om.TotalAmount);
                cmd.Parameters.AddWithValue("@pmode", om.PaymentMode);
                SqlParameter oid = new SqlParameter("@oid", SqlDbType.Int);
                oid.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(oid);
                var res = cmd.ExecuteNonQuery();
                if (res == 1) return (int)oid.Value;

            }
            catch (System.Exception)
            {
                throw;
            }
            finally
            {
                con.Close();
            }
            return 0;
        }
    }
}