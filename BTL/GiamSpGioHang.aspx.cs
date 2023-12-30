using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class GiamSpGioHang : System.Web.UI.Page
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
                    product.Quantity--;
                    if (product.Quantity < 1)
                    {
                        product.Quantity = 1;
                        string PriceResult = Regex.Replace(product.PriceNew, @"[^a-zA-Z0-9" + "]+", string.Empty);
                        product.SumProduct = Int32.Parse(PriceResult);
                    }
                    else
                    {
                        string PriceResult = Regex.Replace(product.PriceNew, @"[^a-zA-Z0-9" + "]+", string.Empty);
                        product.SumProduct = product.Quantity * Int32.Parse(PriceResult);
                    }
                }
            }

            Response.Redirect("Giohang.aspx");
        }
    }
}