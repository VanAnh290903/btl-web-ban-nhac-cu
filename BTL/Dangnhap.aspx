<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="BTL.Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <link href="Style/Dangnhap.css" rel="stylesheet" />
    <link href="Style/resDKDN.css" rel="stylesheet" />
</head>
<body>
    <form action="Dangnhap.aspx" method="post" runat="server">
        <div class="modal-login">
            <div class="modal-login_title">
                <a href="Trangchu.aspx">
                    <img src="Img/banner_icon/Logo.png" class="logo-login" alt="">
                </a>
                <p>Đăng Nhập</p>
            </div>
            <div class="modal__body-login">
                <div class="modal__inner">
                    <div class="modal__header">
                        <h3 class="modal__header-register">Đăng nhập</h3>
                        <a class="linkRegister" href="Dangky.aspx">Đăng ký</a>
                    </div>
                    <div class="modal__infor">
                        <input type="text" id="username" name="username" class="username-login" placeholder="Tên đăng nhập" autocomplete="off" >
                        <input type="password" id="password" name="password" class="password-login" placeholder="Mật khẩu" autocomplete="off">
                    </div>
                    <%--<div class="seePW">
                        <input type="checkbox" name="HienMK"  id="HienMK" class="HienMK"  />
                        <label for="HienMK">Hiện mật khẩu</label>
                    </div>--%>
                    <div class="modal_error">
                        <p runat="server" id="mess_error"></p>
                    </div>
                 <%--   <a href="doimk.aspx" >Đổi mật khẩu</a>--%>

                    <%--<div class="modal__option">
                        <spand class="modal__des-item-password">Quyên mật khẩu</spand>
                        <spand class="modal__des-item-help">Cần trợ giúp?</spand>
                    </div>--%>
                    <div class="modal__control-login">
                        <a href="Trangchu.aspx" class="return-login">Trở lại</a>
                        <%--<button id="submit" runat="server" class="login">Đăng nhập</button>--%>
                        <input type="submit" runat="server" class="login" id="submit" value="Đăng nhập" />
                    </div>
                    <%--<div class="modal__connection-login">
                        <button class="modal__connection-face">
                            <i class="icon-facebook fa-brands fa-facebook"></i>Kết
                        nối
                        với Facebook</button>
                        <button class="modal__connection-google">
                            <i class="icon-google fa-brands fa-google"></i>Kết
                        nối
                        với
                        Google</button>
                    </div>--%>
                    <div class="modal__end"></div>
                </div>
            </div>
        </div>
    </form>

    <script>
        var username = document.querySelector('.username-login')
        var password = document.querySelector('.password-login')
        var error = document.querySelector('#mess_error')
        var submit = document.getElementById("submit");
        var form = document.getElementById("form");

        username.onclick = function () {
            error.innerHTML = ""
        }
        // không cho nhập ký tự cách
        //username.addEventListener("keypress", function (event) {
        //    if (event.charCode === 32) {
        //        event.preventDefault();
        //    }
        //});
        //password.addEventListener("keypress", function (event) {
        //    if (event.charCode === 32) {
        //        event.preventDefault();
        //    }
        //});

        password.onchange = function () {
            error.innerHTML = ""

        }
        username.onchange = function () {
            if (username.value.trim() == "") {
                error.innerHTML = "Điền đầy đủ tên tài khoản và mật khẩu"
            }   
        }

        password.onchange = function () {
            if (password.value.trim() == "") {
                error.innerHTML = "Điền đầy đủ tên tài khoản và mật khẩu"
            }
        }

       

        submit.onclick = function (e) {
            if (submit.value == "Đã Bị Khóa") {
                e.preventDefault();
            } else 
            if (password.value.trim() == "" || username.value.trim() == "" ) {
                error.innerHTML = "Điền đầy đủ tên tài khoản và mật khẩu"
                e.preventDefault();
            }
        }


        //Hiện mật khẩu
        var InputHienMK = document.getElementById("HienMK");
        var password = document.getElementById("password");
        InputHienMK.onclick = function (e) {
            if (InputHienMK.checked) {
                password.type = 'text';
            }
            else {
                password.type = 'password';
            }
            
        }
        // check validate
       
        var username = document.getElementById("username");

        var checkRegister = true;
        //password.onblur = function () {
        //    if (pasword.value.trim() == "") {
        //        checkRegister = false
        //        setErrorFor(pasword, " này không được bỏ trống")
        //    }
        //}
        //username.onblur = function () {
        //    if (pasword.value.trim() == "") {
        //        checkRegister = false
        //        setErrorFor(pasword, "Trường này không được bỏ trống")
        //    }
        //}

        //submit.onclick = function (e) {
        //    console.log("123")
        //    //if (checkRegister == false) {
        //    //    e.preventDefault();
        //    //}
        //    if (password.value.trim() == "" || username.value.trim()=="") {

        //        alert("Bạn cần nhập mật khẩu và tài khoản");
        //        e.preventDefault();
        //    }

        //}


    </script>
</body>
</html>
