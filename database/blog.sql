-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 24, 2020 lúc 12:07 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `descript` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `urlimg` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `descript`, `urlimg`, `status`) VALUES
(1, 'Test', 'Dùng để test các thao tác liên quan đến category', 'Untitled.png', 1),
(3, 'Báo', 'Các bài báo copy từ Dantri', '98205236_638081710132486_7348848210649022464_n.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `username` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_bin NOT NULL,
  `messenge` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `send_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `username`, `email`, `messenge`, `send_date`, `status`) VALUES
(1, 'aa', 'wolonguyen@gmail.com', 'aaa', '2020-07-10 19:00:56', 0),
(2, 'Đinh Đức Khanh', 'Khang@meow.com', 'Meo meo meo :V', '2020-07-10 19:01:41', 0),
(3, 'Nguyễn Thị Châm', 'cham@email.com', 'oki spring data jpa hibernate oki nhé', '2020-07-13 10:31:53', 0),
(4, 'Đỗ Minh Anh', 'Anh@meo.com', 'Test liên hệ oki!', '2020-07-13 10:37:02', 0),
(5, 'Đỗ Thành Công', 'congdo.mail.com', 'Test liên hệ alert oki!', '2020-07-13 10:55:03', 0),
(11, 'Nguyen The Truong', 'email@abc.com', 'oki ngon nhé', '2020-07-14 07:32:50', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `descript` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `categoryid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `urlimg` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `content` text COLLATE utf8mb4_bin NOT NULL,
  `views` int(11) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `name`, `descript`, `categoryid`, `userid`, `urlimg`, `content`, `views`, `status`) VALUES
