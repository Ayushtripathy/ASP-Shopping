using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShoppingCart.Models
{
    public class OrderModel
    {
        public int OrderId { get; set; }
        public int ProductId { get; set; }
        public int CustId { get; set; }
        public DateTime OrderDate { get; set; }
        public int Qty { get; set; }
        public decimal TotalAmount { get; set; }
        public string PaymentMode { get; set; }
    }
}