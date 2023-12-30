using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

            //tk mac dinh
            Application["Users"] = new List<Nguoidung>();
            List<Nguoidung> Users = (List<Nguoidung>)Application["Users"];
            Users.Add(new Nguoidung("ngoctan", "ngoctan@gmail.com", "Ngoctan95", "Ngoctan95"));
            Users.Add(new Nguoidung("dinhphi", "dinhphi@gmail.com", "dinhphi", "dinhphi"));
            Users.Add(new Nguoidung("quynhanh", "quynhanh@gmail.com", "quynhanh", "quynhanh"));
            Users.Add(new Nguoidung("vananh", "vananh@gmail.com", "vananh", "vananh"));


            //tat ca sanpham
            Application["ProductList"] = new List<Product>();
            List<Product> ProductList = (List<Product>)Application["ProductList"];

            //sanpham gio hang
            Application["ProductCart"] = new List<Product>();
            List<Product> ProductCart = (List<Product>)Application["ProductCart"];

            //san pham ban chay
            ProductList.Add(new Product() { Id = "1", Images = "Img/content-outstand_new/Kawai-K-300.jpg", Name = "Piano Kawai K-300", PriceOld = "70.000.000", PriceNew = "50.000.000", Detail = "- Bộ máy Cơ Kháng ẩm – Kháng nhiệt, làm từ Sợi Carbon siêu bền, không bị biến dạng. Truyền lực cực chính xác, không bị thất thoát lực tự nhiên như thông thường. Thiết kế phím đàn dài hơn, giúp người chơi kiểm soát lực đánh rất hiệu quả. Soundboard Gỗ Nguyên Khối, hong khô tự nhiên lên đến 5 năm, chất âm dày ấm, uy lực. Búa đàn 2 lớp nỉ cao cấp, sử dụng Gỗ Đặc Mahogany làm lõi búa, bền bỉ theo thời gian. Thép Vuông Bệ Đàn và Pát Bệ Đàn cho cấu trúc mạnh mẽ kinh ngạc", Quantity = 1, SumProduct = 50000000 });
            ProductList.Add(new Product() { Id = "2", Images = "Img/content-outstand_new/kawai-nd-21.jpg", Name = "Piano Kawai ND-21", PriceOld = "80.000.000", PriceNew = "60.000.000", Detail = "- Bộ máy Cơ Kháng ẩm – Kháng nhiệt, làm từ Sợi Carbon siêu bền, không bị biến dạng. Truyền lực cực chính xác, không bị thất thoát lực tự nhiên như thông thường. Thiết kế phím đàn dài hơn, giúp người chơi kiểm soát lực đánh rất hiệu quả. Soundboard Gỗ Nguyên Khối, hong khô tự nhiên lên đến 5 năm, chất âm dày ấm, uy lực. Búa đàn 2 lớp nỉ cao cấp, sử dụng Gỗ Đặc Mahogany làm lõi búa, bền bỉ theo thời gian. Thép Vuông Bệ Đàn và Pát Bệ Đàn cho cấu trúc mạnh mẽ kinh ngạc.", Quantity = 1, SumProduct = 60000000 });
            ProductList.Add(new Product() { Id = "3", Images = "Img/content-outstand_new/roland-lx-705.jpg", Name = "Piano Roland LX-705", PriceOld = "40.000.000", PriceNew = "15.000.000", Detail = "- Bộ máy Cơ Kháng ẩm – Kháng nhiệt, làm từ Sợi Carbon siêu bền, không bị biến dạng. Truyền lực cực chính xác, không bị thất thoát lực tự nhiên như thông thường. Thiết kế phím đàn dài hơn, giúp người chơi kiểm soát lực đánh rất hiệu quả. Soundboard Gỗ Nguyên Khối, hong khô tự nhiên lên đến 5 năm, chất âm dày ấm, uy lực. Búa đàn 2 lớp nỉ cao cấp, sử dụng Gỗ Đặc Mahogany làm lõi búa, bền bỉ theo thời gian. Thép Vuông Bệ Đàn và Pát Bệ Đàn cho cấu trúc mạnh mẽ kinh ngạc.", Quantity = 1, SumProduct = 15000000 });
            ProductList.Add(new Product() { Id = "4", Images = "Img/content-outstand_new/roland-rp-30.gif", Name = "Piano Roland RP-30", PriceOld = "20.000.000", PriceNew = "10.000.000", Detail = "- Bộ máy Cơ Kháng ẩm – Kháng nhiệt, làm từ Sợi Carbon siêu bền, không bị biến dạng. Truyền lực cực chính xác, không bị thất thoát lực tự nhiên như thông thường. Thiết kế phím đàn dài hơn, giúp người chơi kiểm soát lực đánh rất hiệu quả. Soundboard Gỗ Nguyên Khối, hong khô tự nhiên lên đến 5 năm, chất âm dày ấm, uy lực. Búa đàn 2 lớp nỉ cao cấp, sử dụng Gỗ Đặc Mahogany làm lõi búa, bền bỉ theo thời gian. Thép Vuông Bệ Đàn và Pát Bệ Đàn cho cấu trúc mạnh mẽ kinh ngạc.", Quantity = 1, SumProduct = 10000000 });
            //Piano 
            ProductList.Add(new Product() { Id = "5", Images = "Img/Piano/piano-kawai-k15e.jpg", Name = "Piano Kawai K-15E", PriceOld = "50.000.000", PriceNew = "45.000.000", Detail = "- Bộ máy Cơ Kháng ẩm – Kháng nhiệt, làm từ Sợi Carbon siêu bền, không bị biến dạng. Truyền lực cực chính xác, không bị thất thoát lực tự nhiên như thông thường. Thiết kế phím đàn dài hơn, giúp người chơi kiểm soát lực đánh rất hiệu quả. Soundboard Gỗ Nguyên Khối, hong khô tự nhiên lên đến 5 năm, chất âm dày ấm, uy lực. Búa đàn 2 lớp nỉ cao cấp, sử dụng Gỗ Đặc Mahogany làm lõi búa, bền bỉ theo thời gian. Thép Vuông Bệ Đàn và Pát Bệ Đàn cho cấu trúc mạnh mẽ kinh ngạc", Quantity = 1, SumProduct = 45000000 });
            ProductList.Add(new Product() { Id = "6", Images = "Img/Piano/piano-samick-j310b.jpg", Name = "Piano Samick J310B", PriceOld = "40.000.000", PriceNew = "36.000.000", Detail = "- Bộ máy Cơ Kháng ẩm – Kháng nhiệt, làm từ Sợi Carbon siêu bền, không bị biến dạng. Truyền lực cực chính xác, không bị thất thoát lực tự nhiên như thông thường. Thiết kế phím đàn dài hơn, giúp người chơi kiểm soát lực đánh rất hiệu quả. Soundboard Gỗ Nguyên Khối, hong khô tự nhiên lên đến 5 năm, chất âm dày ấm, uy lực. Búa đàn 2 lớp nỉ cao cấp, sử dụng Gỗ Đặc Mahogany làm lõi búa, bền bỉ theo thời gian. Thép Vuông Bệ Đàn và Pát Bệ Đàn cho cấu trúc mạnh mẽ kinh ngạc.", Quantity = 1, SumProduct = 36000000 });
            ProductList.Add(new Product() { Id = "7", Images = "Img/Piano/piano-samick-JS121MD.jpg", Name = "Piano Samick JS121MD", PriceOld = "30.000.000", PriceNew = "25.000.000", Detail = "- Bộ máy Cơ Kháng ẩm – Kháng nhiệt, làm từ Sợi Carbon siêu bền, không bị biến dạng. Truyền lực cực chính xác, không bị thất thoát lực tự nhiên như thông thường. Thiết kế phím đàn dài hơn, giúp người chơi kiểm soát lực đánh rất hiệu quả. Soundboard Gỗ Nguyên Khối, hong khô tự nhiên lên đến 5 năm, chất âm dày ấm, uy lực. Búa đàn 2 lớp nỉ cao cấp, sử dụng Gỗ Đặc Mahogany làm lõi búa, bền bỉ theo thời gian. Thép Vuông Bệ Đàn và Pát Bệ Đàn cho cấu trúc mạnh mẽ kinh ngạc.", Quantity = 1, SumProduct = 25000000 });
            ProductList.Add(new Product() { Id = "8", Images = "Img/Piano/piano-samick-SC310CRD.jpg", Name = "Piano Samick SC310CRD", PriceOld = "20.000.000", PriceNew = "15.000.000", Detail = "- Bộ máy Cơ Kháng ẩm – Kháng nhiệt, làm từ Sợi Carbon siêu bền, không bị biến dạng. Truyền lực cực chính xác, không bị thất thoát lực tự nhiên như thông thường. Thiết kế phím đàn dài hơn, giúp người chơi kiểm soát lực đánh rất hiệu quả. Soundboard Gỗ Nguyên Khối, hong khô tự nhiên lên đến 5 năm, chất âm dày ấm, uy lực. Búa đàn 2 lớp nỉ cao cấp, sử dụng Gỗ Đặc Mahogany làm lõi búa, bền bỉ theo thời gian. Thép Vuông Bệ Đàn và Pát Bệ Đàn cho cấu trúc mạnh mẽ kinh ngạc.", Quantity = 1, SumProduct = 15000000 });
            //Piano Dien
            ProductList.Add(new Product() { Id = "9", Images = "Img/Piano Điện/casio-CDP-S90.jpg", Name = "Piano Casio S90", PriceOld = "55.000.000", PriceNew = "47.000.000", Detail = "- Bộ máy Cơ Kháng ẩm – Kháng nhiệt, làm từ Sợi Carbon siêu bền, không bị biến dạng. Truyền lực cực chính xác, không bị thất thoát lực tự nhiên như thông thường. Thiết kế phím đàn dài hơn, giúp người chơi kiểm soát lực đánh rất hiệu quả. Soundboard Gỗ Nguyên Khối, hong khô tự nhiên lên đến 5 năm, chất âm dày ấm, uy lực. Búa đàn 2 lớp nỉ cao cấp, sử dụng Gỗ Đặc Mahogany làm lõi búa, bền bỉ theo thời gian. Thép Vuông Bệ Đàn và Pát Bệ Đàn cho cấu trúc mạnh mẽ kinh ngạc", Quantity = 1, SumProduct = 47000000 });
            ProductList.Add(new Product() { Id = "10", Images = "Img/Piano Điện/Casio-GP-500.gif", Name = "Piano Casio GP-500", PriceOld = "41000000", PriceNew = "38.000.000", Detail = "- Bộ máy Cơ Kháng ẩm – Kháng nhiệt, làm từ Sợi Carbon siêu bền, không bị biến dạng. Truyền lực cực chính xác, không bị thất thoát lực tự nhiên như thông thường. Thiết kế phím đàn dài hơn, giúp người chơi kiểm soát lực đánh rất hiệu quả. Soundboard Gỗ Nguyên Khối, hong khô tự nhiên lên đến 5 năm, chất âm dày ấm, uy lực. Búa đàn 2 lớp nỉ cao cấp, sử dụng Gỗ Đặc Mahogany làm lõi búa, bền bỉ theo thời gian. Thép Vuông Bệ Đàn và Pát Bệ Đàn cho cấu trúc mạnh mẽ kinh ngạc.", Quantity = 1, SumProduct = 38000000 });
            ProductList.Add(new Product() { Id = "11", Images = "Img/Piano Điện/dan-piano-dien-roland-rp-701.jpg", Name = "Piano Roland 701", PriceOld = "33.000.000", PriceNew = "23.000.000", Detail = "- Bộ máy Cơ Kháng ẩm – Kháng nhiệt, làm từ Sợi Carbon siêu bền, không bị biến dạng. Truyền lực cực chính xác, không bị thất thoát lực tự nhiên như thông thường. Thiết kế phím đàn dài hơn, giúp người chơi kiểm soát lực đánh rất hiệu quả. Soundboard Gỗ Nguyên Khối, hong khô tự nhiên lên đến 5 năm, chất âm dày ấm, uy lực. Búa đàn 2 lớp nỉ cao cấp, sử dụng Gỗ Đặc Mahogany làm lõi búa, bền bỉ theo thời gian. Thép Vuông Bệ Đàn và Pát Bệ Đàn cho cấu trúc mạnh mẽ kinh ngạc.", Quantity = 1, SumProduct = 33000000 });
            ProductList.Add(new Product() { Id = "12", Images = "Img/Piano Điện/roland-rp-30.gif", Name = "Piano Roland 30", PriceOld = "21.000.000", PriceNew = "14.000.000", Detail = "- Bộ máy Cơ Kháng ẩm – Kháng nhiệt, làm từ Sợi Carbon siêu bền, không bị biến dạng. Truyền lực cực chính xác, không bị thất thoát lực tự nhiên như thông thường. Thiết kế phím đàn dài hơn, giúp người chơi kiểm soát lực đánh rất hiệu quả. Soundboard Gỗ Nguyên Khối, hong khô tự nhiên lên đến 5 năm, chất âm dày ấm, uy lực. Búa đàn 2 lớp nỉ cao cấp, sử dụng Gỗ Đặc Mahogany làm lõi búa, bền bỉ theo thời gian. Thép Vuông Bệ Đàn và Pát Bệ Đàn cho cấu trúc mạnh mẽ kinh ngạc.", Quantity = 1, SumProduct = 14000000 });
            //Dan Organ
            ProductList.Add(new Product() { Id = "13", Images = "Img/organ/casio-CDP-S90.jpg", Name = "Organ Casio S90", PriceOld = "9.000.000", PriceNew = "6.000.000", Detail = "- Có  61 phím dạng full size, tuỳ chỉnh độ phản hồi phím, có pitch bend. Màn hình LCD trực quan thuận tiện cho những thao tác.  3 nút có thể gán để điều khiển effect, filter, FX để thay đổi chất âm realtime. 800 âm sắc nguồn âm AIX and 243 nhịp điệu (50 điệu người dùng). Tuỳ chỉnh DSP effect thời gian thực (realtime). Công nghệ phản xạ âm trầm với chế độ âm thanh vòm (Surround). Đọc Audio sampler (file wav) và thu âm 6 track midi. Chốt đeo dây cho phong cách chơi độc đáo. Đầy đủ các cổng kết nốt mono, stereo, micro usb Midi. Sử dụng 6 pin AA cho thời lượng sử dụng lên tới 3 giờ. ", Quantity = 1, SumProduct = 6000000 });
            ProductList.Add(new Product() { Id = "14", Images = "Img/organ/Casio-SA-47.jpg", Name = "Organ Casio SA 47", PriceOld = "8.000.000", PriceNew = "7.000.000", Detail = " - Có 61 phím dạng full size, tuỳ chỉnh độ phản hồi phím, có pitch bend. Màn hình LCD trực quan thuận tiện cho những thao tác.  3 nút có thể gán để điều khiển effect, filter, FX để thay đổi chất âm realtime. 800 âm sắc nguồn âm AIX and 243 nhịp điệu (50 điệu người dùng). Tuỳ chỉnh DSP effect thời gian thực (realtime). Công nghệ phản xạ âm trầm với chế độ âm thanh vòm (Surround). Đọc Audio sampler (file wav) và thu âm 6 track midi. Chốt đeo dây cho phong cách chơi độc đáo. Đầy đủ các cổng kết nốt mono, stereo, micro usb Midi. Sử dụng 6 pin AA cho thời lượng sử dụng lên tới 3 giờ. ", Quantity = 1, SumProduct = 7000000 });
            ProductList.Add(new Product() { Id = "15", Images = "Img/organ/Casio-SA-50.jpg", Name = "Organ Casio SA 50", PriceOld = "7.000.000", PriceNew = "4.000.000", Detail = " - Có 61 phím dạng full size, tuỳ chỉnh độ phản hồi phím, có pitch bend. Màn hình LCD trực quan thuận tiện cho những thao tác.  3 nút có thể gán để điều khiển effect, filter, FX để thay đổi chất âm realtime. 800 âm sắc nguồn âm AIX and 243 nhịp điệu (50 điệu người dùng). Tuỳ chỉnh DSP effect thời gian thực (realtime). Công nghệ phản xạ âm trầm với chế độ âm thanh vòm (Surround). Đọc Audio sampler (file wav) và thu âm 6 track midi. Chốt đeo dây cho phong cách chơi độc đáo. Đầy đủ các cổng kết nốt mono, stereo, micro usb Midi. Sử dụng 6 pin AA cho thời lượng sử dụng lên tới 3 giờ. ", Quantity = 1, SumProduct = 4000000 });
            ProductList.Add(new Product() { Id = "16", Images = "Img/organ/Casio-SA-51.jpg", Name = "Organ Casio SA 51", PriceOld = "4.000.000", PriceNew = "3.000.000", Detail = " - Có 61 phím dạng full size, tuỳ chỉnh độ phản hồi phím, có pitch bend. Màn hình LCD trực quan thuận tiện cho những thao tác.  3 nút có thể gán để điều khiển effect, filter, FX để thay đổi chất âm realtime. 800 âm sắc nguồn âm AIX and 243 nhịp điệu (50 điệu người dùng). Tuỳ chỉnh DSP effect thời gian thực (realtime). Công nghệ phản xạ âm trầm với chế độ âm thanh vòm (Surround). Đọc Audio sampler (file wav) và thu âm 6 track midi. Chốt đeo dây cho phong cách chơi độc đáo. Đầy đủ các cổng kết nốt mono, stereo, micro usb Midi. Sử dụng 6 pin AA cho thời lượng sử dụng lên tới 3 giờ. ", Quantity = 1, SumProduct = 3000000 });
            //Guitar
            ProductList.Add(new Product() { Id = "17", Images = "Img/guitar/Fender-Electric-Aerodyne-Bass-Dolphin.jpg", Name = "Guitar Bass-Dolphin", PriceOld = "10.000.000", PriceNew = "9.000.000", Detail = "-  Guitar với cấu tạo thông dụng, cần đàn được gia công kỹ lưỡng, giữ độ thẳng cho cần, điều này sẽ giúp giảm nhẹ lực bấm đàn cho người chơi, đặc biệt đối với người mới sử dụng, tập đánh đàn guitar, lực ngón tay yếu nên chọn đàn guitar. Guitar là dòng sản phẩm mới của suzuki, dòng đàn chú trọng về âm thanh, thùng đàn được thiết kế dày tạo âm thanh trong và vang, điều này giúp người chơi cảm nhận âm thanh một cách tốt nhất", Quantity = 1, SumProduct = 9000000 });
            ProductList.Add(new Product() { Id = "18", Images = "Img/guitar/squier-affinity-series-stratocaster.jpg", Name = "Guitar stratocaster", PriceOld = "12.000.000", PriceNew = "8.000.000", Detail = " - Guitar với cấu tạo thông dụng, cần đàn được gia công kỹ lưỡng, giữ độ thẳng cho cần, điều này sẽ giúp giảm nhẹ lực bấm đàn cho người chơi, đặc biệt đối với người mới sử dụng, tập đánh đàn guitar, lực ngón tay yếu nên chọn đàn guitar. Guitar là dòng sản phẩm mới của suzuki, dòng đàn chú trọng về âm thanh, thùng đàn được thiết kế dày tạo âm thanh trong và vang, điều này giúp người chơi cảm nhận âm thanh một cách tốt nhất", Quantity = 1, SumProduct = 8000000 });
            ProductList.Add(new Product() { Id = "19", Images = "Img/guitar/squier-affinity-series-telecaster-deluxe.jpg", Name = "Guitar deluxe", PriceOld = "8.000.000", PriceNew = "7.000.000", Detail = " - Guitar với cấu tạo thông dụng, cần đàn được gia công kỹ lưỡng, giữ độ thẳng cho cần, điều này sẽ giúp giảm nhẹ lực bấm đàn cho người chơi, đặc biệt đối với người mới sử dụng, tập đánh đàn guitar, lực ngón tay yếu nên chọn đàn guitar. Guitar là dòng sản phẩm mới của suzuki, dòng đàn chú trọng về âm thanh, thùng đàn được thiết kế dày tạo âm thanh trong và vang, điều này giúp người chơi cảm nhận âm thanh một cách tốt nhất", Quantity = 1, SumProduct = 7000000 });
            ProductList.Add(new Product() { Id = "20", Images = "Img/guitar/squier-paranormal-offset-telecaster.jpg", Name = "Guitar telecaster", PriceOld = "15.000.000", PriceNew = "10.000.000", Detail = " - Guitar với cấu tạo thông dụng, cần đàn được gia công kỹ lưỡng, giữ độ thẳng cho cần, điều này sẽ giúp giảm nhẹ lực bấm đàn cho người chơi, đặc biệt đối với người mới sử dụng, tập đánh đàn guitar, lực ngón tay yếu nên chọn đàn guitar. Guitar là dòng sản phẩm mới của suzuki, dòng đàn chú trọng về âm thanh, thùng đàn được thiết kế dày tạo âm thanh trong và vang, điều này giúp người chơi cảm nhận âm thanh một cách tốt nhất", Quantity = 1, SumProduct = 10000000 });


        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["checkdn"] = 0;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}