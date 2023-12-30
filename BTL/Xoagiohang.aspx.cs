using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Xoagiohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> Productcart = (List<Product>)Application["ProductCart"];

            string id = Request.QueryString.Get("id");

            int ifound = Productcart.FindIndex(x => x.Id == id);

            Productcart.RemoveAt(ifound);

            Response.Redirect("Giohang.aspx");
        }
    }
}