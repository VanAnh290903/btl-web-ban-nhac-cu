using System;
using System.Collections.Generic;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string username = Session["username"].ToString();

            string name = Request.Form.Get("tk");
            string pass = Request.Form.Get("mk");

            string passnew = Request.Form.Get("thaymk");

            List<Nguoidung> users = (List<Nguoidung>)Application["Users"];

            //foreach (Nguoidung user in users)
            //{
            //    if (user.username == name)
            //    {
            //        user.password = passnew;
            //    }
            //}

            int check = 0;

            if (name != "" && pass != "")
            {
                foreach (Nguoidung user in users)
                {
                    if (name == user.username)
                    {
                        check = 1;
                        if (pass == user.password)
                        {
                            user.password = passnew;
                            break;
                        }
                    }
                }
                //{
                //    mess.InnerHtml = "Không tồn tại tài khoản";
                //}
                if (check == 1)
                {
                    mess.InnerHtml = "Đổi mật khẩu thành công";
                }
            }


        }
    }
}