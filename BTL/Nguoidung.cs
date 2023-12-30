using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL
{
    public class Nguoidung
    {
        public string username;
        public string email;
        public string password;
        public string repassword;

        public Nguoidung(string username, string email, string password, string repassword)
        {
            this.username = username;
            this.email = email;
            this.password = password;
            this.repassword = repassword;
        }
    }
}