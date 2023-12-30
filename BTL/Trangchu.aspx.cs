using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["checkdn"] = 0;

            // khi đã đăng nhập
            if (Session["username"] != null)
            {
                box_account.InnerHtml = "<p class='user' style='color: #fff; font-size: 13px;'>" + Session["username"].ToString() + "</p>" +
                                  "<a class='logout' style='text-decoration: none; font-size: 13px; color: #fff;' href = 'Dangxuat.aspx'> Đăng xuất </a>"
                                  ;

            }

            //+"<a class='doimk' style='text-decoration: none; font-size: 13px; color: #fff;' href = 'doimk.aspx'> Đổi mật khẩu</a>"


            List<Product> ProductList = (List<Product>)Application["productList"];
            List<Product> ProductCart = (List<Product>)Application["ProductCart"];

            List<Product> SPmoi = new List<Product>();
            List<Product> SPpiano = new List<Product>();
            List<Product> SPpianodien = new List<Product>();
            List<Product> SPorgan = new List<Product>();
            List<Product> SPguitar = new List<Product>();
            List<Product> CartHeader = new List<Product>();

            // render sp của từng loại ra màn hình 
            foreach (Product product in ProductList)
            {
                string id = product.Id;
                if (id == "1" || id == "2" || id == "3" || id == "4")
                {
                    SPmoi.Add(product);
                }
                if (id == "5" || id == "6" || id == "7" || id == "8")
                {
                    SPpiano.Add(product);
                }
                if (id == "9" || id == "10" || id == "11" || id == "12")
                {
                    SPpianodien.Add(product);
                }
                if (id == "13" || id == "14" || id == "15" || id == "16")
                {
                    SPorgan.Add(product);
                }
                if (id == "17" || id == "18" || id == "19" || id == "20")
                {
                    SPguitar.Add(product);
                }
            }

            sanphammoi.DataSource = SPmoi;
            sanphammoi.DataBind();
            Piano.DataSource = SPpiano;
            Piano.DataBind();
            PianoDien.DataSource = SPpianodien;
            PianoDien.DataBind();
            Organ.DataSource = SPorgan;
            Organ.DataBind();
            Guitar.DataSource = SPguitar;
            Guitar.DataBind();

            if (Session["username"] != null)
            {
                int countProduct = ProductCart.Count;

                CountProduct.InnerHtml = $"{countProduct}";

                // render các sản phẩm ở giỏ hàng khi hover vào 
                foreach (Product product in ProductCart)
                {
                    CartHeader.Add(product);
                    // mess_iconAdd.InnerHtml = "Them thanh cong";
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
    }
}