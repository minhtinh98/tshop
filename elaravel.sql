-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 02, 2018 lúc 02:58 PM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `elaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `password`, `mobile_number`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Minh Tinh', 'tinhnmpd01943@fpt.edu.vn', '25f9e794323b453885f5181f1b624d0b', '0385406050', NULL, NULL),
(2, 'ngoc diep', 'diepltnpd01972@fpt.edu.vn', '827ccb0eea8a706c4c34a16891f84e7b', '123456789', NULL, NULL),
(3, 'Nguyen minh tinh', 'tinhnmpd01943@fpt.edu.vn', '25f9e794323b453885f5181f1b624d0b', '385406050', NULL, NULL),
(4, 'diep le thi ngoc', 'diepltnpd01972@fpt.edu.vn', '25f9e794323b453885f5181f1b624d0b', '123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_10_11_124059_create_tab_admin_table', 1),
(2, '2018_10_11_125759_create_tbl_category_table', 2),
(3, '2018_10_11_130003_create_tbl_manufacture_table', 3),
(4, '2018_10_11_130136_create_tbl_products_table', 4),
(5, '2018_10_11_130244_create_tbl_slider_table', 5),
(6, '2018_10_11_160047_create_customer_table', 6),
(7, '2018_10_11_160703_create_tbl_slider_table', 7),
(8, '2018_10_11_165104_create_tbl_shipping_table', 8),
(9, '2018_10_12_074110_create_tbl_payment_table', 9),
(10, '2018_10_12_074326_create_tbl_order_table', 9),
(11, '2018_10_12_074351_create_tbl_order_details_table', 9),
(12, '2018_10_23_130054_create_tbl_comment_table', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'minhtinh', '25f9e794323b453885f5181f1b624d0b', 'Nguyễn Minh Tình', '0385406050', '2018-10-11 13:24:03', '2018-10-11 13:24:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'MÁY TÍNH', 'MÁY TÍNH', 1, '2018-10-11 13:27:45', '2018-10-11 13:27:45'),
(2, 'ĐIỆN THOẠI', 'ĐIỆN THOẠI', 1, '2018-11-29 12:35:56', '2018-11-29 12:35:56'),
(3, 'MÁY TÍNH BẢNG', 'MÁY TÍNH BẢNG', 1, '2018-10-11 13:27:45', '2018-10-11 13:27:45'),
(4, 'PHỤ KIỆN', 'PHỤ KIỆN', 1, '2018-10-11 13:27:45', '2018-10-11 13:27:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `comment_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `comment_text`) VALUES
(1, 'sfsedfsefs'),
(3, 'fbdfdfg'),
(4, 'àasfasfasf'),
(5, 'dvsdvsdvs'),
(6, 'gfbdfbdfbdfb');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `manufacture_status`, `created_at`, `updated_at`) VALUES
(1, 'APPLE', 'APPLE', 1, '2018-10-11 13:29:01', '0000-00-00 00:00:00'),
(2, 'ASUS', 'ASUS', 1, '2018-10-11 13:31:11', '0000-00-00 00:00:00'),
(3, 'SONY', 'SONY', 1, '2018-10-11 13:31:11', '0000-00-00 00:00:00'),
(4, 'SAMSUNG', 'SAMSUNG', 1, '2018-10-11 13:32:01', '0000-00-00 00:00:00'),
(5, 'MSI', 'MSI', 1, '2018-10-11 13:32:01', '0000-00-00 00:00:00'),
(6, 'DELL', 'DELL', 1, '2018-10-11 13:32:30', '0000-00-00 00:00:00'),
(7, 'TAI NGHE', 'TAI NGHE', 1, '2018-10-11 13:32:30', '0000-00-00 00:00:00'),
(8, 'LOA', 'LOA', 1, '2018-10-11 13:33:15', '0000-00-00 00:00:00'),
(9, 'CHUỘT', 'CHUỘT', 1, '2018-10-11 13:33:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(6, 3, 9, 6, '11,999,000.00', 'pending', '2018-10-14 13:43:40', NULL),
(7, 4, 10, 7, '31,799,000.00', 'pending', '2018-10-14 13:44:34', NULL),
(8, 1, 11, 8, '31,690,000.00', 'pending', '2018-11-28 14:47:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(9, 6, 8, 'iPhone 6s Plus 32GB', '11999000', '1', '2018-10-14 13:43:40', NULL),
(10, 7, 2, 'iPhone X 256GB', '31799000', '1', '2018-10-14 13:44:34', NULL),
(11, 8, 27, 'Dell N7588C', '31690000', '1', '2018-11-28 14:47:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(6, 'handcash', 'pending', '2018-10-14 13:43:40', NULL),
(7, 'handcash', 'pending', '2018-10-14 13:44:34', NULL),
(8, 'handcash', 'pending', '2018-11-28 14:47:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `manufacture_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'iPhone X 64GB', 2, 1, 'dfcvsdvsd', 'sdvsdvsd', 29900000, 'image/1kkTWp5Mqb43hhU9T2ZB.png', 'black', 1, NULL, NULL),
(2, 'iPhone X 256GB', 2, 1, 'Với thiết kế loại bỏ nút Home truyền thống vốn được xem là biểu tượng của Apple, công nghệ bảo mật mới – Face ID lần đầu tiên xuất hiện trên một chiếc iPhone với hiệu quả cao gấp 20 lần so với Touch ID, có khả năng nhận diện khuôn mặt cực kì chuẩn xác dù bạn cao đi râu, để tóc dài, thân hình mập ra,… Face ID vẫn dễ dàng nhận ra bạn.', 'iPhone X có 3 tính năng độc quyền cho camera trước là Portrait Mode Selfie (xóa phông), Portrait Lighting (ánh sáng chân dung), Animoji (biểu tượng cảm xúc) có thể bắt chước điệu bộ khuôn mặt và giọng nói người dùng. Khác biệt lớn nhất của iPhone X là chức năng chống rung (OIS) cho cả ống kính góc rộng và tele ở camera sau, đồng nghĩa iPhone X có thể chụp ảnh sắc nét hơn trong mọi trường hợp.', 31799000, 'image/hjzby1aNm39yaHdth0nM.png', 'black', 1, NULL, NULL),
(3, 'iPhone 8 Plus 64GB PRODUCT RED', 2, 1, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Apple vừa giới thiệu phiên bản màu đỏ PRODUCT RED cho bộ đôi iPhone 8 và 8 Plus. Điểm đặc biệt, sản phẩm nằm trong mối hợp tác giữa Táo khuyết với (RED), tổ chức gây quỹ phòng chống HIV/AIDS tại châu Phi và một phần doanh thu bán iPhone 8 và iPhone 8 Plus RED - Đỏ sẽ được quyên góp cho quỹ từ thiện của (RED).</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">iPhone 8 và iPhone 8 Plus RED - Đỏđược thay đổi về chất liệu so với iPhone 7 Plus: khung nhôm cứng cáp kết hợp cùng mặt kính cường lực bóng bẩy ở mặt sau. Điểm nổi bật ở phiên bản này là riêng mặt lưng lại có màu đỏ và mặt trước lại có màu đen nhìn hài hòa và đẹp hơn so với mặt trước màu trắng của iPhone 7 / 7 Plus đỏ.</span></font>', 20999000, 'image/reODByBSaTpr5jt81ERD.png', 'red', 1, NULL, NULL),
(4, 'iPhone 8 Plus 64GB', 2, 1, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">iPhone 8 Plus 64GB đã thay đổi về mặt thiết kế so với những đời iPhone cũ: mặt sau đã chuyển sang chất liệu kính bo cong 2.5D đẹp mắt hơn, loại bỏ viền ăng-ten, bộ khung kim loại cứng cáp hơn cùng với 7 lớp xử lý màu tăng mạnh khả năng chống trầy xước</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Hệ thống camera kép tại mặt sau của iPhone 8 Plus&amp;nbsp;64Gb vẫn được thiết kế theo chiều ngang tuy nhiên lại được cải tiến mạnh mẽ: một ống kính rộng độ phân giải 12MP khẩu độ f/1.8 và một ống kính tele đồng độ phân giải khẩu độ f.2/8 được nâng cấp cho khả năng thu nhận ánh sáng nhiều hơn giúp hình ảnh sắc nét và chi tiết hơn trong mọi điều kiện môi trường. Ngoài ra còn tích hợp thêm công nghệ chống rung quang học giúp lấy nét nhanh hơn và chính xác hơn.</span></font>', 20999000, 'image/t8ZNHigjxrt7TbXhUEjz.png', 'white', 1, NULL, NULL),
(5, 'iPhone 8 64GB', 2, 1, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">iPhone 8 64GB có camera 12MP với cảm biến lớn hơn kèm chống rung quang học giúp khả năng xử lý hình ảnh tốt hơn dưới điều kiện ánh sáng yếu, lấy nét nhanh hơn và chính xác hơn. Ngoài ra iPhone 8 còn hỗ trợ quay video chất lượng cao 4K/60fps và 1080p/240fps</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Sở hữu dòng chip mới nhất Apple A11 Bionic 6 nhân, trong đó 2 nhân có khả năng xử lý nhanh hơn 25%, 4 nhân còn lại có tốc độ nhanh hơn 70% so với dòng chip A10. Ngoài ra còn có một GPU đồ họa mới giúp tốc độ xử lý hình ảnh tăng 30% so với iphone 7</span></font>', 17999000, 'image/iN0SPNnucKsneQtS2UrG.png', 'white', 1, NULL, NULL),
(6, 'iPhone 7 Plus 32GB', 2, 1, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">iPhone 7 Plusdường như là sản phẩm được Apple chăm chút để vượt xa iPhone 7, trở thành sản phẩm rất đáng để nâng cấp so với iPhone 6s Plus khi được nâng cấp thêm camera kép cùng chức năng chụp chân dung xoá phông cực \"hot\". Không chỉ vậy, nâng cấp đáng giá khác như tốc độ xử lý nhanh hơn, chống nước, bụi, loa ngoài sống động... Tất cả đã tạo nên một sản phẩm hàng đầu tuyệt vời.</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Về thiết kế, vẫn là nhôm nguyên khối liền lạc nhưng iPhone 7 Plus đã có những nét thay đổi tinh tế khi đưa hai dải ăng-ten lên sát hai cạnh trên dưới, đồng thời bỏ đi jack cắm tai nghe 3.5 mm. Điểm nhấn ấn tượng nhất về ngoại hình của iPhone 7 Plus là việc Apple bỏ đi màu xám không gian từng rất được ưa chuộng trên các model cũ để bổ sung thêm tùy chọn màu đen mờ (màu đen bóng Jet Black chỉ có trên iPhone 7 Plus bản 128/256 GB).</span></font>', 17999000, 'image/XHDiwDcDzXr4RnvOElX3.png', 'black', 1, NULL, NULL),
(7, 'iPhone 7 32GB', 2, 1, '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Dải ăng-ten bị chỉ trích khá nhiều trên dòng iPhone trước đó đã được loại bỏ, thay vào đó nó đã được đưa lên sát hai cạnh trên dưới, đồng thời bỏ đi jack cắm tai nghe 3.5 mm. Điểm nhấn ấn tượng nhất về ngoại hình của iPhone 7 là việc Apple bỏ đi màu xám không gian từng rất được ưa chuộng trên các model cũ để bổ sung thêm tùy chọn màu đen mới là đen mờ, chúng ta còn có màu đen bóng (Jet Black) nhưng với phiên bản từ 128 GB.</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">iPhone 7 mặc dù vẫn giữ nguyên kích thước cũng như độ phân giả màn hình &amp;nbsp;tương tự trên iPhone 6s.Chúng ta sẽ có màn hình rộng 4.7 inch độ phân giải 750x1334 pixelsTuy nhiên, tấm nền màn hình mới đã được bổ sung thêm 25% độ sáng, đạt mức cao nhất 625 nits cùng khả năng tái tạo màu sắc, gam màu rộng hơn và hỗ trợ thêm công nghệ 3D Touch.</span></font>', 13999000, 'image/5AZn81FBVBHIDeTU0F4m.png', 'white', 1, NULL, NULL),
(11, 'Dell Inspiron 5570', 1, 6, '<strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify;\">Dell Inspiron 5570</strong><span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;với thiết kế sang trọng hướng đến người dùng cần sự gọn nhẹ, tính di động linh hoạt cả trong công việc lẫn học tập, bên trong được trang bị bộ vi xử lí Intel Core i5 thế hệ thứ 8&nbsp;cho người dùng trải nghiệm tuyệt vời cũng như đáp ứng các nhu cầu giải trí, chơi game có đồ họa cao một cách mượt mà trên nền Windows 10.</span>', '<strong style=\"font-weight: normal; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify;\">Dell Inspiron 5570</strong><span style=\"font-weight: normal; color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;được xây dựng trên nền tảng tiên tiến nhất ở thời điểm hiện tại với các tác vụ tiện lợi nhất cho người dùng từ việc tích hợp các công nghệ mới nhất trong một tổng thể gọn nhẹ nhất. Máy có độ mỏng và thiết kế vô cùng bắt mắt với vỏ ABS giả nhôm và màu sắc nổi bật nhưng không kém phần sang trọng.</span><div style=\"\"><span style=\"font-weight: normal; color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">Ngoài các cổng kết nối thông dụng nhất hiện nay trên hầu hết mọi thiết bị laptop phổ thông,&nbsp;</span><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify;\">Dell Inspiron 5570</span><span style=\"font-weight: normal; color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;vừa tích hợp thêm các chuẩn kết nối mới như cổng usb 3.1 Type-C vừa giữ lại những chuẩn cũ cần thiết với nhiều người dùng đó là ổ DVD-rom, phải nói sự kết hợp này làm tăng sự lựa chọn cho nhiều đối tượng người dùng với nhiều nhu cầu khác nhau.</span></div>', 17790000, 'image/NU2KPxneVi0JYW0PFNqG.png', 'black', 1, NULL, NULL),
(12, 'Dell N5570A', 1, 6, '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-weight: normal; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;\"><font size=\"4\">Laptop Dell N5570A là một sản phẩm mới nằm trong phân khúc tầm trung với thiết kế cận cao cấp của Dell. N5570A được trang bị chip thế hệ 8 cho tốc độ xử lý nhanh hơn mà lại tiết kiệm điện hơn rất nhiều so với các thế hệ trước. Đồng thời, Dell N5570A còn sở hữu màn hình 15.6 inch FHD sắc nét, RAM 8 GB cùng nhiều tính năng khác chắc chắn sẽ làm hài lòng những người dùng khó tính nhất.</font></span></span></h2>', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;\">Dell N5570A được thiết kế hướng đến những người dùng như sinh viên, học sinh hay nhân viên văn phòng nên N5570A khá đơn giản, toàn bộ mặt trước được chế tạo bằng nhựa với tông màu bạc, các góc cạnh của máy được bo cong mềm mại cùng với logo Dell được mạ chrome bóng tạo điểm nhấn.</span></span></p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">&nbsp;<span style=\"font-family: arial, helvetica, sans-serif;\">Bên cạnh đó, với các thông số kích thước lần lượt là 380 x 258 x 22.7 mm cùng trọng lượng chỉ 2.2 Kg cho phép người dùng dễ dàng di chuyển máy tại nơi làm việc hay đi công tác.</span></p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"font-family: arial, helvetica, sans-serif;\">Dell N5570A được trang bị màn hình kích thước 15.6 inch, với độ phân giải FHD (1920 x 1080 pixels) cho hình ảnh hiển thị rõ ràng, sắc nét. Kết hợp với công nghệ màn hình Anti Glare LED Backlit Display đem lại khả năng chống chói tuyệt vời, cho phép người dùng sử dụng máy ngoài trời một cách dễ dàng.</span></p>', 24990000, 'image/dVXvtOG64alshFTjC6B2.png', 'white', 1, NULL, NULL),
(13, 'MSI GF63 8RC-203VN/I5-8300H', 1, 5, '<span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">MSI GF63 8RC có thiết kế hiện đại và phong cách đặc trưng của dòng laptop chơi game MSI. Toàn thân máy được làm từ lớp vỏ nhôm vừa bền vững, cứng cáp lại vừa rất nhẹ. MSI đã cải tiến để MSI GF63 mỏng nhẹ nhất có thể, nhưng vẫn đảm bảo được quá trình tản nhiệt hiệu quả. Máy chỉ dày 2,17cm và cân nặng vỏn vẹn 1,86kg. Toàn thân MSI GF63 có màu đen chủ đạo với một số điểm nhấn màu đỏ như logo MSI. Phần quạt thông gió hình chữ X ẩn dưới thân máy, tạo nên sự thanh thoát và liền khối trong thiết kế tổng thể.</span>', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">Vi xử lý Intel thế hệ thứ 8</strong></h2><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">MSI GF63 8RC-203VN được trang bị bộ vi xử lý Intel Core i5 8300H thế hệ thứ 8 Coffee Lake mới nhất. Intel 8300H được sản xuất trên tiến trình 14nm, bộ nhớ đệm 8MB, 4 nhân 8 luồng và xung nhịp 2,3 – 4,0 GHz. Hiệu năng mạnh mẽ đủ sức để MSI GF63 chơi tốt mọi game hiện nay, đặc biệt là các tựa game eSports phổ biến ở mức đồ họa cao.</p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">&nbsp;</p><h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">VGA đồ họa Nvidia GeForce GTX 10 Series</strong></h2><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">VGA đồ họa rời Nvidia GeForce GTX 1050 trên MSI GF63 8RC là một trong những VGA mạnh nhất hiện nay và được tối ưu cho chơi game. Hiệu suất của GTX 1050 mạnh hơn tới 40% so với series 900 trước đây, đáp ứng mọi nhu cầu của bạn, từ chơi game cho đến những chương trình đồ họa nặng.</p><h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">Trải nghiệm màn hình viền mỏng cho game thủ</strong></h2><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Màn hình MSI GF63 có kích thước 15,6 inch, độ phân giải Full HD sắc nét, viền siêu mỏng theo phong cách mới. Chính vì thế mà không chỉ mang đến những trải nghiệm xem tuyệt vời, màn hình này còn góp phần giúp cho kích thước máy gọn gàng hơn, chỉ như những máy 14 inch. Màn hình MSI GF63 sử dụng công nghệ IPS, cho góc nhìn rộng, độ tương phản cao để bạn có thể tận hưởng tựa game yêu thích ở mọi góc độ.</p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">&nbsp;</p>', 22490000, 'image/3uuWaHDxzdoJuoEDASz8.png', 'black', 1, NULL, NULL),
(14, 'MSI GF62 7RE-1818XVN', 1, 5, '<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">Nếu bạn đang tìm kiếm sản phẩm laptop có hiệu suất hoạt động tốt, cấu hình mạnh mẽ, đáp ứng đầy đủ nhu cầu làm việc, xem phim và giải trí hàng ngày, đồng thời, có độ hoàn thiện cao và bền bỉ với thời gian thì chiếc&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay/msi-gf62-7re-1818xvn\" target=\"_blank\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: rgb(24, 72, 122);\">MSI GF62 7RE 1818XVN</a>&nbsp;sẽ là lựa chọn hàng đầu. Hơn thế nữa, sản phẩm này còn có thiết kế bên ngoài cực kỳ đẳng cấp, kiểu dáng hiện đại, hợp thời trang, mang lại sự sang trọng và thanh lịch cho người dùng.</span>', '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;\">Thiết kế sang trọng</span></span></strong></h2><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif;\">&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Chiếc Laptop MSI GF62 7RE-1818XVN được thiết kế theo phong cách sang trọng và hiện đại, đặc biệt, phủ tông màu bạc bên ngoài, mang đến sự tinh tế và thanh lịch cho chiếc máy.</p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Dòng laptop này có trọng lượng 2.2Kg, cùng kích thước chiều dài: 383 mm, chiều rộng: 260 mm và độ dày 29 mm, các góc cạnh được bo cong vừa đủ, bản lề và hầu hết các chi tiết khác cũng được thiết kế chắc chắn, giúp người dùng yên tâm và mang theo thiết bị này khi làm việc ở môi trường bên ngoài.</p><h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-size: 20px; font-weight: normal; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;\">Màn hình 15.6 inches, trải nghiệm không gian sắc nét</span></span></strong></h2><div><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;\"><span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; font-weight: 400; text-align: justify; background-color: rgb(255, 255, 255);\">MSI GF62 7RE&nbsp;trang bị màn hình hiển thị 15.6 inch Full HD&nbsp;với phạm vi màu cao hơn 72% NTSC làm cho hình ảnh rõ nét đến một cấp độ hoàn toàn mới với độ phân giải pixel cao hơn.&nbsp;Hình ảnh sắc nét&nbsp;sống động&nbsp;hơn 40% và độ tương phản rõ ràng hơn 20%&nbsp;về mức độ sáng so với hình ảnh&nbsp;trên bảng TN thông thường.&nbsp;Với tấm nền IPS cho phép&nbsp;hình ảnh sống động hơn kể cả từ trái và phải của góc nhìn. Khi bạn đang chơi trò chơi, bạn sẽ có&nbsp;trải nghiệm xem tuyệt vời hơn. Chính vì thế, khi sở hữu dòng sản phẩm này, bạn không cần phải lo ngại vì về vấn đề chất lượng hình ảnh mà có thể thoải mái thưởng thức những bộ phim HD gay cấn hay các trò chơi 3D tốc độ cao.</span></span></span></strong></div>', 24990000, 'image/A1tNKaB13HGZT6XMp7QN.png', 'white', 1, NULL, NULL),
(15, 'Macbook 12 256GB (2017)', 1, 1, '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-weight: normal; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;\"><font size=\"4\">MacBook 12 inch 256 GB 2017 với đường nét thiết kế không có thay đổi so với phiên bản 2016 nhưng Apple đã nâng cấp thêm bộ nhớ và giới thiệu bộ vi xử lý Intel thế hệ thứ 7 (Kaby Lake).</font></span></span></h2>', '<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">Không khác gì phiên bản 2016, MacBook 12 2017 chứa đựng những tinh hoa trong chế tác cũng như thiết kế của Apple, các đường viền, chi tiết được mài cắt sắc sảo, chắc chắn và có độ hoàn thiện cao, hấp dẫn bạn ngay từ lần chạm đầu tiên. Bộ màu sắc sang trọng như bạc, vàng, vàng hồng phù hợp nhiều lứa tuổi. MacBook 12 2017 inch được xem là chiếc Mac mỏng nhất thời đại với độ dày chỉ 13.1 mm và nhẹ nhất với trọng lượng 0.907 kg, cho phép bạn dễ dàng mang máy luôn bên mình để làm việc, học tập hay giải trí.</span>', 33990000, 'image/BVq5JidQSG1P9SDdnvAh.png', 'white', 1, NULL, NULL),
(16, 'Macbook Pro 13 inch 256GB (2017)', 1, 1, '<h2 style=\"box-sizing: border-box; margin: 10px 0px; padding: 0px; border: 0px; font-weight: normal; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;\"><font size=\"3\">Thế hệ&nbsp;MacBook Pro&nbsp;13 inch 2017 ngoài việc cập nhật bộ vi xử lý Intel thế hệ thứ 7 (Kaby Lake) thì còn được nâng cấp gấp đôi dung lượng bộ nhớ. Ngoài ra thiết kế cũng như một số tính năng nổi bật vẫn không có thay đổi so với dòng MacBook 2016.</font></span></span></h2>', '<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">Đã được đầu tư mạnh mẽ về hiển thị nên MacBook 13 inch 2017 không có thay đổi về màn hình so với phiên bản 2016 với độ phân giải màn hình 2560 x 1600px. Độ sáng, độ tương phản tốt hơn và hiển thị màu sắc tốt hơn, đặc biệt với những người chuyên về chỉnh sửa hình ảnh, đồ họa, nó sẽ giúp hiển thị màu sắc đúng hơn, rõ nét hơn trong mọi điều kiện sử dụng.</span><div><span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">MacBook Pro 13 inch 2017 tích hợp bộ xử lý Intel Kaby Lake thế hệ thứ 7, core i5, tốc độ 2.3 GHz cùng dung lượng RAM 8 GB, 256 GB SSD lưu trữ. Apple cũng tuyên bố rằng hãng đã tích hợp&nbsp;ổ cứng SSD&nbsp;(solid-state storage) có tốc độ nhanh gấp đôi, đồng nghĩa với việc dữ liệu được xử lý nhanh chóng và mượt mà hơn, cụ thể là nhanh hơn 21% trong các tác vụ lõi đơn và 30% trong các tác vụ đa lõi.</span></div>', 38990000, 'image/K5gYR4AQscVBHlJBsBI0.png', 'white', 1, NULL, NULL),
(18, 'Asus TUF FX504GE-E4059T', 1, 2, '<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Laptop Gaming&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay/Asus-TUF-FX504GE-E4059T\" target=\"_blank\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: rgb(24, 72, 122);\">Asus TUF FX504GE</a>-E4059T được tạo ra để chơi game mà và làm việc đầy hiệu quả, với vẻ ngoài không quá là hầm hố mà thay vào đó là một thiết kế thanh lịch, có thể nói Asus TUF FX504GE-E4059T là sự kết hợp hoàn hảo giữa vẽ đẹp và hiệu năng.</span>', '<span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">Laptop Gaming Asus TUF FX504GE-E4059T với thiết kế ấn tượng và hiệu năng mạnh mẽ, có thể chơi được hầu hết các tựa game mới nhất hiện nay, đồng thời có thể đáp ứng tốt các hoạt động làm việc giống như một chiếc máy tính xách tay. Ngoài ra Asus TUF FX504GE-E4059T còn có độ bền vượt ra khỏi chuẩn mực thông thường dù là trong công việc hay khi chơi game.</span><div><span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">Máy tính xách tay Asus TUF FX504GE&nbsp;được trang bị bộ vi xử lý Intel Core i7-8750H thế hệ mới nhất và card đồ họa NVIDIA GeForce GTX 1050/1050Ti hỗ trợ đầy đủ Microsoft &nbsp;DirectX &nbsp;12, tất cả được gói gọn trong một khung máy mỏng chỉ 25 mm và nhẹ chỉ 2.3 kg. Cho dù bạn cần một chiếc máy tính xách tay cho bất kì công việc gì, đi làm, đi học, xem phim, nghe nhạc hay chơi game Asus TUF FX504GE-E4059T đều sẽ đáp ứng tất cả. Ngoài ra Asus TUF FX504GE-E4059T được trang bị màn hình 15.6 inch Full HD góc rộng cùng với tấm nền được phủ một lớp chống lóa để giữ cho hình luôn rõ ràng ở nhiều góc độ khác nhau.</span></div>', 25990000, 'image/6WMip6v350XczSZsW7Ms.png', 'black', 1, NULL, NULL),
(19, 'Samsung Galaxy Tab S4 10.5 inch S-Pen', 3, 4, '<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\"><a href=\"https://fptshop.com.vn/may-tinh-bang/samsung-galaxy-tab-S4\" target=\"_blank\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: rgb(24, 72, 122);\">Samsung Galaxy Tab S4</a>&nbsp;là chiếc máy tính bảng cao cấp đóng vai trò người bạn đồng hành, hỗ trợ đắc lực cho bạn trong công việc và giúp bạn thư giãn khi giải trí</span><strong style=\"font-weight: normal; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">.</strong>', '<span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">Chúng ta đang có xu hướng làm nhiều việc cùng một lúc hơn. Galaxy Tab S4 thích nghi tốt với hoàn cảnh đó khi máy có thể mở rất nhiều ứng dụng, đa nhiệm mượt mà trên màn hình lớn 10,5 inch Super AMOLED siêu nét 2560 x 1600 pixels.</span><div><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Không chỉ là một chiếc máy tính bảng, máy tính bảng Galaxy Tab S4 hoàn toàn có thể trở thành một máy tính để bàn chuyên nghiệp khi cần, thông qua giải pháp Samsung DeX. Đơn giản bạn chỉ cần cắm với một adapter HDMI và bàn phím, chuột, thậm chí là màn hình để có không gian làm việc lớn và hiệu quả hơn. Ngoài việc phóng ra màn hình lớn, Tab S4 có tùy chọn trở thành bàn di chuột hay bàn vẽ để bạn thỏa sức sáng tạo.</p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">&nbsp;</p></div>', 17790000, 'image/ylzR6qJ7zPSqWfq5m9bY.png', 'black', 1, NULL, NULL),
(20, 'Samsung Galaxy Tab A 10.5', 3, 4, '<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\"><a href=\"https://fptshop.com.vn/may-tinh-bang/samsung-galaxy-tab-A105\" target=\"_blank\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; vertical-align: baseline; background: transparent; outline: none; text-decoration-line: none; color: rgb(24, 72, 122);\">Samsung Galaxy Tab A 2018</a>&nbsp;nâng tầm giải trí của bạn ở bất cứ nơi đâu với màn hình lớn đến 10,5 inch, hệ thống 4 loa nổi 3D mạnh mẽ và thời lượng pin cực dài.</span>', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">Samsung Galaxy Tab A (2018) sẽ đưa trải nghiệm xem của bạn lên một tầm cao mới với màn hình cực lớn 10,5 inch, độ phân giải Full HD+ 1920 x 1200 pixels sắc nét và tỉ lệ 16:10 lý tưởng cho xem phim cũng như chơi game. Hình ảnh giàu chi tiết, màu sắc sống động như mang cả rạp chiếu phim về nhà bạn.</p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">&nbsp;Âm thanh trên một thiết bị di động chưa bao giờ ấn tượng đến thế khi Galaxy Tab A (2018) có tới 4 kênh loa ngoài, tạo hiệu ứng âm thanh vòm đỉnh cao, truyền tải chất âm trọn vẹn tỏa ra xung quanh bạn. Công nghệ âm thanh nổi tiếng Dolby Atmos bổ sung âm thanh vòm 3D, cho chất âm chân thực hơn bao giờ hết.</p>', 9490000, 'image/5usa4g8hM64eii69nYod.png', 'white', 1, NULL, NULL),
(21, 'iPad Pro 10.5 WI-FI 64GB (2017)', 3, 1, '<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">Apple đã làm cho máy tính bảng của mình hoàn hảo hơn các model trước đây khi tinh chỉnh kể cả thiết kế, phần mềm và nâng cấp phần cứng trên iPad Pro 10.5 inch. Với cấu hình ấn tượng, màn hình sáng hơn, chip mạnh mẽ hơn và một tính năng ProMotion làm tăng tốc độ tươi của màn hình.</span>', '<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">Mặc dù mang trên mình màn hình kích thước lớn hơn thế hệ trước, nhưng iPad Pro 10.5 inch Wifi 64 GB 2017 vẫn không có sự khác biệt nhiều về trọng lượng, chỉ nặng 469g (hơn 32 gram so với model tiền nhiệm - iPad Pro 9.7 inch). Ngôn ngữ thiết kế mỏng nhẹ đáng kinh ngạc với lớp vỏ máy được làm hoàn toàn bằng chất liệu nhôm nguyên khối cao cấp cùng các đường cắt kim cương tinh tế, tỉ mỉ dọc theo thân máy cho cảm giác cực kì sang trọng và rất chắc chắn, thu hút mọi ánh nhìn xung quanh. Các viền bezels mỏng hơn đáng kể và khung kim loại được kéo dài thêm lên 0.5 inch.</span><div><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent; font-family: arial, helvetica, sans-serif;\">Như tên gọi, màn hình của iPad Pro 2017 có kích thước 10.5 inch, độ phân giải 1668 x 2224 pixels, sử dụng tấm nền IPS cùng công nghệ màn hình Retina. Ngoài ra, Apple cũng áp dụng công nghệ ProMotion giúp tốc độ làm tươi đạt mức 120 Hz (có nghĩa màn hình hiển thị LED có khả năng hiển thị 120 khung hình mỗi giây), hạn chế được hiện tượng rung, giật mà còn giảm hiện tượng bóng mờ khi chuyển động trên các màn LCD, một con số rất ấn tượng.</span></span></p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\">&nbsp;</p></div>', 16990000, 'image/QrGiRJYB4JPh0kpgyAYD.png', 'white', 1, NULL, NULL),
(22, 'iPad 2018 WiFi+4G 32GB', 3, 1, '<span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">iPad 2018 hoàn toàn có thể thay thế một chiếc máy tính với sức mạnh từ vi xử lý A10 Fusion, màn hình cảm ứng, hỗ trợ kết nối bàn phím và cả bút cảm ứng Apple pencil.</span><span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">Sức mạnh chính là điểm nâng cấp lớn nhất trên iPad 2018 khi sở hữu con chip Apple A10 Fusion cực mạnh. A10 Fusion được sản xuất trên kiến trúc 64 bit, bao gồm 4 lõi và tới 3,3 tỷ bán dẫn. Con chip này giúp cho iPad của bạn có tốc độ cực nhanh. Dù là làm những tác vụ nặng như chỉnh sửa video 4K hay chơi các game đồ họa 3D phức tạp, iPad 2018 đều thực hiện một cách vô cùng mượt mà.</span>', '<span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">iPad 2018 đủ mạnh để bạn có thể mở rất nhiều ứng dụng cùng lúc. Với tính năng chia màn hình, bạn sẽ làm việc và giải trí hiệu quả hơn khi mở hai ứng dụng ở hai cửa sổ hiển thị trên màn hình. Ví dụ bạn có thể vừa lướt web lại vừa gọi FaceTime với bạn bè một cách thú vị.</span><div><span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">iPad 2018 tương thích với bút cảm ứng thông minh Apple Pencil, một phụ kiện độc đáo thỏa mãn đam mê sáng tạo của bạn. Mọi ý tưởng, hình vẽ, ghi chú, ... đều sẽ được thể hiện nhanh chóng trên iPad 2018 thông qua Apple Pencil. Cây bút này mang đến độ chính xác và phản hồi hoàn hảo, để mọi thao tác của bạn đều diễn ra một cách tự nhiên.</span></div><div><span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">Màn hình 9,7 inch Retina của iPad 2018 hiển thị đẹp và sắc nét, giúp bạn luôn cảm thấy dễ chịu khi nhìn vào. Với một màn hình kích thước cực lớn, bạn có thể làm được nhiều việc hơn, giải trí vui vẻ hơn. Dù là kiểm tra email, trình chiếu slide hay chơi game, xem phim, iPad 2018 cũng đem lại sự hứng khởi đặc biệt.</span></div>', 11999000, 'image/Db1eLX610EPaErHsuRlb.png', 'white', 1, NULL, NULL),
(23, 'Tai nghe Sony Earpod MDR-E9LP', 4, 7, '<span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">Tai nghe Sony Earpod MDR-E9LP đến từ nhà sản xuất Sony có thiết kế hiện đại với kiểu dáng In - Ear nhét tai nhỏ gọn với trọng lượng chỉ 6g cho bạn thể hiện phong cách trẻ trung và sành điệu, rất phù hợp với các bạn trẻ năng động, yêu âm nhạc và thể thao. Đường kính tai nghe 13,5mm vừa vặn đem lại cho bạn cảm giác thoải mái ngay cả khi sử dụng trong một thời gian dài.</span>', '<span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">Tai nghe Sony Earpod MDR-E9LP với dải tần âm thanh rộng 18 – 22kHz cùng phím điều chỉnh volume tiện dụng cho bạn những âm thanh rõ nét và trung thực mang đến những giây phút đàm thoại thú vị và nghe nhạc thoải mái nhất.</span>', 200000, 'image/xjHC1QgqppLwmA9sq4kx.png', 'white', 1, NULL, NULL),
(24, 'Tai nghe không dây thoại & nhạc Baseus EB01', 4, 7, '<span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">Tai nghe không dây thoại &amp; nhạc Baseus EB01 nổi bật với ngoại hình màu trắng bóng với thiết kế có cài móc tai độc đáo mang tới sự trẻ trung và không kém phần sang trọng cho mọi lứa tuổi. Đặc biệt, bạn có thể dễ dàng điều chỉnh tai nghe cho phù hợp với kích thước tai để luôn thoải mái khi sử dụng.</span>', '<span style=\"color: rgb(34, 34, 34); font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">Tai nghe không dây thoại &amp; nhạc Baseus EB01 có khả năng lọc âm và khử tiếng ồn rất hiệu quả, không chỉ giúp bạn thoải mái đàm thoại ở những nơi công công ồn ào mà còn cho âm thanh rõ ràng và chính xác nhất khi bạn nghe nhạc.</span>', 300000, 'image/ljDAESb4Zuc9DWZbY7V2.png', 'white', 1, NULL, NULL),
(25, 'Loa không dây SONY SRS-XB01 white', 4, 8, 'loa sony', '<span style=\"font-size: 13.3333px;\">loa sony</span>', 799000, 'image/uMebsb1nQMSmOd97tM4G.png', 'gray', 1, NULL, NULL),
(26, 'Loa xách tay Bluetooth & NFC SONY SRS-XB21', 4, 8, '<div style=\"\"><br></div><div style=\"\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Loa xách tay Bluetooth &amp; NFC SONY SRS-XB21&nbsp;</span></div>', '<div style=\"\"><b><br></b></div><div style=\"\"><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Loa xách tay Bluetooth &amp; NFC SONY SRS-XB21&nbsp;</span></div>', 2290000, 'image/fWFltDYssa29BfurPpFq.png', 'yellow', 1, NULL, NULL),
(27, 'Dell N7588C', 1, 6, '<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify;\">Dell Insprion N7588C thuộc dòng laptop gaming G15 Series chuyên nghiệp của Dell, trang bị cấu hình “khủng” nhất và những yếu tố để mang đến trải nghiệm chơi game tuyệt vời nhất.</span>', '<p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">Hình ảnh tuyệt đẹp:</strong>&nbsp;Sở hữu VGA đồ họa rời cực đỉnh NVIDIA GeForce GTX 1050 Ti, Dell N7588C hiển thị mọi hình ảnh trong game đầy chân thực ở mức khung hình cao một cách mượt mà.</p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">Độ nét và màu sắc:</strong>&nbsp;Mọi thứ trên Dell N7588C đều được hiển thị một cách rõ nét, màu sắc sống động nhờ màn hình cao cấp 15,6 inch độ phân giải Full HD công nghệ IPS LCD chống lóa. Bạn có thể thoải mái chơi game bất cứ đâu mà không lo bị chói hay biến đổi hình dạng ở các góc nhìn khác nhau.</p><p style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; text-align: justify;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: transparent;\">Chất lượng âm thanh vượt trội:</strong>&nbsp;Trải nghiệm những âm thanh chân thực đến từng bước chân, nhịp tim, hơi thở của nhân vật trong game và âm lượng nhạc nền hoành tráng nhờ công nghệ Waves MaxxAudio Pro trên Dell N7588. Sự kết hợp giữa hình ảnh xuất sắc và âm thanh cao cấp sẽ cho bạn những giờ phút chơi game thực sự hấp dẫn.</p>', 31690000, 'image/2vInqwWPnSdVfXOqafC9.png', 'black', 1, NULL, NULL),
(28, 'Asus F560UD-BQ055T/Core i5-8250U', 1, 2, '<span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">Asus F560UD không chỉ là chiếc laptop thời trang bình thường mà nó còn mang trên mình hiệu năng mạnh đến mức có thể trở thành một cỗ máy chơi game chuyên nghiệp. Đây quả thực là mẫu laptop đa năng khi đáp ứng tốt mọi yêu cầu của bạn.</span>', '<span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">Thiết kế là sự khác biệt lớn của Asus F560UD so với những chiếc laptop hiệu năng cao khác trên thị trường. Asus hoàn thiện sản phẩm với màu sắc xanh đen lạ mắt, các đường sáng xanh chạy dọc thân máy đen tuyền tạo nên điểm nhấn tương phản đầy hấp dẫn. Kể cả logo Asus cũng được làm màu xanh. Hơn nữa màu đen của Asus F560 còn làm họa tiết kim cương cách điệu, rất cá tính và sang trọng.</span><div><span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; text-align: justify; background-color: rgb(255, 255, 255);\">Asus F560UD được trang bị hiệu năng đáng mơ ước với vi xử lý Intel Core i5 8250U (1.6 GHz Turbo Boost 3.4 GHz), thuộc thế hệ thứ 8 mới nhất và VGA đồ họa rời Nvidia GTX1050 2GB. Cấu hình này đủ đáp ứng tốt hầu hết mọi tựa game hiện nay, đặc biệt là các game eSports nổi tiếng như PUBG, Liên minh huyền thoại, Fifa Online 4, … Đi cùng với đó là 8GB RAM, 1TB bộ nhớ trong và cả khe cắm thêm ổ cứng SSD. Việc sử dụng song song 2 ổ cứng SSD và HDD giúp bạn vừa có tốc độ nhanh, vừa có không gian lưu trữ lớn mà không cần tốn quá nhiều chi phí.</span></div>', 16990000, 'image/WgCMHxMEg7ki2UeiO9Y4.png', 'black', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_email`, `shipping_first_name`, `shipping_last_name`, `shipping_address`, `shipping_mobile_number`, `shipping_city`, `created_at`, `updated_at`) VALUES
(9, 'tinhnmpd01943@fpt.edu.vn', 'Nguyen', 'tinh', 'thang binh quang nam', '0385406050', 'quang nam', NULL, NULL),
(10, 'diepltnpd01972@fpt.edu.vn', 'diep', 'le thi ngoc', 'an khe', '123456789', 'gia lai', NULL, NULL),
(11, 'tinhnmpd01943@fpt.edu.vn', 'Nguyen', 'tinh', 'thang binh quang nam', '0385406050', 'quang nam', NULL, NULL),
(12, 'tinhnmpd01943@fpt.edu.vn', 'Nguyen', 'tinh', 'thang binh quang nam', '0385406050', 'quang nam', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'slider/oHwpgZeXzgQVvxFiMCCn.jpg', '1', NULL, NULL),
(2, 'slider/5CsSOVORyQB9OZi18swt.png', '1', NULL, NULL),
(3, 'slider/8V3aQHNQ1ObDDE3d7pfC.jpg', '1', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
