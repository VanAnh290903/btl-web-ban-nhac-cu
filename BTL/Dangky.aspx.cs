using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string username = Request.Form.Get("username");
                string email = Request.Form.Get("gmail");
                string password = Request.Form.Get("password");
                string repassword = Request.Form.Get("re_password");
                List<Nguoidung> users = (List<Nguoidung>)Application["Users"];
                bool check = true;
                if (username != "" && email != "" && password != "" && repassword != "")
                {
                    foreach (Nguoidung user in users)
                    {
                        if (username == user.username)
                        {
                            btn_error.InnerHtml = "Tài khoản đã được sử dụng";
                            check = false;
                        }
                    }
                    
                    if (check)
                    {
                        btn_error.InnerHtml = "Đăng ký thành công";
                        Nguoidung newUser = new Nguoidung(username, email, password, repassword);
                        users.Add(newUser);
                        Application["Users"] = users;
                    }
                }
            }
        }
    }
}