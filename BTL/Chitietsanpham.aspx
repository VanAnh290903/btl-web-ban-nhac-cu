<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chitietsanpham.aspx.cs" Inherits="BTL.Chitietsanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết sản phẩm</title>
    <link href="Style/Chitietsanpham.css" rel="stylesheet" />
    <link href="Style/Trangchu.css" rel="stylesheet" />
    <link href="Style/responsive.css" rel="stylesheet" />
    <link href="Style/Grid.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
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
            <!-- Show product -->
            <div class="show_product">
                <div class="grid wide">
                    <asp:ListView ID="ProductInfo" runat="server">
                        <ItemTemplate>
                            <span class="name_product">
                                <%# Eval("Name") %>
                            </span>
                            <div class="row">
                                <div class="col l-5">
                                    <div class="box-imageProduct">
                                        <span class="product-reduce">Giảm 3%</span>
                                        <img src="<%# Eval(" Images") %>" class="imgProduct" alt="">
                                    </div>
                                </div>
                                <div class="col l-7">
                                    <div class="box-inforProduct">
                                        <div class="box-price">
                                            <span class="box-priceNew">
                                                <%# Eval("PriceNew") %>đ
                                            </span>
                                            <span class="box-priceOld">
                                                <%# Eval("PriceOld") %>đ
                                            </span>
                                        </div>
                                        <span class="box-advantages_title">Ưu điểm nổi bật</span>
                                        <div class="box-advantages">
                                            <div class="box-advantages-item1">
                                                <span class="advantages-item1-title">Tặng 1 khoá Piano LCM 1 học
                                                        viên trị giá:
                                                        4.500.000 đồng
                                                </span>
                                                <span class="advantages-item1-title">Thời gian áp dụng: 2 tháng kể
                                                        từ ngày mua nhạc cụ
                                                </span>
                                            </div>
                                            <div class="box-advantages-item2">
                                                <span class="advantages-item2-title">Xu hướng mới</span>
                                                <span class="advantages-item2-info">- Bộ máy Cơ Kháng ẩm – Kháng nhiệt, làm từ
                                        ABS-Styran, không bị biến dạng</span>
                                                <span class="advantages-item2-info">- Truyền lực cực chính xác, không bị thất thoát
                                        lực tự nhiên như thông thường</span>
                                                <span class="advantages-item2-info">- Soundboard Gỗ Nguyên Khối, chất âm dày ấm, uy
                                        lực</span>
                                                <span class="advantages-item2-info">- Thép Vuông Bệ Đàn và Pát Bệ Đàn cho cấu trúc
                                        mạnh mẽ kinh ngạc </span>
                                                <span class="advantages-item2-info">- Thiết kế Monochrome Tương phản – Đối lập tạo
                                        ấn tượng khó phai </span>
                                            </div>
                                            <div class="box-advantages-item3">
                                                <span class="advantages-item3-title">Chi tiết</span>
                                                <%# Eval("Detail") %>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                    <p class="Themgio" name="Themgio" runat="server" id="Themgio" style="color: red; font-size: 13px; height: 22px; display: flex; justify-content: center;"></p>
                    <div class="box-buy" style="margin: 8px 0; display: flex; justify-content: center;">
                        <button class="buy-now" type="submit" id="Add" runat="server" onserverclick="AddToCartButton">Thêm vào giỏ hàng</button>
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

    <script>

</script>
</body>

</html>
