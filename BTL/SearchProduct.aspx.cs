using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class SearchProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            search.Focus();
        }

        protected void SearchBtn(object sender, EventArgs e)
        {
            string key = search.Value.Trim().ToLower();
            
            bool check = false;

            List<Product> ProductList = (List<Product>)Application["ProductList"];
            List<Product> ListSearch = new List<Product>();
          
            foreach (Product product in ProductList)
            {
                if (product.Name.ToLower().CompareTo(key) == 0 || product.Name.ToLower().Contains(key))
                {
                    check = true;
                    //Response.Write("<script> alert('Vui lòng nhập dữ liệu') </ script > ");
                    ListSearch.Add(product);
                }
            }

            if (check == false)
            {
                Response.Redirect("SearchProduct.aspx");
            }
            else
            {
                notification.InnerHtml = "";
                Result_Search.DataSource = ListSearch;
                Result_Search.DataBind();
            }

        }
    }
}