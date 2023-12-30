<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doimk.aspx.cs" Inherits="BTL.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <a href="Trangchu.aspx">Về trang chủ</a>
    <form action="doimk.aspx" method="post" runat="server">
        <div>
            <input class="tk" id="tk" runat="server" placeholder="Nhap ten user" />
            <br />
            <input class="mk" id="mk" runat="server" placeholder="Nhap mat khau" />
            <br />
            <input class="thaymk" id="thaymk" runat="server" placeholder="Nhap mat khau moi" />
            <br />
            <p id="mess" runat="server"></p>
            <button type="" id="submit" class="register">Đổi mật khẩu</button>
        </div>
    </form>

    <script>
        var input = document.querySelector('.thaymk')

        submit.onclick = function (e) {
            if (input.value.trim() == "") {
                e.preventDefault();
            }
        }

    </script>
</body>
</html>
