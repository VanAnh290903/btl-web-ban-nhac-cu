<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchProduct.aspx.cs" Inherits="BTL.SearchProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tìm kiếm sản phẩm</title>
    <link href="Style/Grid.css" rel="stylesheet" />
    <link href="Style/Trangchu.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Header -->
            <div class="header">
                <div class="grid wide">
                    <div class="header-navbar">
                        <div class="logo-header">
                            <a href="Trangchu.aspx">
                                <img class="img-logoHeader"
                                    style="width: 80px; height: 100%; display: flex; border-radius: 30%;"
                                    src="Img/banner_icon/Logo.png" alt="">
                            </a>
                        </div>
                        <div class="box-search_header">
                            <input id="search" runat="server" type="text" placeholder="Tìm kiếm sản phẩm, thương hiệu bạn mong muốn..."
                                class="input-header">

                            <button type="submit"   class="icon-search fa-solid fa-magnifying-glass" onserverclick="SearchBtn" runat="server"></button>
                        </div>
                        <div class="promotion-header">
                            <img src="Img/banner_icon/icon_khuyenmai.png" alt="" class="icon-tag-header">
                            <a href="#" class="promotion-title">
                                <span class="promotion-title_1">Khuyến mãi</span>
                                <span class="promotion-title_2">Đang diễn ra</span>
                            </a>
                        </div>
                        <div class="contact-header">
                            <i class="fa-solid fa-phone icon-phone-header"></i>
                            <div class="box-phone">
                                <a href="" class="phone-header_1">0913.081.172 HN</a>
                                <a href="" class="phone-header_2">0901.826.553 HCM</a>
                            </div>
                        </div>
                        <div class="account-header">
                            <i class="fa-solid fa-user icon-user"></i>
                            <div class="box-account" id="box_account" runat="server">
                                <a href="Dangnhap.aspx" class="header-login">Đăng nhập</a>
                                <a href="Dangky.aspx" class="header-register">Đăng ký </a>
                            </div>
                        </div>
                        <div class="box-cart">
                            <a href="Giohang.aspx">
                                <i class="icon-cart fa-solid fa-cart-shopping"></i>
                            </a>
                            <span class="sum-product_header" id="CountProduct" runat="server">0</span>
                            <!-- List Product Buy Cart -->
                            <div class="header-product_cart">
                                <h3 class="header-list-buy-title" id="HeaderListBuyTitle" runat="server">Sản phẩm đã thêm</h3>
                                <ul class="header-list-product-buy">
                                    <asp:ListView ID="ProductCartHeader" runat="server">
                                        <ItemTemplate>
                                            <div class="product-buy-item">
                                                <span class="product-img-cart">
                                                    <img src=" <%# Eval("Images") %>"
                                                        class="img-product" alt="">
                                                </span>
                                                <span class="product-cart-name"><%# Eval("Name") %></span>
                                                <span class="product-cart-price"><%# Eval("PriceNew") %>đ</span>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </ul>
                                <div class="header-show-cart">
                                    <a href="Giohang.aspx" style="text-decoration: none;" class="show-cart">Xem Giỏ Hàng</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Category -->
            <div class="category">
                <div class="grid wide">
                    <ul class="category-Listproduct">
                        <li class="category-item">
                            <a href="Trangchu.aspx" class="category-item_name">ĐÀN PIANO <i
                                class="fa-sharp fa-solid fa-angle-down"></i>
                            </a>
                            <ul class="category-item_menu">
                                <li class="category-item_product">GRAND PIANO</li>
                                <li class="category-item_product">UPRIGHT PIANO</li>
                                <li class="category-item_product">PIANO CŨ</li>
                                <li class="category-item_product">ĐÀN PIANO ĐIỆN</li>
                            </ul>
                        </li>
                        <li class="category-item">
                            <a href="Trangchu.aspx" class="category-item_name">ORGAN/KEYBOARD <i
                                class="fa-sharp fa-solid fa-angle-down"></i>
                            </a>
                            <ul class="category-item_menu">
                                <li class="category-item_product">CHUYÊN NGHIỆP</li>
                                <li class="category-item_product">HỌC TẬP</li>
                                <li class="category-item_product">ORGAN NHÀ THỜ</li>
                                <li class="category-item_product">ĐÀN PIANO ĐIỆN</li>
                            </ul>
                        </li>
                        <li class="category-item">
                            <a href="Trangchu.aspx" class="category-item_name">GUITAR <i
                                class="fa-sharp fa-solid fa-angle-down"></i>
                            </a>
                            <ul class="category-item_menu">
                                <li class="category-item_product">ACOUSTIC GUITAR</li>
                                <li class="category-item_product">CLASSIC GUITAR</li>
                                <li class="category-item_product">GUITAR ĐIỆN</li>
                                <li class="category-item_product">GUITAR BASS</li>
                            </ul>
                        </li>
                        <li class="category-item">
                            <a href="Trangchu.aspx" class="category-item_name">TRỐNG - BỘ GÕ <i
                                class="fa-sharp fa-solid fa-angle-down"></i>
                            </a>
                            <ul class="category-item_menu">
                                <li class="category-item_product">TRỐNG ĐIỆN</li>
                                <li class="category-item_product">ACOUSTIC DRUMSET</li>
                                <li class="category-item_product">BỘ GÕ</li>
                            </ul>
                        </li>
                        <li class="category-item">
                            <a href="Trangchu.aspx" class="category-item_name">KÈN - SÁO - VIOLIN <i
                                class="fa-sharp fa-solid fa-angle-down"></i>
                            </a>
                            <ul class="category-item_menu">
                                <li class="category-item_product">KÈN ĐỒNG</li>
                                <li class="category-item_product">KÈN HARMONICA</li>
                                <li class="category-item_product">SÁO FLUTE</li>
                                <li class="category-item_product">ĐÀN VIOLIN</li>
                            </ul>
                        </li>
                        <li class="category-item">
                            <a href="Trangchu.aspx" class="category-item_name">AMPLIFIER & EFFECT <i
                                class="fa-sharp fa-solid fa-angle-down"></i>
                            </a>
                            <ul class="category-item_menu">
                                <li class="category-item_product">AMPLIFIER</li>
                                <li class="category-item_product">GUITAR EFFECTS</li>
                            </ul>
                        </li>
                        <li class="category-item">
                            <a href="Trangchu.aspx" class="category-item_name">PHỤ KIỆN <i
                                class="fa-sharp fa-solid fa-angle-down"></i>
                            </a>
                            <ul class="category-item_menu">
                                <li class="category-item_product">PHỤ KIỆN PIANO</li>
                                <li class="category-item_product">PHỤ KIỆN ORGAN</li>
                                <li class="category-item_product">PHỤ KIỆN GUITAR</li>
                                <li class="category-item_product">PHỤ KIỆN TRỐNG</li>
                            </ul>
                        </li>
                        <li class="category-item">
                            <a href="Trangchu.aspx" class="category-item_name">PHÒNG THU <i
                                class="fa-sharp fa-solid fa-angle-down"></i>
                            </a>
                            <ul class="category-item_menu">
                                <li class="category-item_product">LOA MONITOR</li>
                                <li class="category-item_product">HEADPHONE MONITOR</li>
                                <li class="category-item_product">MIDI CONTROLLER</li>
                                <li class="category-item_product">MICROPHONE</li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>

            <%-- Result Search --%>
            <div class="grid wide">
                <div class="row mt-16">
                    <p id="notification" runat="server">
                        Bạn chưa nhập dữ liệu
                    </p>
                    <asp:ListView ID="Result_Search" runat="server">
                        <ItemTemplate>
                            <div class="col l-3 mt-16">
                                <a class="linkProduct" href="Chitietsanpham.aspx?id=<%# Eval("Id") %>">
                                    <div class="content-product">
                                        <img src="<%# Eval("Images") %>" alt=""
                                            class="product_img">
                                        <div class="product_nameproduct">
                                            <%# Eval("Name") %>
                                        </div>
                                        <div class="product_price">
                                            <p class="price-old">
                                                <%# Eval("PriceOld") %>đ
                                            </p>
                                            <p class="price-new">
                                                <%# Eval("PriceNew") %>đ
                                            </p>
                                        </div>
                                        <div class="product_vote">
                                            <i class="icon-heart fa-solid fa-heart"></i>
                                            <div class="product-list-star">
                                                <i class="icon-star fa-solid fa-star"></i>
                                                <i class="icon-star fa-solid fa-star"></i>
                                                <i class="icon-star fa-solid fa-star"></i>
                                                <i class="icon-star fa-solid fa-star"></i>
                                                <i class="icon-star fa-solid fa-star"></i>
                                            </div>
                                        </div>
                                </a>
                                <div class="product-item-origin">
                                    <spand class="product-item-brand">Việt Nam</spand>
                                    <a style="text-decoration=none; cursor: pointer; float: right; margin-right: 50px;"
                                        href="AddProduct.aspx?id=<%# Eval("Id") %>">
                                        <spand class="product-item-cart" style="margin-left: 0;">
                                            <i class="fa-solid fa-cart-plus"></i>
                                        </spand>
                                    </a>
                                </div>
                                <div class="product-selloff">
                                    <span class="selloff-number">43%</span>
                                    <span class="selloff-des">GIẢM</span>
                                </div>
                            </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>

            <!--Footer-->
            <div class="footer mt-16">
                <div class="grid wide">
                    <div class="footer-menu_1">
                        <div class="bank-cart">
                            <div class="img-footer-cart"></div>
                            <div class="bank-cart-title">
                                <span class="bank-cart-title1">Trả góp</span>
                                <span class="bank-cart-title2">MUA HÀNG LÃI SUẤT 0%</span>
                            </div>
                        </div>
                        <div class="transport">
                            <div class="img-footer-transport"></div>
                            <div class="transport-title">
                                <span class="transport-title1">Vận chuyển</span>
                                <span class="transport-title2">CHUYÊN NGHIỆP - TỐC ĐỘ</span>
                            </div>
                        </div>
                        <div class="protected">
                            <div class="img-footer-protected"></div>
                            <div class="protected-title">
                                <span class="protected-title1">Bảo hành</span>
                                <span class="protected-title2">HIỆU QUẢ - CHẤT LƯỢNG</span>
                            </div>
                        </div>
                        <div class="home">
                            <div class="img-footer-home"></div>
                            <div class="home-title">
                                <span class="home-title1">Đại lý</span>
                                <span class="home-title2">TRẢI RỘNG KHẮP VIỆT NAM</span>
                            </div>
                        </div>
                    </div>
                    <div class="footer-menu_2">
                        <div class="l-3 footer-connecting">
                            <ul class="list-connecting">
                                <h5 class="">Kết nối với chúng tôi</h5>
                                <span class="list-icon">
                                    <li class="icon-facebook"></li>
                                    <li class="icon-yt"></li>
                                    <li class="icon-insta"></li>
                                </span>
                            </ul>
                        </div>
                        <div class="l-3 footer-customer-support">
                            <ul class="list-customerSupport">
                                <h5 class="">Hỗ trợ khách hành</h5>
                                <li class="">Gọi mua hàng:</li>
                                <li class="">0913.081.172</li>
                                <li class="">0901.826.553</li>
                                <li class="">Khiếu nại, Bảo hành</li>
                                <li class="">Thời gian phục vụ: 8h-22h</li>
                                <li class="">Email: info@nhaccu.vn</li>
                            </ul>
                        </div>
                        <div class="l-3 footer-companyInformation">
                            <ul class="list-companyInfo">
                                <h5 class="">Về chúng tôi</h5>
                                <li class="">Giới thiệu công ty</li>
                                <li class="">Điều khoản sử dụng</li>
                                <li class="">Hệ thống cửa hàng</li>
                                <li class="">Liên hệ - Góp ý</li>
                            </ul>
                        </div>
                        <div class="l-3 footer-systemWeb">
                            <ul class="list-systemWeb">
                                <h5 class="">Hệ thống Website</h5>
                                <li class="">Hướng dẫn mua hàng</li>
                                <li class="">Chính sách bảo hành</li>
                                <li class="">Chính sách đổi trả</li>
                                <li class="">Mua trả góp</li>
                                <li class="">Quy định giao hàng</li>
                                <li class="">Kích hoạt bảo hành</li>
                            </ul>
                        </div>

                    </div>
                </div>
                <div class="footer-menu_3">
                    Made by TPAA
                </div>
            </div>
        </div>
    </form>
    <script>
        var search = document.getElementById("search");
        var submit = document.getElementById("submit");
        submit.onclick = function (e) {
            if (search.value == "") {
                alert("Vui lòng nhập dữ liệu");
                e.preventDefault();
            }
        }
    </script>
</body>
</html>
