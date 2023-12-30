using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Chitietsanpham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // khi đã đăng nhập
            if (Session["username"] != null)
            {
                box_account.InnerHtml = "<p class='user' style='color: #fff; font-size: 13px;'>Xin chào " + Session["username"].ToString() + "</p>" +
                                  "<a class='logout' style='text-decoration: none; font-size: 13px; color: #fff;' href = 'Dangxuat.aspx'> Đăng xuất </a>";

            }

            List<Product> ProductCart = (List<Product>)Application["ProductCart"];
            List<Product> CartHeader = new List<Product>();

            string id = Request.QueryString.Get("id");

            if (id != null)
            {
                List<Product> ProductList = (List<Product>)Application["ProductList"];
                List<Product> Productinformation = new List<Product>();
                foreach (Product product in ProductList)
                {
                    if (id == product.Id)
                    {
                        Productinformation.Add(product);

                    }
                    ProductInfo.DataSource = Productinformation;
                    ProductInfo.DataBind();
                }
            }
            else
            {
                Response.Redirect("Trangchu.aspx");
            }


            if (Session["username"] != null)
            {
                int countProduct = ProductCart.Count;

                CountProduct.InnerHtml = $"{countProduct}";

                // render các sản phẩm ở giỏ hàng khi hover vào 
                foreach (Product product in ProductCart)
                {
                    CartHeader.Add(product);
                }

                // khi giỏ hàng rỗng 
                if (countProduct == 0)
                {
                    HeaderListBuyTitle.InnerHtml = "Giỏ hàng rỗng";
                }

                ProductCartHeader.DataSource = CartHeader;
                ProductCartHeader.DataBind();
            }
        }

        protected void AddToCartButton(object sender, EventArgs e)
        {

            List<Product> ProductList = (List<Product>)Application["ProductList"];

            List<Product> ProductCart = (List<Product>)Application["ProductCart"];

            if (Session["username"] != null)
            {
                string id = Request.QueryString.Get("id");
                bool check = true;

                foreach (Product product in ProductCart)
                {
                    if (product.Id == id)
                    {
                        Themgio.InnerHtml = "Sản phẩm đã có trong giỏ hàng";
                        check = false;
                        break;
                    }
                }
                if (check == true)
                {
                    foreach (Product product in ProductList)
                    {
                        if (product.Id == id)
                        {
                            ProductCart.Add(product);
                        }
                    }

                    Themgio.InnerHtml = "Thêm thành công";
                }

                if (Session["username"] != null)
                {
                    List<Product> CartHeader = new List<Product>();

                    int countProduct = ProductCart.Count;

                    CountProduct.InnerHtml = $"{countProduct}";

                    // render các sản phẩm ở giỏ hàng khi hover vào 
                    foreach (Product product in ProductCart)
                    {
                        CartHeader.Add(product);
                    }

                    // khi giỏ hàng rỗng 
                    if (countProduct == 0)
                    {
                        HeaderListBuyTitle.InnerHtml = "Giỏ hàng rỗng";
                    }

                    ProductCartHeader.DataSource = CartHeader;
                    ProductCartHeader.DataBind();
                }
            }
            else
            {
                Response.Redirect("Dangnhap.aspx");
            }


        }
    }
}
