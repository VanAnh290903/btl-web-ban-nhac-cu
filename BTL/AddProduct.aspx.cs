using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
                        check = false;
                        Response.Redirect("Trangchu.aspx");
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
                    Response.Redirect("Trangchu.aspx");
                }

            }
            else
            {
                Response.Redirect("Dangnhap.aspx");
            }
        }
    }
}