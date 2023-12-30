using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Giỏ_hàng : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // khi đã đăng nhập
            if (Session["username"] != null)
            {
                box_account.InnerHtml = "<p class='user' style='color: #fff; font-size: 13px;'>Xin chào " + Session["username"].ToString() + "</p>" +
                                  "<a class='logout' style='text-decoration: none; font-size: 13px; color: #fff;' href = 'Dangxuat.aspx'> Đăng xuất </a>";

            }

            List<Product> Productcart = (List<Product>)Application["ProductCart"];
            List<Product> ListProduct = new List<Product>();

            int Sumprice = 0;

            foreach (Product product in Productcart)
            {
                ListProduct.Add(product);
                Sumprice += product.SumProduct;
            }

            ShowProductCart.DataSource = ListProduct;
            ShowProductCart.DataBind();

            string priceString = Sumprice.ToString();

            double a = Int32.Parse(priceString);
            double b = (a * 0.1);
            a += (a * 0.1);

            SumPrice.InnerHtml = $"{a}đ";

            int countProduct = Productcart.Count;
            vat.InnerHtml = $"{b}đ ";
            textSL.InnerHtml = $"Số lượng sản phẩm giỏ hàng có: {countProduct}";
        }

    }

}