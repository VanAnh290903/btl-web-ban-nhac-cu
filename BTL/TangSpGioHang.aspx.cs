using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class TangSpGioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
 
            List<Product> Productcart = (List<Product>)Application["ProductCart"];

            string id = Request.QueryString.Get("id");
            string price = "";

            foreach (Product product in Productcart)
            {
                if (product.Id == id)
                {
                    product.Quantity++;
                    price = product.PriceNew;
                    string PriceResult = Regex.Replace(price, @"[^a-zA-Z0-9" + "]+", string.Empty);
                    product.SumProduct = product.Quantity * Int32.Parse(PriceResult);
                }
            }

            Response.Redirect("Giohang.aspx");
        }
    }
}