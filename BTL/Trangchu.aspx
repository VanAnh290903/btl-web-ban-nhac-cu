<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="BTL.Trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link href="Style/Grid.css" rel="stylesheet" />
    <link href="Style/Trangchu.css" rel="stylesheet" />
    <link href="./Style/responsive.css" rel="stylesheet" />
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
                                <img class="img-logo"
                                    src="Img/banner_icon/Logo.png" alt="">
                            </a>
                        </div>
                        <div class="box-search_header">
                                <input type="text" placeholder="Tìm kiếm sản phẩm ..."
                                    class="input-header" style="width: 100%">
                            
                            
                                <a href="SearchProduct.aspx" style="text-decoration: none; width: 80%">
                                    
                                    <p class="icon-search">
                                     <i class="fa-solid fa-magnifying-glass"></i>
                                        
                                        </p>
                            </a>
                               
                            
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
                        <li class="category-item mobile-hidden">
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
                        <li class="category-item mobile-hidden">
                            <a href="Trangchu.aspx" class="category-item_name">AMPLIFIER & EFFECT <i
                                class="fa-sharp fa-solid fa-angle-down"></i>
                            </a>
                            <ul class="category-item_menu">
                                <li class="category-item_product">AMPLIFIER</li>
                                <li class="category-item_product">GUITAR EFFECTS</li>
                            </ul>
                        </li>
                        <li class="category-item mobile-hidden">
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
                        <li class="category-item mobile-hidden">
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
            <!-- Category outstanding -->
            <div class="category-outstand">
                <div class="grid wide">
                    <ul class="category-outstand__list">
                        <span class="category-outstand__title">Danh mục HOT</span>
                        <li class="category-outstand__item mobile-hidden">Đàn Violin</li>
                        <li class="category-outstand__item">Dây đàn Guitar</li>
                        <li class="category-outstand__item">Đàn Piano Điện Roland</li>
                        <li class="category-outstand__item">Đàn Piano Điện Casio</li>
                        <li class="category-outstand__item">Upright Piano</li>
                        <li class="category-outstand__item">Acoustic Guitar</li>
                        <li class="category-outstand__item mobile-hidden">Trống điện Roland</li>
                        <li class="category-outstand__item mobile-hidden">Trống Jazz</li>
                        <li class="category-outstand__item mobile-hidden">Kèn Đồng</li>
                    </ul>
                </div>
            </div>
            <div class="container pt-16">
                <div class="grid wide">
                    <!-- Banner 1-->
                    <section class="home_page">
                        <div class="banner-1">
                            <span class="img-banner_fisrt">
                                <img src="Img/banner_icon/baner1.jpg" alt="" class="img-banner-1">
                            </span>
                            <span class="img-banner_last">
                                <img src="Img/banner_icon/banner-2.jpg" alt="" class="img-banner-2">
                                <img src="Img/banner_icon/Banner_3.jpg" alt="" class="img-banner-3">
                            </span>
                        </div>
                    </section>

                    <%-- thong bao --%>
                    <div id="mess_iconAdd" runat="server" style="font-size: 14px;"></div>

                    <!-- Content -->
                    <div class="content">
                        <div class="content-outstand">
                            <div class="content-outstand_option">
                                <span class="content-outstand_option1 border-bt">Mới & nổi bật</span>
                            </div>
                            <div class="content-outstand_new">
                                <div class="row mt-16">
                                    <asp:ListView ID="sanphammoi" runat="server">
                                        <ItemTemplate>
                                            <div class="col l-3 c-12">
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
                                                </a>
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
                                                <div class="product-item-origin">
                                                    <spand class="product-item-brand">Việt Nam</spand>
                                                    <a class="addproduct" style="text-decoration: none; cursor: pointer; float: right; margin-right: 50px;"
                                                        href="AddProduct.aspx?id=<%# Eval("Id") %>">
                                                        <spand class="product-item-cart" style="margin-left: 0;">
                                                            <i class="fa-solid fa-cart-plus"></i>
                                                        </spand>
                                                        <p class="mess_addproduct"></p>
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
                        </div>
                        <!-- Banner 2-->
                        <section class="home_page mt-16">
                            <div class="banner-2">
                                <img src="Img/banner_icon/banner-4.jpg" alt="" class="img-banner-4">
                                <img src="Img/banner_icon/banner-5.jpg" alt="" class="img-banner-5 mobile-hidden">
                                <img src="Img/banner_icon/banner-6.jpg" alt="" class="img-banner-6">
                            </div>
                        </section>
                        <!-- Piano -->
                        <div class="Product-piano mt-16">
                            <div class="Product-piano-title">Piano</div>
                            <div class="row mt-16">
                                <asp:ListView ID="Piano" runat="server">
                                    <ItemTemplate>
                                        <div class="col l-3 c-12">
                                            <a class="linkProduct" href="Chitietsanpham.aspx?id=<%# Eval("Id") %>">
                                                <div class="content-product">
                                                    <img src="<%# Eval(" Images") %>" alt=""
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
                                            </a>
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
                                            <div class="product-item-origin">
                                                <spand class="product-item-brand">Việt Nam</spand>
                                                <a class="addproduct" style="text-decoration: none; cursor: pointer; float: right; margin-right: 50px;"
                                                    href="AddProduct.aspx?id=<%# Eval("Id") %>">
                                                    <spand class="product-item-cart" style="margin-left: 0;">
                                                        <i class="fa-solid fa-cart-plus"></i>
                                                    </spand>
                                                    <p class="mess_addproduct"></p>
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
                        <!-- Đàn Piano Điện - Digital Piano -->
                        <div class="Product-piano-electronic mt-16">
                            <div class="Product-piano-electronic-title">Đàn Piano Điện - Digital Piano</div>
                            <div class="row mt-16">
                                <asp:ListView ID="PianoDien" runat="server">
                                    <ItemTemplate>
                                        <div class="col l-3 c-12">
                                            <a class="linkProduct" href="Chitietsanpham.aspx?id=<%# Eval("Id") %>">
                                                <div class="content-product">
                                                    <img src="<%# Eval(" Images") %>" alt=""
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
                                            </a>
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
                                            <div class="product-item-origin">
                                                <spand class="product-item-brand">Việt Nam</spand>
                                                <a class="addproduct" style="text-decoration: none; cursor: pointer; float: right; margin-right: 50px;"
                                                    href="AddProduct.aspx?id=<%# Eval("Id") %>">
                                                    <spand class="product-item-cart" style="margin-left: 0;">
                                                        <i class="fa-solid fa-cart-plus"></i>
                                                    </spand>
                                                    <p class="mess_addproduct"></p>
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
                        <!-- Organ/Keyboard -->
                        <div class="Product-organ mt-16">
                            <div class="Product-organ-title">Organ/Keyboard</div>
                            <div class="row mt-16">
                                <asp:ListView ID="Organ" runat="server">
                                    <ItemTemplate>
                                        <div class="col l-3 c-12">
                                            <a class="linkProduct" href="Chitietsanpham.aspx?id=<%# Eval("Id") %>">
                                                <div class="content-product">
                                                    <img src="<%# Eval(" Images") %>" alt=""
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
                                            </a>
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
                                            <div class="product-item-origin">
                                                <spand class="product-item-brand">Việt Nam</spand>
                                                <a class="addproduct" style="text-decoration: none; cursor: pointer; float: right; margin-right: 50px;"
                                                    href="AddProduct.aspx?id=<%# Eval("Id") %>">
                                                    <spand class="product-item-cart" style="margin-left: 0;">
                                                        <i class="fa-solid fa-cart-plus"></i>
                                                    </spand>
                                                    <p class="mess_addproduct"></p>
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
                        <!-- Guitar -->
                        <div class="Product-guitar mt-16">
                            <div class="Product-guitar-title">Guitar</div>
                            <div class="row mt-16">
                                <asp:ListView ID="Guitar" runat="server">
                                    <ItemTemplate>
                                        <div class="col l-3 c-12">
                                            <a class="linkProduct" href="Chitietsanpham.aspx?id=<%# Eval("Id") %>">
                                                <div class="content-product">
                                                    <img src="<%# Eval(" Images") %>" alt=""
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
                                            </a>
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
                                            <div class="product-item-origin">
                                                <spand class="product-item-brand">Việt Nam</spand>
                                                <a class="addproduct" style="text-decoration: none; cursor: pointer; float: right; margin-right: 50px;"
                                                    href="AddProduct.aspx?id=<%# Eval("Id") %>">
                                                    <spand class="product-item-cart" style="margin-left: 0;">
                                                        <i class="fa-solid fa-cart-plus"></i>
                                                    </spand>
                                                    <p class="mess_addproduct"></p>
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
                    </div>
                </div>
            </div>
            <!--Footer-->
            <div class="footer">
                <div class="grid wide">
                    <div class="footer-menu_1" style="display: block; padding-top: 16px;">
                        <div class="row">
                            <div class="bank-cart l-3 c-6 mt-12 ml-18">
                                <div class="img-footer-cart" style="background-image: url('../img/footer/bank-cart.png');">
                                </div>
                                <div class="bank-cart-title">
                                    <span class="bank-cart-title1">Trả góp</span>
                                    <span class="bank-cart-title2">MUA HÀNG LÃI SUẤT 0%</span>
                                </div>
                            </div>
                            <div class="transport l-3 c-6 mt-12">
                                <div class="img-footer-transport" style="background-image: url('../Img/footer/footer-transport.png')"></div>
                                <div class="transport-title">
                                    <span class="transport-title1">Vận chuyển</span>
                                    <span class="transport-title2">CHUYÊN NGHIỆP - TỐC ĐỘ</span>
                                </div>
                            </div>
                            <div class="protected l-3 c-6 mt-12">
                                <div class="img-footer-protected" style="background-image: url('../Img/footer/protected.png')"></div>
                                <div class="protected-title">
                                    <span class="protected-title1">Bảo hành</span>
                                    <span class="protected-title2">HIỆU QUẢ - CHẤT LƯỢNG</span>
                                </div>
                            </div>
                            <div class="home l-3 c-6 mt-12 mr-18">
                                <div class="img-footer-home" style="background-image: url('../Img/footer/home.png')"></div>
                                <div class="home-title">
                                    <span class="home-title1">Đại lý</span>
                                    <span class="home-title2">TRẢI RỘNG KHẮP VIỆT NAM</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer-menu_2" style="display: block; margin-top: 16px;">
                        <div class="row">
                            <div class="l-3 c-6 footer-connecting mt-12 ml-18">
                                <ul class="list-connecting">
                                    <h5 class="">Kết nối với chúng tôi</h5>
                                    <span class="list-icon">
                                        <li class="icon-facebook" style="background-image: url('../Img/footer/icon_facebook.png')"></li>
                                        <li class="icon-yt" style="background-image: url('../Img/footer/icon_instagram.png')"></li>
                                        <li class="icon-insta" style="background-image: url('../Img/footer/icon_youtube.png')"></li>
                                    </span>
                                </ul>
                            </div>
                            <div class="l-3 c-6 footer-customer-support mt-12">
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
                            <div class="l-3 c-6 footer-companyInformation mt-12">
                                <ul class="list-companyInfo">
                                    <h5 class="">Về chúng tôi</h5>
                                    <li class="">Giới thiệu công ty</li>
                                    <li class="">Điều khoản sử dụng</li>
                                    <li class="">Hệ thống cửa hàng</li>
                                    <li class="">Liên hệ - Góp ý</li>
                                </ul>
                            </div>
                            <div class="l-3 c-6 footer-systemWeb mt-12 mr-18">
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

    <script>
        /*
        var icon_heart = document.querySelectorAll('.icon-heart')

        function active() {
            icon_heart.forEach(function (item) {
                item.addEventListener('click', function () {
                    this.classList.add('red')
                })
            })

        }
        active()
        */

        /*
        var starts = document.querySelectorAll('.icon-star')

        function start() {
            starts.forEach(function (item) {
                item.addEventListener('click', function () {
                    this.classList.add('yellow')
                })
            })
        }
        start()
        */
    </script>
</body>

</html>
