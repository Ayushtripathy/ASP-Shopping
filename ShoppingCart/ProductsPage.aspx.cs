using ShoppingCart.DataAccessLayer;
using ShoppingCart.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class ProductsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            Session["pid"] = row.Cells[0].Text;
            pid.Text = Session["pid"].ToString();
            cusid.Text = Session["cid"].ToString();
            prodStock.Text = row.Cells[3].Text;
            prodPrice.Text = row.Cells[2].Text;

        }

        protected void btnorder_Click(object sender, EventArgs e)
        {
            try
            {
                if (int.Parse(qty.Text) > int.Parse(prodStock.Text))
                {
                    output.Text = "Quantity cannot be more then available Stock";
                    return;
                }

                if (!rcash.Checked && !rcard.Checked)
                {
                    output.Text = "Select a Payment Method";
                    return;
                }

                decimal price = decimal.Parse(prodPrice.Text);
                decimal quant = decimal.Parse(qty.Text);
                decimal totalAm = price * quant;
                tamt.Text = totalAm.ToString();

               OrderModel om = new OrderModel();
                om.CustId = int.Parse(cusid.Text);
                om.ProductId = int.Parse(pid.Text);
                om.Qty = int.Parse(qty.Text);
                om.TotalAmount = totalAm;
                if (rcash.Checked) om.PaymentMode = rcash.Text;
                if (rcard.Checked) om.PaymentMode = rcard.Text;

                DBMethods db = new DBMethods();
                var res = db.InsertOrder(om);
                output.Text = "Congratulations! Your order is placed";
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                output.Text = ex.Message;
            }

        }
    }
}