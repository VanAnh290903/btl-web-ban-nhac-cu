using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Dangxuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*List<Product> ProductCart = (List<Product>)Application["ProductCart"];
            int length = ProductCart.Count;
            for (int i = 0; i < length; i++)
            {
                ProductCart.RemoveAt(i);
            }
            */
            Session.Abandon();
            Response.Redirect("Trangchu.aspx");
        }
    }
}