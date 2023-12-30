<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="BTL.Giỏ_hàng" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link href="Style/Giohang.css" rel="stylesheet" />
    <link href="Style/Trangchu.css" rel="stylesheet" />
    <link href="Style/Grid.css" rel="stylesheet" />
    <link href="Style/responsive.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="app">
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
                            <a href="" style="text-decoration: none; width: 80%">
                                <input type="text" placeholder="Tìm kiếm sản phẩm, thương hiệu bạn mong muốn..."
                                    class="input-header" style="width: 100%">
                            </a>
                            <p class="icon-search">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </p>
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
                            <a href="Trangchu.aspx" class="category-item_name">ORGAN <i
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
                            <a href="Trangchu.aspx" class="category-item_name mobile-hidden">KÈN - SÁO - VIOLIN <i
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
                            <a href="Trangchu.aspx" class="category-item_name mobile-hidden">AMPLIFIER & EFFECT <i
                                class="fa-sharp fa-solid fa-angle-down"></i>
                            </a>
                            <ul class="category-item_menu">
                                <li class="category-item_product">AMPLIFIER</li>
                                <li class="category-item_product">GUITAR EFFECTS</li>
                            </ul>
                        </li>
                        <li class="category-item">
                            <a href="Trangchu.aspx" class="category-item_name mobile-hidden">PHỤ KIỆN <i
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
                            <a href="Trangchu.aspx" class="category-item_name mobile-hidden">PHÒNG THU <i
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

            <!-- Box List Product Buy Cart -->
            <div id="textSL" runat="server"></div>
            <div class="box-ProductCart">
                <div class="grid wide">
                    <div class="row">
                        <div class="col l-12">
                            <div class="ProductCart-title">
                                <span class="nameTitle">Sản phẩm</span>
                                <span class="priceTitle">Đơn giá</span>
                                <span class="amountTitle">Số lượng</span>
                                <span class="sumTitle">Thành tiền</span>
                                <span class="evenTitle">Thao tác</span>
                            </div>
                            <asp:ListView ID="ShowProductCart" runat="server">
                                <ItemTemplate>
                                    <div class="ProductCartItem">
                                        <span class="ProductImg">
                                            <img class="imageProduct" src="<%# Eval("Images") %>" alt="">
                                        </span>
                                        <span class="ProductName"><%# Eval("Name") %></span>
                                        <span class="Product-priceOld"><%# Eval("PriceOld") %>đ</span>
                                        <span class="Product-priceNew"><%# Eval("PriceNew") %>đ</span>
                                        <div class="box-amount">
                                            <a class="amount-increase" style="text-decoration: none; color: black;" id="increase" href=""><i class="fa-solid fa-plus"></i></a>
                                            <%-- TangSpGioHang.aspx?id=<%#Eval("Id")%> --%>
                                            <span class="amount-buy"><%# Eval("Quantity") %></span>
                                            <a class="amount-reduce" style="text-decoration: none; color: black;" id="reduce" href=""><i class="fa-solid fa-minus"></i></a>
                                            <%-- GiamSpGioHang.aspx?id=<%#Eval("Id")%> --%>
                                        </div>
                                        <span class="ProductSumPrice" id="ProductSumPrice" runat="server"><%# Eval("SumProduct") %>đ</span>
                                        <a class="xoa" href="Xoagiohang.aspx?id=<%#Eval("Id")%>" style="text-decoration: none; display: flex; margin: auto 0; border: none; padding: 10px 22px; background-color: #333; color: #fff; border-radius: 3px; font-size: 15px; cursor: pointer;">Xóa</a>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                        <div class="col l-12">
                            <div class="ProductCartPay">
                                <span class="vat" id="">Thuế VAT: </span>
                                <span id="vat" runat="server"></span>
                                <span class="PayTitle">Tổng thanh toán:</span>
                                <span runat="server" id="SumPrice" class="PayPrice">0đ</span>
                                <button class="Pay">Thanh toán ngay</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Footer-->
        <div class="footer">
            <div class="grid wide">
                <div class="footer-menu_1" style="display: block; padding-top: 16px;">
                    <div class="row">
                        <div class="bank-cart l-3 c-6" style="margin-top: 12px; margin-left: 18px">
                            <div class="img-footer-cart"></div>
                            <div class="bank-cart-title">
                                <span class="bank-cart-title1">Trả góp</span>
                                <span class="bank-cart-title2">MUA HÀNG LÃI SUẤT 0%</span>
                            </div>
                        </div>
                        <div class="transport l-3 c-6" style="margin-top: 12px;">
                            <div class="img-footer-transport"></div>
                            <div class="transport-title">
                                <span class="transport-title1">Vận chuyển</span>
                                <span class="transport-title2">CHUYÊN NGHIỆP - TỐC ĐỘ</span>
                            </div>
                        </div>
                        <div class="protected l-3 c-6" style="margin-top: 12px;">
                            <div class="img-footer-protected"></div>
                            <div class="protected-title">
                                <span class="protected-title1">Bảo hành</span>
                                <span class="protected-title2">HIỆU QUẢ - CHẤT LƯỢNG</span>
                            </div>
                        </div>
                        <div class="home l-3 c-6" style="margin-top: 12px; margin-right: -18px;">
                            <div class="img-footer-home"></div>
                            <div class="home-title">
                                <span class="home-title1">Đại lý</span>
                                <span class="home-title2">TRẢI RỘNG KHẮP VIỆT NAM</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-menu_2" style="display: block; margin-top: 16px;">
                    <div class="row">
                        <div class="l-3 c-6 footer-connecting" style="margin-top: 12px; margin-left: 18px;">
                            <ul class="list-connecting">
                                <h5 class="">Kết nối với chúng tôi</h5>
                                <span class="list-icon">
                                    <li class="icon-facebook"></li>
                                    <li class="icon-yt"></li>
                                    <li class="icon-insta"></li>
                                </span>
                            </ul>
                        </div>
                        <div class="l-3 c-6 footer-customer-support" style="margin-top: 12px;">
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
                        <div class="l-3 c-6 footer-companyInformation" style="margin-top: 12px;">
                            <ul class="list-companyInfo">
                                <h5 class="">Về chúng tôi</h5>
                                <li class="">Giới thiệu công ty</li>
                                <li class="">Điều khoản sử dụng</li>
                                <li class="">Hệ thống cửa hàng</li>
                                <li class="">Liên hệ - Góp ý</li>
                            </ul>
                        </div>
                        <div class="l-3 c-6 footer-systemWeb" style="margin-top: 12px; margin-right: -18px">
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
            </div>
            <div class="footer-menu_3">
                Made by TPAA
            </div>
        </div>
        </div>

    </form>
</body>
</html>