(23, 'Test lỗi xóa user và category', 'test', 1, 8, '98205236_638081710132486_7348848210649022464_n.jpg', '<p>dùng để test</p>', 0, 1),
(26, 'Giá vàng tăng dựng đứng, chính thức vọt 55,3 triệu đồng/lượng', 'Sáng nay 24/7, giá vàng SJC đã chính thức tăng vọt lên 55,3 triệu đồng/lượng dù giá vàng giao ngay trên thế giới quay đầu giảm.', 3, 8, '', '<div class=\"dt-news__sapo\" style=\"margin-bottom: 24px; font-size: 17px; line-height: 1.6; font-family: &quot;Noto Serif&quot;, serif;\"><h2 style=\"margin-bottom: 0px; font-family: inherit; font-weight: inherit; display: inline; font-size: inherit; line-height: inherit; color: inherit;\">Sáng nay 24/7, giá vàng SJC đã chính thức tăng vọt lên 55,3 triệu đồng/lượng dù giá vàng giao ngay trên thế giới quay đầu giảm.</h2></div><div class=\"dt-news__content\" style=\"font-family: &quot;Noto Serif&quot;, serif; font-size: 17px; line-height: 1.6;\"><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Lúc 9h sáng nay, giá vàng SJC tại TPHCM được doanh nghiệp niêm yết giao dịch ở mức 53,9 triệu đồng/lượng (mua vào) - 55,07 triệu đồng/lượng (bán ra). Thậm chí, giá vàng SJC loại 0,5 chỉ, 1 chỉ, 2 chỉ đã vọt lên 53,9 triệu đồng/lượng - 55,1 triệu đồng/lượng.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Đến 9h30, giá vàng tại đây tăng tiếp lên mức 54,17 triệu đồng/lượng - 55,35 triệu đồng lượng, tức tăng tới 550.000 đồng/lượng so với chốt phiên hôm qua.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Tại Hà Nội, giá vàng SJC được doanh nghiệp niêm yết giao dịch ở mức 53,68 triệu đồng/lượng - 54,6 triệu đồng/lượng, tăng mạnh 530.000 đồng/lượng và 250.000 đồng/lượng. Chưa dừng lại ở đó, giá vàng SJC tại Hà Nội tăng lên tiếp 53,68 triệu đồng/lượng - 54,71 triệu đồng/lượng vào lúc 9h30.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Chốt phiên giao dịch hôm qua, giá vàng SJC tại Hà Nội niêm yết ở mức 53,15 triệu đồng/lượng - 54,35 triệu đồng/lượng; giá vàng SJC tại TPHCM ở mức 53,5 triệu đồng/lượng - 54,8 triệu đồng/lượng.<zone id=\"k9aapanl\"></zone></p><figure class=\"image align-center img-wrapper\" contenteditable=\"false\" style=\"margin: 24px auto; position: relative; float: none; overflow: hidden; color: rgb(22, 22, 22);\"><img title=\"Giá vàng tăng dựng đứng, chính thức vọt 55,3 triệu đồng/lượng - 1\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/07/22/bao-tien-1595394582359.jpg\" alt=\"Giá vàng tăng dựng đứng, chính thức vọt 55,3 triệu đồng/lượng - 1\" data-width=\"2048\" data-height=\"1152\" data-original=\"https://icdn.dantri.com.vn/2020/07/22/bao-tien-1595394582359.jpg\" data-photo-id=\"1009600\" class=\"pswp-img\" style=\"width: 660px; height: auto; float: left;\"><div class=\"image-instruction-background\" style=\"width: 660px; height: 21px; background-color: rgb(0, 0, 0); left: 0px; opacity: 0; position: absolute; color: rgb(255, 255, 255); top: 0px; transition: opacity 0.13s ease-in-out 0s;\"></div><p class=\"img-instruction\" style=\"margin-bottom: 24px; opacity: 0; position: absolute; color: rgb(255, 255, 255); top: 0px; transition: opacity 0.13s ease-in-out 0s; left: 7px; font-size: 13px; font-family: Arial;\">Nhấn để phóng to ảnh</p><figcaption style=\"background-color: rgb(241, 241, 241); padding: 8px; float: left; width: 660px; position: relative; font-size: 15px; font-family: Arial, sans-serif;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: inherit; font-family: inherit;\">Người đàn ông này đã xách cả bao tiền đi mua vàng khi giá vàng tăng sốc, xô đổ kỷ lục mọi thời đại (ảnh: Thế Hưng).</p></figcaption></figure><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Như vậy, tính từ đầu tháng 7 đến nay, giá vàng SJC đã tăng gần 6 triệu đồng mỗi lượng. Sáng 1/7, giá vàng SJC được doanh nghiệp niêm yết giao dịch ở mức 49,15 triệu đồng/lượng (mua vào) - 49,62 triệu đồng/lượng (bán ra).</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Cũng vào thời điểm đó, giá vàng giao ngay tại châu Á qua niêm yết của Kitco.com hiện có mức tăng 2,6 USD, giao dịch ở mức 1.782 USD/ounce, tương đương 49,99 triệu đồng/lượng.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Giá vàng tăng chủ yếu do đại dịch Covid-19 vẫn âm ỉ và kìm hãm sự tăng trưởng của hầu hết các nền kinh tế trên thế giới. Số ca nhiễm Covid-19 vẫn tăng mạnh trên toàn cầu, nhất là tại Mỹ.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Còn so với đầu năm 2020, giá vàng SJC đã tăng hơn 12 triệu đồng mỗi lượng. Sáng 3/1, giá vàng SJC niêm yết giao dịch ở mức 42,53 triệu đồng/lượng (mua vào) và 42,9 triệu đồng/lượng (bán ra).</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Giá vàng tăng sốc khiến giao dịch trên thị trường sôi động hẳn lên, số lượng người đến các cửa hàng vàng tăng đáng kể do, nhưng không quá đột biến. Dẫu vậy, trên thị trường vẫn xuất hiện hình ảnh một số người xách cả túi tiền đi mua vàng với kỳ vọng giá vàng còn tăng tiếp.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Trên thế giới, lúc 6h20 sáng nay (giờ Việt Nam), giá vàng giao ngay qua Kitco.com hiện niêm yết giao dịch ở mức 1.886,6 USD/ounce. Đến 9h sáng, giá vàng tại đây giảm nhẹ xuống còn 1.884 USD/ounce.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Tính từ đầu năm tới nay, giá vàng đã tăng khoảng 23%, còn so với đầu 2019 giá vàng tăng khoảng 46,5%.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Lượng vàng nắm giữ của SPDR Gold Trust, quỹ giao dịch vàng lớn nhất thế giới, đã tăng 0,4% lên 1.225,01 tấn, đạt mức cao nhất kể từ tháng 3 năm 2013.</p><figure class=\"image align-center img-wrapper\" contenteditable=\"false\" style=\"margin: 24px auto; position: relative; float: none; overflow: hidden; color: rgb(22, 22, 22);\"><img title=\"Giá vàng tăng dựng đứng, chính thức vọt 55,3 triệu đồng/lượng - 2\" src=\"https://icdn.dantri.com.vn/thumb_w/640/2020/03/13/vang-13-1584060591717.jpeg\" alt=\"Giá vàng tăng dựng đứng, chính thức vọt 55,3 triệu đồng/lượng - 2\" data-width=\"259\" data-height=\"194\" data-original=\"https://icdn.dantri.com.vn/2020/03/13/vang-13-1584060591717.jpeg\" data-photo-id=\"868918\" class=\"pswp-img\" style=\"width: 660px; height: auto; float: left;\"><div class=\"image-instruction-background\" style=\"width: 660px; height: 21px; background-color: rgb(0, 0, 0); left: 0px; opacity: 0; position: absolute; color: rgb(255, 255, 255); top: 0px; transition: opacity 0.13s ease-in-out 0s;\"></div><p class=\"img-instruction\" style=\"margin-bottom: 24px; opacity: 0; position: absolute; color: rgb(255, 255, 255); top: 0px; transition: opacity 0.13s ease-in-out 0s; left: 7px; font-size: 13px; font-family: Arial;\">Nhấn để phóng to ảnh</p><figcaption style=\"background-color: rgb(241, 241, 241); padding: 8px; float: left; width: 660px; position: relative; font-size: 15px; font-family: Arial, sans-serif;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: inherit; font-family: inherit;\">Giá vàng tăng vọt lên đỉnh 9 năm qua (ảnh minh họa)</p></figcaption></figure><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Giá vàng thế giới tăng cao, liên tiếp lập kỷ lục do mối quan hệ Mỹ -Trung ngày càng xấu đi và những bất ổn về kinh tế khi dịch Covid-19 đang hoành hành tại nhiều nước trên thế giới.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Xét về dài hạn, nhiều dự báo cho rằng, giá vàng thế giới sẽ còn tăng tiếp và nhanh chóng vượt ngưỡng 1.920 USD/ounce thiết lập được từ năm 2011. Giá vàng có thể sẽ leo lên mức 2.000-3.000 USD/ounce trong vài năm tới.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Dữ liệu mới nhất cho thấy, tính đến ngày 23/7, Mỹ ghi nhận hơn 4,1 triệu ca mắc Covid-19, trong đó hơn 147.000 người đã tử vong. Mỹ hiện là nước có số người mắc và tử vong do đại dịch này nhiều nhất thế giới.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Thống kê của Reuters chỉ ra, Mỹ ghi nhận ca mắc Covid-19 đầu tiên hôm 21/1 và mất 98 ngày con số này lên 1 triệu ca. Tuy nhiên, chỉ mất 16 ngày, số ca mắc tăng từ 3 triệu ca lên 4 triệu ca. Hiện tại, trung bình mỗi giờ nước Mỹ có thêm hơn 2.600 người mắc Covid-19, tốc độ lây lan nhanh nhất trên thế giới.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Dịch Covid-19 đang gây ra một cuộc khủng hoảng y tế toàn cầu chưa từng có tiền lệ, khiến gần 16 triệu người mắc bệnh, hơn 635.000 người tử vong. Trong khi châu Mỹ tiếp tục là điểm nóng bùng phát mạnh nhất, dịch cũng đang có xu hướng bùng phát mạnh tại châu Phi, nơi đã ghi nhận gần 800.000 ca mắc Covid-19.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Châu Âu được đánh giá đang kiểm soát dịch tốt hơn, song đến nay cũng đã ghi nhận hơn 2,7 triệu ca mắc Covid-19 sau khi nhiều quốc gia trở thành tâm dịch trong làn sóng Covid-19 đầu tiên.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Đánh giá về nguyên nhân khiến giá vàng tăng lên mức kỷ lục mọi thời đại, ông Nguyễn Hoàng Minh, Phó giám đốc Ngân hàng Nhà nước Việt Nam Chi nhánh TPHCM cho biết: \"Nguyên nhân chủ yếu khiến giá vàng quốc tế tăng cao là do số ca nhiễm Covid-19 không ngừng gia tăng ở nhiều nước, giới đầu tư kỳ vọng các nước đang chịu ảnh hưởng của dịch Covid-19 có thể áp dụng thêm các gói kích thích kinh tế, đặc biệt sau khi EU thông qua gói cứu trợ “lịch sử” trị giá 750 tỷ Euro. Đồng đô la Mỹ đã giảm giá xuống mức thấp nhất trong vòng 4 tháng qua\", ông Nguyễn Hoàng Minh cho biết</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Ngoài ra, theo ông Minh, trong ngày 23/7, những diễn biến căng thẳng trong quan hệ giữa Mỹ và Trung Quốc đã khiến giá vàng tiếp tục đà tăng mạnh.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Theo quan sát của ông Nguyễn Hoàng Minh, trên thị trường trong nước, giá vàng miếng SJC tăng theo giá vàng quốc tế, có thời điểm mức giá bán vàng miếng SJC trong nước tăng lên mức 54,9 triệu đồng/lượng trong chiều ngày 23/7.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">\"Tuy nhiên, giá vàng trong nước diễn biến tăng phù hợp với mức tăng của giá vàng quốc tế, giao dịch mua, bán trên thị trường ở mức bình thường, không có hiện tượng người dân đổ xô đi mua vàng mà chỉ có một số người dân có xu hướng bán vàng ra khi giá vàng cao\", ông Minh nói.</p><p style=\"margin-bottom: 24px; color: rgb(22, 22, 22);\">Đánh giá về xu hướng của giá vàng thế giới trong thời gian tới, ông Minh dẫn lời các chuyên gia cho hay: Trong thời gian tới giá vàng thế giới còn diễn biến phức tạp, chủ yếu phụ thuộc vào tình hình dịch bệnh Covid-19 trên thế giới cũng như diễn biến căng thẳng trong quan hệ giữa Mỹ và Trung Quốc.</p><div><br></div></div>', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `descript` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `descript`, `status`) VALUES
(4, 'admin', 'Admin mà người có quyền cao nhất hệ thống', 1),
(5, 'writer', 'Writer là người viết các bài post. Có quyền chỉnh sửa thông tin cá nhân của chính họ và các bài viết của họ.', 1),
(6, 'user', 'User là người dùng nói chung. Họ chỉ có thể đọc các bài viết.', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `password` varchar(128) CHARACTER SET utf8 NOT NULL,
  `urlimg` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `descript` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 NOT NULL,
  `phonenumber` varchar(20) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `urlimg`, `descript`, `email`, `phonenumber`, `status`) VALUES
(7, 'Admin', '123456', '84006.jpg', 'Đây là Admin của hệ thống', 'admin@gmail.com', '', 1),
(8, 'Nguyễn Thế Trưởng', '123456', '6.jpg', 'dzai', 'wolonguyen@gmail.com', '0356928512', 1),
(9, 'Thư', '123456', '89519289_518365562395157_7629615587202695168_n.jpg', 'nick phụ', 'ntruong879@gmail.com', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`id`, `userid`, `roleid`, `status`) VALUES
(9, 7, 4, 1),
(10, 7, 5, 1),
(11, 7, 6, 1),
(12, 8, 5, 1),
(13, 9, 6, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_POST_CATEGORY` (`categoryid`),
  ADD KEY `FK_POST_USER` (`userid`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_USER` (`userid`),
  ADD KEY `FK_ROLE` (`roleid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_POST_CATEGORY` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_POST_USER` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK_ROLE` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FK_USER` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
