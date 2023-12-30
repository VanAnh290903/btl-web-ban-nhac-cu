<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="BTL.Dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Ký</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link href="Style/Dangky.css" rel="stylesheet" />
    <link href="Style/Grid.css" rel="stylesheet" />
    <link href="Style/resDKDN.css" rel="stylesheet" />
  
</head>
<body>
    <form action="Dangky.aspx" method="post" runat="server">
        <div class="modal-register ">
            <div class="modal-register_title">
                <a href="Trangchu.aspx">
                    <img src="Img/banner_icon/Logo.png" style="height: 72px; margin-right: 22px;"
                        class="logo-register" alt="">
                </a>
                <p>Đăng ký</p>
            </div>
            <div class="modal__body-register">
                <div class="modal__inner">
                    <div class="modal__header">
                        <h3 class="modal__header-register">Đăng ký</h3>
                        <a class="linkLogin" href="Dangnhap.aspx">Đăng nhập</a>
                    </div>
                    <div class="modal__infor">
                        <div class="form-group" style="margin-top: 2px">
                            <input type="text" id="username" class="form-control input username" placeholder="Nhập tên đăng nhập"
                                name="username">
                            <span class="form-message mess-username" style="font-size: 13px; color: #f53e2d; height: 23px;"></span>
                        </div>
                        <div class="form-group" style="margin-top: 2px">
                            <input type="text" id="gmail" class="form-control input gmail" placeholder="Nhập gmail" name="gmail">
                            <span class="form-message mess-gmail" style="font-size: 13px; color: #f53e2d; height: 23px;"></span>
                        </div>
                        <div class="form-group" style="margin-top: 2px">
                            <input type="password" id="password" class="form-control input password" placeholder="Nhập mật khẩu" name="password">
                            <span class="form-message mess-pass" style="font-size: 13px; color: #f53e2d; height: 23px;"></span>
                        </div>
                        <div class="form-group" style="margin-top: 2px">
                            <input type="password" id="re_password" class="form-control input re_password" placeholder="Nhập lại mật khẩu" name="re_password">
                            <span class="form-message mess-repass" style="font-size: 13px; color: #f53e2d; height: 23px;"></span>
                        </div>
                       

                        <%-- SDT --%>
                        <%--<div class="form-group" style="margin-top: 2px">
                            <input type="text" id="phone" class="form-control input phone" placeholder="Nhập SDT" name="phone">
                            <span class="form-message mess-phone" style="font-size: 13px; color: #f53e2d; height: 23px;"></span>
                        </div>--%>

                        <div class="form-group" style="margin-top: 2px">
                            <span id="btn_error" class="form-message" style="font-size: 13px; color: #f53e2d; height: 23px;" runat="server"></span>
                        </div>
                    </div>
                     <%--<div class="seePW">
                        <input type="checkbox" name="HienMK"  id="HienMK" class="HienMK"  />
                        <label for="HienMK">Hiện mật khẩu</label>
                    </div>--%>
                    <div class="modal__des">
                        <spand class="modal__des-item">
                            Bằng việc đăng ký, bạn đã đồng ý với chúng tôi về <a href=""
                                class="modal_des-item">Điều
                            khoản dịch
                            vụ</a> & <a href="" class="modal_des-item">Chính sách bảo mật</a></spand>
                    </div>
          <%--          <a href="doimk.aspx">Đổi mật khẩu</a>--%>
                    <div class="modal__control">
                        <a class="return-register" href="Trangchu.aspx">Trở lại</a>
                        <button type="" id="submit" class="register">Đăng ký</button>
                    </div>
                    <%--<div class="modal__connection">
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
        var messform = document.querySelector('.mess-form')
        var username = document.querySelector('.username')
        var gmail = document.querySelector('.gmail')
        var pasword = document.querySelector('.password')
        var repassword = document.querySelector('.re_password')
        var inputs = document.querySelectorAll('.input')
        var checkRegister = true;

        var phone = document.querySelector('.phone')

        function setErrorFor(input, message) {
            const formControl = input.parentElement;
            const span = formControl.querySelector('span');
            span.innerText = message;
        }

        function setSuccessFor(input) {
            const formControl = input.parentElement;
            const span = formControl.querySelector('span');
            span.innerText = '';
        }

        // check ten dang nhap phai co 6 ky tu
        //username.onchange = function () {
        //    if (username.value.trim().length < 6) {
        //        setErrorFor(username, "Tên đăng nhập phải có ít nhất 6 ký tự")
        //        checkRegister = false
        //    } else {
        //        setSuccessFor(username)
        //        checkRegister = true
        //    }
        //}

        // check gmail phải đúng định dạng
        
        //gmail.onchange = gmail.oninput = function () {
        //    var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
        //    if (regex.test(gmail.value.trim()) == false) {
        //        setErrorFor(gmail, "Gmail chưa đúng định dạng")
        //        checkRegister = false
        //    } else {
        //        setSuccessFor(gmail)
        //        checkRegister = true
        //    }
        //    if (gmail.value == "") {
        //        setErrorFor(gmail, "")
        //    }
        //}
        

        /* Check SDT có từ 8-11 ký tự bắt đầu từ 0 */
        
        //phone.onchange = phone.oninput = function () {
        //    var regex = /((09|03|07|08|05)+([0-9]{6,9})\b)/g;
        //    if (regex.test(phone.value.trim()) == false) {
        //        setErrorFor(phone, "SDT phải có 8-11 ký tự, bắt đầu từ 0")
        //        checkRegister = false
        //    } else {
        //        setSuccessFor(phone)
        //        checkRegister = true
        //    }
        //    if (phone.value =="") {
        //        setErrorFor(phone, "")
        //    }

        //}
        

        // Check Mật khẩu phải có số và ký tự thường và ký tự in hoa
        
        //function numberPassword(password) {
        //    var numbers = /[0-9]/g;
        //    if (password.value.match(numbers)) {
        //        return true;
        //    }
        //    else return false;
        //}

        //function charactersPassword(password) {
        //    var characters = /[a-z]/g;
        //    if (password.value.match(characters)) {
        //        return true;
        //    }
        //    else return false;
        //}

        //function CharactersPassword(password) {
        //    var Characters = /[A-Z]/g;
        //    if (password.value.match(Characters)) {
        //        return true;
        //    }
        //    else return false;
        //}

        //password.onblur = password.oninput = function () {
        //    if (!numberPassword(password) || !charactersPassword(password) || !CharactersPassword(password)) {
        //        setErrorFor(password, "Mật khẩu phải có số, ký tự thường và ký tự in hoa ");
        //        checkRegister = false
        //    }
        //    else {
        //        setSuccessFor(password);
        //        checkRegister = true
        //    }
        //}
        



        // Check nhap lai mat khau
        repassword.onchange = function () {
            if (password.value.trim() != repassword.value.trim()) {
                setErrorFor(repassword, "Mật khẩu nhập lại không trùng với mật khẩu")
                checkRegister = false
            } else {
                setSuccessFor(repassword)
                checkRegister = true
            }
        }


        // Khi nhấn vào ô nhập bất kỳ sẽ ẩn lỗi
        
        //for (let i = 0; i < inputs.length; i++) {
        //    inputs[i].onclick = function () {
        //        setErrorFor(inputs[i]);
        //    }
        //}
        


        // check chay khi k nhập nội dung
        /*
        gmail.onblur = function () {
            if (pasword.value.trim() == "") {
                checkRegister = false
                setErrorFor(gmail, "Trường này không được bỏ trống")
            }
        }


        pasword.onblur = function () {
            if (pasword.value.trim() == "") {
                checkRegister = false
                setErrorFor(pasword, "Trường này không được bỏ trống")
            }
        }


        repasword.onblur = function () {
            if (pasword.value.trim() == "") {
                checkRegister = false
                setErrorFor(repasword, "Trường này không được bỏ trống")
            }
        }
        */

        submit.onclick = function (e) {
            if (checkRegister == false) {
                e.preventDefault();
            }
        }



        //Mật khẩu Ký tự đầu là ký tự in hoa
        /*
        function checkpass(password) {
            var Characters = /[A-Z]/g;
            var a = password.value.charAt(0);
            if (a.match(Characters)) {
                return true;
            }
            else {
                return false;
            }

        }
        password.onblur = password.oninput = function () {
            if (!checkpass(password)) {
                setErrorFor(password, "Ký tự đầu phải là ký tự in hoa ");
            }
            else {
                setSuccessFor(password);
            }
        }
        */

        //^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/ Mật khẩu có 8-15 ký tự, 1 hoa, 1 thường, 1 đặc biệt, 1 số

        //Mật khẩu Tối thiểu 7-15 ký tự, 1 in thường, 1 số, 1 ký tự đb
        /*function checkpass(password) {
            if (password.value.match(/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/)) {
                return true;
            }
            else {
                return false;
            }
        }
            password.onblur = password.oninput = function () {
                if (!checkpass(password)) {
                setErrorFor(password, "Mật khẩu phải có tối thiểu 7 ký tự, có ký tự thường, số, đặc biệt");
            }
            else {
                setSuccessFor(password);
            }
        }
        */
        //hiện mk
        var InputHienMK = document.getElementById("HienMK");
        var password = document.getElementById("password");
        var re_password = document.getElementById("re_password");
        InputHienMK.onclick = function (e) {
            if (InputHienMK.checked) {
                password.type = 'text';
                re_password.type = 'text';
            }
            else {
                password.type = 'password';
                re_password.type = 'password';
            }

        }

    </script>
</body>
</html>
