using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

                string a = Session["checkdn"].ToString();
                int b = Int32.Parse(a);

                if (b >= 5)
                {
                    mess_error.InnerHtml = "Bạn bị cấm đăng nhập vì đăng nhập sai 5 lần. Mời quay lại trang chủ";
                    submit.Value = "Đã Bị Khóa";
                }
                else
                {
                    string usernameL = Request.Form.Get("username");
                    string passwordL = Request.Form.Get("password");
                    int check = 0;
                    if (usernameL != "" && passwordL != "")
                    {
                        List<Nguoidung> users = (List<Nguoidung>)Application["Users"];

                        foreach (Nguoidung user in users)
                        {
                            if (usernameL == user.username)
                            {
                                check = 1;
                                if (passwordL == user.password)
                                {
                                    Session["username"] = usernameL;
                                    Session["checkdn"] = 0;
                                    Response.Redirect("Trangchu.aspx");

                                    break;
                                }
                                else
                                {
                                    mess_error.InnerHtml = "Sai mật khẩu";
                                    b++;
                                    Session["checkdn"] = b;
                                    //username.Value = usernameL;
                                    break;
                                }
                            }
                        }
                        if (check == 0)
                        {
                            mess_error.InnerHtml = "Không tồn tại tài khoản ";
                            //username.Value = usernameL;
                        }
                    }
                }
            }
        }
    }
}