-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2023 lúc 07:14 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `iduser` int(10) DEFAULT 0,
  `bill_name` varchar(255) NOT NULL,
  `bill_address` varchar(255) NOT NULL,
  `bill_email` varchar(255) NOT NULL,
  `bill_tel` varchar(50) NOT NULL,
  `bill_pttt` tinyint(1) NOT NULL DEFAULT 1,
  `ngaydathang` varchar(50) DEFAULT NULL,
  `total` int(10) NOT NULL DEFAULT 0,
  `bill_status` tinyint(1) DEFAULT 0,
  `receive_name` varchar(255) NOT NULL,
  `receive_address` varchar(255) NOT NULL,
  `receive_tel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(2, 'Sản phẩm rất tốt', 3, 1, '2023-09-22'),
(6, 'test', 1, 8, '0000-00-00'),
(7, '**<script type=”text/javascript”>  Var test=’../example.php?cookie_data=’+escape(docuent.cookie);  </script>**', 1, 9, '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `iduser`, `idpro`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(1, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 1, 180000, 1),
(2, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 2, 360000, 1),
(3, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 1, 180000, 1),
(4, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 1, 180000, 1),
(5, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 1, 180000, 1),
(6, 1, 6, 'Xiaomi Redmi Note 12 Pro.jpg', 'Xiaomi Redmi Note 12 Pro', 140000, 2, 280000, 1),
(7, 1, 8, 'Laptop Lenovo Ideapad 5 Pro.jpg', 'Laptop Lenovo Ideapad 5 Pro', 300000, 1, 300000, 1),
(8, 1, 9, 'Xiaomi Redmi Note 12 Pro.jpg', 'Xiaomi Redmi Note 12 Pro', 140000, 1, 140000, 1),
(9, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 1, 180000, 1),
(10, 1, 8, 'Laptop Lenovo Ideapad 5 Pro.jpg', 'Laptop Lenovo Ideapad 5 Pro', 300000, 1, 300000, 1),
(11, 1, 9, 'Xiaomi Redmi Note 12 Pro.jpg', 'Xiaomi Redmi Note 12 Pro', 140000, 2, 280000, 1),
(12, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 1, 180000, 1),
(13, 1, 8, 'Laptop Lenovo Ideapad 5 Pro.jpg', 'Laptop Lenovo Ideapad 5 Pro', 300000, 1, 300000, 1),
(14, 1, 9, 'Xiaomi Redmi Note 12 Pro.jpg', 'Xiaomi Redmi Note 12 Pro', 140000, 2, 280000, 1),
(15, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 1, 180000, 1),
(16, 1, 8, 'Laptop Lenovo Ideapad 5 Pro.jpg', 'Laptop Lenovo Ideapad 5 Pro', 300000, 1, 300000, 1),
(17, 1, 9, 'Xiaomi Redmi Note 12 Pro.jpg', 'Xiaomi Redmi Note 12 Pro', 140000, 1, 140000, 1),
(18, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 1, 180000, 1),
(19, 1, 9, 'Xiaomi Redmi Note 12 Pro.jpg', 'Xiaomi Redmi Note 12 Pro', 140000, 1, 140000, 1),
(20, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 1, 180000, 1),
(21, 1, 9, 'Xiaomi Redmi Note 12 Pro.jpg', 'Xiaomi Redmi Note 12 Pro', 140000, 1, 140000, 1),
(22, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 1, 180000, 1),
(23, 1, 9, 'Xiaomi Redmi Note 12 Pro.jpg', 'Xiaomi Redmi Note 12 Pro', 140000, 1, 140000, 1),
(24, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 1, 180000, 1),
(25, 1, 8, 'Laptop Lenovo Ideapad 5 Pro.jpg', 'Laptop Lenovo Ideapad 5 Pro', 300000, 1, 300000, 1),
(26, 1, 9, 'Xiaomi Redmi Note 12 Pro.jpg', 'Xiaomi Redmi Note 12 Pro', 140000, 1, 140000, 1),
(27, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 1, 180000, 1),
(28, 1, 8, 'Laptop Lenovo Ideapad 5 Pro.jpg', 'Laptop Lenovo Ideapad 5 Pro', 300000, 1, 300000, 1),
(29, 1, 9, 'Xiaomi Redmi Note 12 Pro.jpg', 'Xiaomi Redmi Note 12 Pro', 140000, 1, 140000, 1),
(30, 1, 10, 'Macbook Air 15 inch M2 2023.jpg', 'Macbook Air 15 inch M2 2023', 180000, 1, 180000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(1, 'Laptop'),
(2, 'Điện Thoại');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `img` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `iddm` int(11) NOT NULL,
  `soluong` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `img`, `mota`, `luotxem`, `iddm`, `soluong`) VALUES
(1, 'Apple MacBook Air M1', 300000.00, 'Laptop1.jpg', 'Sản phẩm cấu hình cơ bản bao gồm một GPU bảy lõi, bộ nhớ lưu trữ 256GB SSD, cũng như 8GB RAM bộ nhớ. Phiên bản nâng cấp với GPU tám lõi và bộ nhớ 512GB SSD có giá khởi điểm là 1249$. Cấu hình tối đa sẽ bao gồm 16GB RAM và 2TB dung lượng lưu trữ. Máy có ba tuỳ chọn màu sắc giống sản phẩm tiền nhiệm bao gồm vàng (gold), bạc (silver) và xám không gian (Space gray)', 10, 1, 0),
(2, 'iPhone 14 Pro Max', 140000.00, 'iPhone 14 Pro Max.jpg', 'Những dòng iPhone đến từ nhà Apple đều có sức hút đặc biệt ngay từ thời điểm ra mắt và thế hệ iPhone 14 Pro Max cũng không ngoại lệ. Có thể nói, iPhone 14 Pro Max là sự kết hợp hoàn hảo giữa các yếu tố về thiết kế, cấu hình, tính năng, hệ điều hành,... Nếu bạn tò mò về siêu phẩm này, hãy đọc ngay phần đánh giá chi tiết phiên bản cao cấp nhất trong series iPhone 14 bên dưới nhé. ', 9, 2, 0),
(3, 'Laptop Asus VivoBook Go 14', 180000.00, 'Laptop Asus VivoBook Go 14.jpg', 'ASUS Vivobook E1404FA-NK186W thuộc dòng Vivobook Go 14, dòng laptop hiệu năng cao giá rẻ giúp bạn làm việc hiệu quả mọi lúc mọi nơi. Với bộ vi xử lý AMD 7000 series mạnh mẽ, trang bị sẵn tới 16GB RAM, 512GB SSD, Vivobook E1404FA sẽ mang đến trải nghiệm làm việc thoải mái, vô cùng mượt mà.', 9, 1, 0),
(5, 'Laptop Lenovo Ideapad 5 Pro', 300000.00, 'Laptop Lenovo Ideapad 5 Pro.jpg', 'Lenovo Ideapad 5 Pro 16 là chiếc laptop, máy tính xách tay thời đại mới dành cho các bạn trẻ đa nhiệm, năng động với vẻ ngoài hiện đại, mỏng nhẹ nhưng bên trong lại chứa một hiệu năng cực khủng. Bên cạnh đó, chiếc laptop Lenovo - Lenovo Ideapad này cũng được tích hợp nhiều công nghệ hiện đại, tối ưu tốt cho trải nghiệm sử dụng. Chắc chắn, mẫu laptop mỏng nhẹ này sẽ khiến bạn phải bất ngờ đấy. Hãy cùng Laptop88 đánh giá ngay mẫu laptop văn phòng này dưới đây nhé!', 10, 1, 0),
(6, 'Xiaomi Redmi Note 12 Pro', 140000.00, 'Xiaomi Redmi Note 12 Pro.jpg', 'Samsung S23 Ultra là dòng điện thoại cao cấp của Samsung, sở hữu camera độ phân giải 200MP ấn tượng, chip Snapdragon 8 Gen 2 mạnh mẽ, bộ nhớ RAM 8GB mang lại hiệu suất xử lý vượt trội cùng khung viền vuông vức sang trọng. Sản phẩm được ra mắt từ đầu năm 2023.', 9, 2, 0),
(7, 'Macbook Air 15 inch M2 2023', 180000.00, 'Macbook Air 15 inch M2 2023.jpg', 'Vận hành doanh nghiệp trên MacBook Air M2. Siêu mạnh mẽ với chip M2 thế hệ tiếp theo, MacBook Air được thiết kế mới nay nhỏ gọn hơn bao giờ hết, kết hợp giữa hiệu năng đáng kinh ngạc và thời lượng pin lên đến 18 giờ trong vỏ nhôm mỏng đầy ấn tượng.1 Nhờ đó, tất cả các bộ phận từ kinh doanh đến tài chính đều có thể làm việc năng suất hơn dù ở bất cứ đâu.', 9, 1, 0),
(8, 'Laptop Lenovo Ideapad 5 Pro', 300000.00, 'Laptop Lenovo Ideapad 5 Pro.jpg', 'Lenovo Ideapad 5 Pro 16 là chiếc laptop, máy tính xách tay thời đại mới dành cho các bạn trẻ đa nhiệm, năng động với vẻ ngoài hiện đại, mỏng nhẹ nhưng bên trong lại chứa một hiệu năng cực khủng. Bên cạnh đó, chiếc laptop Lenovo - Lenovo Ideapad này cũng được tích hợp nhiều công nghệ hiện đại, tối ưu tốt cho trải nghiệm sử dụng. Chắc chắn, mẫu laptop mỏng nhẹ này sẽ khiến bạn phải bất ngờ đấy. Hãy cùng Laptop88 đánh giá ngay mẫu laptop văn phòng này dưới đây nhé!', 10, 1, 0),
(9, 'Xiaomi Redmi Note 12 Pro', 140000.00, 'Xiaomi Redmi Note 12 Pro.jpg', 'Samsung S23 Ultra là dòng điện thoại cao cấp của Samsung, sở hữu camera độ phân giải 200MP ấn tượng, chip Snapdragon 8 Gen 2 mạnh mẽ, bộ nhớ RAM 8GB mang lại hiệu suất xử lý vượt trội cùng khung viền vuông vức sang trọng. Sản phẩm được ra mắt từ đầu năm 2023.', 9, 2, 0),
(10, 'Macbook Air 15 inch M2 2023', 180000.00, 'Macbook Air 15 inch M2 2023.jpg', 'Vận hành doanh nghiệp trên MacBook Air M2. Siêu mạnh mẽ với chip M2 thế hệ tiếp theo, MacBook Air được thiết kế mới nay nhỏ gọn hơn bao giờ hết, kết hợp giữa hiệu năng đáng kinh ngạc và thời lượng pin lên đến 18 giờ trong vỏ nhôm mỏng đầy ấn tượng.1 Nhờ đó, tất cả các bộ phận từ kinh doanh đến tài chính đều có thể làm việc năng suất hơn dù ở bất cứ đâu.', 9, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'Admin', '123456', 'admin@fpt.edu.vn', NULL, NULL, 1),
(2, 'Hoàng Long', '123456', 'longhh7@fpt.edu.vn', NULL, NULL, 2),
(3, 'Thành Trung', '1234565', 'trungnt173@fpt.edu.vn', 'Hà Nội', NULL, 2),
(4, 'test', '123456', 'trungnt174@fpt.edu.vn', NULL, NULL, 2),
(5, 'trungnt175@fpt.edu.vn', 'trungnt175', '123456', NULL, NULL, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpro` (`idpro`),
  ADD KEY `iduser` (`iduser`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_bill` (`idbill`),
  ADD KEY `cart_user` (`iduser`),
  ADD KEY `cart_products` (`idpro`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddm` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `taikhoan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
