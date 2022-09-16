-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 27, 2021 lúc 08:05 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sql_gbook`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_gbook`
--

CREATE TABLE `admin_gbook` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin_gbook`
--

INSERT INTO `admin_gbook` (`id`, `username`, `password`, `admin_status`) VALUES
(2, 'quang', '4a7d1ed414474e4033ac29ccb8653d9b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(20) NOT NULL,
  `code_cart` varchar(100) NOT NULL,
  `cart_status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(39, 22, '6459', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_details`
--

CREATE TABLE `cart_details` (
  `id_details` int(11) NOT NULL,
  `code_cart` varchar(20) NOT NULL,
  `id_sanpham` int(10) NOT NULL,
  `soluongmua` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart_details`
--

INSERT INTO `cart_details` (`id_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(35, '6459', 28, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ky`
--

CREATE TABLE `dang_ky` (
  `id_dangky` int(11) NOT NULL,
  `tenkh` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sdt` int(11) NOT NULL,
  `diachi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dang_ky`
--

INSERT INTO `dang_ky` (`id_dangky`, `tenkh`, `password`, `sdt`, `diachi`) VALUES
(21, 'Bá Quảng', 'cfcd208495d565ef66e7dff9f98764da', 123, '146 to ky'),
(22, 'Bá Quảng', 'cfcd208495d565ef66e7dff9f98764da', 123, '146 to ky');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc_moi`
--

CREATE TABLE `danh_muc_moi` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danh_muc_moi`
--

INSERT INTO `danh_muc_moi` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(5, 'Công nghệ thông tin', 1),
(6, 'Mạng máy tính và truyền thông dữ liệu', 2),
(7, 'Kỹ thuật máy tính', 3),
(8, 'Kỹ Thuật mạng', 4),
(9, 'Công nghệ phần mềm', 5),
(10, 'Hệ thống thông tin quản lý', 6),
(11, 'Big Data & Machine Learning', 7),
(12, 'Thiết kế Đồ họa/Game/Multimedia', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioi_thieu`
--

CREATE TABLE `gioi_thieu` (
  `id_gioithieu` int(11) NOT NULL,
  `tieude` text NOT NULL,
  `noidung` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `gioi_thieu`
--

INSERT INTO `gioi_thieu` (`id_gioithieu`, `tieude`, `noidung`) VALUES
(6, '<h2 class=\"g2gt\">GBOOK</h2>\r\n<h4 class=\"g2gt\">Đường Tô Ký Quận 12, Thành Phố Hồ Chí Minh Việt Nam</br>\r\nĐT: 0123 456 789 – 0987 654 321</br>\r\nWebsite: ww.goodbook.com.vn</br></h4>', 'Nhà xuất bản Tổng hợp thành phố Hồ Chí Minh là cơ quan chính trị – tư tưởng – văn hóa của Đảng bộ và nhân dân thành phố Hồ Chí Minh được thành lập từ năm 1977. Hàng năm, Nhà xuất bản Tổng hợp xuất bản hàng ngàn tựa sách gồm nhiều thể loại về chính trị, lịch sử, văn hóa, kinh tế, pháp luật, khoa học - kỹ thuật, từ điển, ngoại ngữ, sách tham khảo cho học sinh từ mẫu giáo đến trung học phổ thông; giáo trình, tài liệu tham khảo, sách học ngoại ngữ cho sinh viên cao đẳng, đại học; bên cạnh đó còn có các ấn phẩm văn hóa như lịch, bưu ảnh, sổ tay, bản đồ ...\r\n</br>\r\n<img src=\"anhsach/gioithieu.jpg\">\r\n</br>\r\nĐ/c Tân Đức (Tám Râu)-Giám đốc-Tổng Biên tập đầu tiên của NXB Tổng hợp TP.HCM.\r\n</br>\r\nTrong những năm đổi mới, đặc biệt là từ khi đất nước tiến nhanh vào thời kỳ công nghiệp hóa, hiện đại hóa, Nhà xuất bản Tổng hợp TP. Hồ Chí Minh đã nỗ lực  đầu tư cả về cơ sở vật chất lẫn chuyên môn nghiệp vụ, thực hiện công tác biên tập, cấp phép, in ấn, phát hành vừa nhanh chóng đáp ứng các yêu cầu của khách hàng vừa đảm bảo và không ngừng nâng cao chất lượng các ấn phẩm. Nhiều năm liền, ấn phẩm của Nhà xuất bản Tổng hợp được bạn đọc bình chọn là hàng Việt Nam chất lượng cao, một số ấn phẩm đã được nhận các Giải vàng, Giải bạc sách hay, sách đẹp của Hội Xuất bản Việt Nam tổ chức hàng năm.\r\n\r\n</br>\r\n<img src=\"anhsach/gioithieu2.jpg\">\r\n</br>\r\nCác đồng chí: Nguyễn Thị Thủy, Vương Lan (nguyên Giám đốc NXB), Tân Đức, Ánh Tuyết (nguyên Chủ tịch Công Đoàn), Nguyễn Thị Thanh Hương (từ phải qua). Ảnh chụp năm 1992\r\n</br>\r\n<img src=\"anhsach/gioithieu2.jpg\">\r\n</br>\r\nCác đ/c lãnh đạo đến thăm gian hàng NXB Tổng hợp TP.HCM (từ phải qua: Đ/c Lê Thanh Hải-Bí thư Thành ủy TP.HCM, đ/c Nguyễn Thị Thanh Hương-Giám đốc NXB Tổng hợp TP.HCM, đ/c Nguyễn Thị Quyết Tâm-Trưởng ban Tuyên giáo Thành ủy, đ/c Phạm Phương Thảo-Phó Bí thư Thành ủy,Chủ tịch HĐND TP.HCM)\r\n\r\n</br>\r\n<img src=\"anhsach/gioithieu3.jpg\">\r\n</br>\r\nĐ/c Nguyễn Thị Thanh Hương-Giám đốc –Tổng Biên tập NXB Tổng hợp TP. Hồ Chí Minh giới thiệu sách của NXB với đ/c Tô Huy Rứa-Ủy viên Bộ Chính trị, Bí thư Trung ương Đảng, Trưởng Ban Tuyên giáo Trung ương trong Hội chợ sách quốc tế lần thứ III tại Hà Nội\r\n</br>\r\nTừ khi thực hiện Luật Xuất bản, bên cạnh việc đảm bảo xuất bản các ấn phẩm thuộc công tác văn hóa, tư tưởng của Đảng bộ Thành phố Hồ Chí Minh, Nhà xuất bản Tổng hợp TPHCM đã mở rộng liên kết với nhiều tổ chức, cá nhân cả trong và ngoài nước nhằm đem đến cho bạn đọc những tri thức mới trên nhiều lĩnh vực, nhất là mảng sách kiến thức về kinh tế – quản trị kinh doanh – văn hóa kinh doanh trong thời kỳ mở cửa và hội nhập. Đến nay, Nhà xuất bản Tổng hợp TPHCM đã phối hợp với nhiều tổ chức, cá nhân có uy tín và chuyên môn nghiệp vụ cao trong lĩnh vực xuất bản, phát hành cả trong và ngoài nước như: Công ty cổ phần phát hành sách thành phố Hồ Chí Minh (Fahasa), Công ty Trách nhiệm hữu hạn Nhân Trí Việt, Công ty First News, Doanh nghiệp tư nhân Sách Thành Nghĩa,  Công ty cổ phần Tinh Văn, Nhà xuất bản Ngũ Châu (Trung Quốc), Nhà xuất bản Orchard Books (Anh Quốc), Tập đoàn Anh ngữ LiveABC (Đài Loan), Nhà xuất bản McGraw-Hill (Hoa Kỳ)… Chỉ riêng với Nhà xuất bản McGraw-hill, Nhà xuất bản Tổng hợp TP. Hồ Chí Minh đã mua bản quyền, tổ chức dịch và xuất bản hàng trăm tựa sách phục vụ bạn đọc.\r\n\r\n</br>\r\n<img src=\"anhsach/gioithieu4.jpg\">\r\n</br>\r\nCác đồng chí lãnh đạo đang trao đổi về công tác xuất bản hiện nay (từ trái qua: đ/c Lê Thị Hoàng Mai-Phó GĐ NXB, đ/c Phạm Phương Thảo, đ/c Nguyễn Thị Quyết Tâm, đ/c Nguyễn Thị Thanh Hương, đ/c Lê Thanh Hải và đ/c Lê Mạnh Hà-Thành ủy viên-GĐ Sở Thông tin và Truyền thông (người đứng sau).</br>\r\n\r\n Trong những năm gần đây, với sự phát triển mạnh mẽ của công nghệ thông tin – truyền thông, ngành xuất bản cả nước đứng trước những thử thách mới, vừa phải không ngừng nâng cao chất lượng ấn phẩm cả về nội dung lẫn hình thức vừa phải ra sức xây dựng văn hóa đọc trong nhân dân. Trong tình hình ấy, Nhà xuất bản Tổng hợp đã có nhiều nỗ lực thu hút bạn đọc thông qua việc tổ chức các Tuần Lễ Sách Hay và ra mắt Nhà sách Tổng hợp tại trụ sở Nhà xuất bản nhằm giới thiệu, quảng bá và phát hành sách của Nhà xuất bản Tổng hợp TP. Hồ Chí Minh. Những nỗ lực trên đây của Nh xuất bản dù còn nhỏ bé nhưng được đông đảo bạn đọc hưởng ứng, khích lệ.\r\n</br>\r\n<img src=\"anhsach/gioithieu5.jpg\">\r\n</br>\r\nĐ/c Nguyễn Văn Đua-Phó Bí  thư Thường trực Thành ủy TP.HCM  đang trao đổi với đ/c Nguyễn Thị Thanh Hương-GĐ-TBT NXB Tổng hợp TP.HCM về công tác xuất bản sách Chính trị-Truyền thống của NXB hiện nay.\r\n\r\n</br>\r\n<img src=\"anhsach/gioithieu6.jpg\">\r\n</br>\r\nLãnh đạo Sở Thông tin và Truyền thông thăm NXB Tổng hợp TP.HCM (Tháng 11/2009)</br>\r\nHướng tới chủ đề chung: Sách - Tri thức - Hội nhập và Phát triển của các kỳ Hội sách TP. Hồ Chí Minh, với phương châm Hội nhập tri thức toàn cầu, Nhà xuất bản Tổng hợp Thành phố Hồ Chí Minh đang ra sức xây dựng đội ngũ cán bộ chuyên môn, nghiệp vụ, tăng cường cơ sở vật chất, nâng cao chất lượng ấn phẩm nhằm phục vụ bạn đọc tốt hơn nữa. Nhà xuất bản Tổng hợp rất mong được cộng tác ủng hộ nhiều hơn với các tổ chức, cá nhân, các tác giả, dịch giả và bạn đọc trong và ngoài nước.\r\n</br>\r\n<img src=\"anhsach/gioithieu7.jpg\">\r\n</br>\r\nLãnh đạo NXB McGraw-Hill làm việc với lãnh đạo NXB Tổng hợp TP.HCM (năm 2007)</br>\r\n\r\nĐặc biệt, năm 2012, hòa cùng không khí kỷ niệm 60 năm ngành Xuất bản – In – Phát hành sách Việt Nam, Nhà xuất bản Tổng hợp Thành phố Hồ Chí Minh  hân hoan chào đón và tổ chức “Kỷ niệm 35 năm thành lập Nhà xuất bản Tổng hợp Thành phố Hồ Chí Minh” và ra mắt Sách điện tử www.sachweb.vn. Cùng với sự kiện này, Nhà xuất bảntổ chức Tuần lễ sách hay – Tri ân độc giả từ 02/10/2012 đến 09/10/2012 với trên 30 đầu sách hay được xuất bản và hàng ngàn tựa sách được giảm giá đặc biệt, cùng nhiều quà tặng hấp dẫn dành cho độc giả đến với Nhà sách Tổng hợp. Đây là dịp để ôn lại quá trình hình thành và phát triển của Nhà xuất bản Tổng hợp Thành phố Hồ Chí Minh trong 35 năm qua, góp phần khơi dậy niềm tự hào, động viên khích lệ tinh thần và quyết tâm phấn đấu vươn lên của cán bộ - nhân viên Nhà xuất bản, đồng thời tiếp tục phát huy những truyền thống tốt đẹp của đơn vị, phấn đấu hoàn thành tốt nhiệm vụ được giao, xứng đáng là đơn vị xuất bản phục vụ công tác tư tưởng, văn hóa của Thành ủy Thành phố Hồ Chí Minh.\r\n</br>\r\n<img src=\"anhsach/gioithieu8.jpg\">\r\n</br>\r\nCác đồng chí lãnh đạo Thành phố tặng hoa Tác giả và những nhân chứng\r\n</br>\r\n\r\n  “Kỷ niệm 35 năm Thành lập Nhà xuất bản Tổng hợp Thành phố Hồ Chí Minh” như một lời tri ân của Nhà xuất bản gửi tới các cấp lãnh đạo, tác giả, độc giả và đối tác liên kết; đồng thời cũng là dịp gặp gỡ, cám ơn sự cống hiến của các thế hệ lãnh đạo, cán bộ chủ chốt và cán bộ nhân viên của Nhà xuất bản qua các thời kỳ.\r\n</br>\r\nCÁC DANH HIỆU THI ĐUA CỦA NHÀ XUẤT BẢN TỔNG HỢP\r\nTHÀNH PHỐ HỒ CHÍ MINH TRONG 35 NĂM (1977 – 2012)\r\n</br>\r\n1 - CHÍNH QUYỀN\r\n</br>\r\n* Bằng khen của Ủy ban Nhân dân Thành phố Hồ Chí Minh về thành tích hoàn thành xuất sắc nhiệm vụ (liên tục nhiều năm);\r\n</br>\r\n* Bằng khen của Bộ Thông tin và Truyền thông về thành tích hoàn thành\r\nxuất sắc nhiệm vụ xuất bản (liên tục nhiều năm);\r\n</br>\r\n* Cờ Đơn vị xuất sắc , dẫn đầu phong trào thi đua năm 2010của Bộ Thông tin và Truyền thông;\r\n</br>\r\n* Cờ Đơn vị xuất sắc , dẫn đầu phong trào thi đua năm 2011 của Bộ Thông tin và Truyền thông;\r\n</br>\r\n* Cờ Đơn vị thi đua xuất sắc năm 2011 của Ủy ban Nhân dân Thành phố Hồ Chí Minh;\r\n</br>\r\n* Được Văn phòng Thành ủy công nhận là đơn vị hoàn thành vượt mức và toàn diện kế hoạch nhiều năm\r\n</br>\r\n* Huân chương Lao động Hạng Hai năm 1977;\r\n</br>\r\n* Huân chương Lao động Hạng Hai năm 2012.\r\n</br>\r\n \r\n\r\n2 - CHI BỘ\r\n</br>\r\n* Đạt danh hiệu Chi bộ trong sạch, vững mạnh (liên tục nhiều năm);\r\n</br>\r\n* Năm 2010: Chi bộ trong sạch, vững mạnh tiêu biểu.\r\n</br>\r\n3 - CÔNG ĐOÀN\r\n</br>\r\n    Đạt danh hiệu Công đoàn vững mạnh, xuất sắc (liên tục nhiều năm).\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `ho_ten` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `sodt` int(20) NOT NULL,
  `noi_dung` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `ho_ten`, `email`, `sodt`, `noi_dung`) VALUES
(19, 'Trần bá quảng', 'hoaz15101991@gmail.com', 123456789, 'abc\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quydinhsudung`
--

CREATE TABLE `quydinhsudung` (
  `id_quydinh` int(50) NOT NULL,
  `tieude` varchar(50) NOT NULL,
  `noidung` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `quydinhsudung`
--

INSERT INTO `quydinhsudung` (`id_quydinh`, `tieude`, `noidung`) VALUES
(1, '', '- Khi đăng ký tài khoản, quý độc giả nên cung cấp đầy đủ thông tin về tên tuổi, địa chỉ, email,... - Đây là những thông tin bắt buộc, quý độc giả phải điền đầy đủ thông tin để chúng tôi căn cứ theo đó mà phục vụ quý độc giảmột cách tốt nhất. - Những trường hợp điền thiếu thông tin hoặc thông tin sai'),
(2, '', '- Độc giả có trách nhiệm phải tự mình bảo quản mật khẩu, nếu mật khẩu bị lộ ra ngoài dưới bất kỳ hình thức nào, G_BOOK sẽ không chịu trách nhiệm về mọi tổn thất phát sinh.'),
(3, '', '- Tuyệt đối không sử dụng bất kỳ chương trình, công cụ hay hình thức nào khác để can thiệp vào hệ thống hay làm thay đổi cấu trúc dữ liệu.'),
(4, '', ' - Nghiêm cấm việc phát tán, truyền bá hay cổ vũ cho bất kỳ hoạt động nào nhằm can thiệp, phá hoại hay xâm nhập vào dữ liệu của nhà xuất bản cũng như hệ thống máy chủ của website gbook.vn (hack, cheat...). - Khi phát hiện ra lỗi của hệ thống, quý độc giả hãy thông báo cho đội ngũ quản trị Nhà xuất b'),
(5, '', ' - Khi giao tiếp, nhận xét và đánh giá bất kỳ sản phẩm hoặc nhận xét của người khác, quý độc giả không được quấy rối, chửi bới, làm phiền hay có bất kỳ hành vi thiếu văn hoá nào đối với người khác. - Tuyệt đối nghiêm cấm việc xúc phạm, nhạo báng người khác dưới bất kỳ hình thức nào (nhạo báng, chê b'),
(6, '', '- Tuyệt đối nghiêm cấm mọi hành vi tuyên truyền, chống phá và xuyên tạc chính quyền. - Tuyệt đối không bàn luận về Chính trị.'),
(7, '', '- Mọi thông tin cá nhân của quý độc giả sẽ được chúng tôi bảo mật, không tiết lộ ra ngoài. Chúng tôi không bán hay trao đổi những thông tin này với bất kỳ một bên thứ ba nào khác. - Như trên đã nói, mọi thông tin đăng ký của thành viên sẽ được bảo mật nhưng trong trường hợp cơ quan pháp luật yêu cầu'),
(8, '', '-Nghiêm cấm quảng bá bất kỳ sản phẩm nào khác trên trang gbook.vn mà không có sự đồng ý bằng văn bản của GBOOK.GBOOK có thể thay đổi, bổ sung hoặc sửa chữa thỏa thuận này bất cứ lúc  nào và sẽ công bố rõ trên Website.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(300) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(100) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(4, 'Thiết kế mạng Intranet', '006', '180000', 6, '1637134401_mang1.jpg', 'Thiết kế mạng Intranet (Tác giả: Phạm Huy Hoàng)\r\n\r\nCuốn sách này được biên soạn làm tài liệu học tập và tham khảo cho sinh viên các chuyên ngành về Mạng máy tính và Truyền thông. Nội dung cuốn sách đ?', 'Thiết kế mạng Intranet (Tác giả: Phạm Huy Hoàng)\r\n\r\nCuốn sách này được biên soạn làm tài liệu học tập và tham khảo cho sinh viên các chuyên ngành về Mạng máy tính và Truyền thông. Nội dung cuốn sách đề cập đến các vấn đề lý thuyết cơ bản của mạng máy tính và các công nghệ mạng tiến tiến hiện nay như IPv6, Mobility,... Với mục tiêu là giáo trình môn học, sau mỗi chương lý thuyết, các bài thực hành được trình bày ở mức độ đủ chi tiết để sinh viên có thể tự triển khai thực hiện. Xen kẽ trong các bài thực hành, các vấn đề lý thuyết cũng được phân tích và đối chiếu, giúp sinh viên hiểu rõ hơn các khái niệm trừu tượng và phức tạp.\r\n\r\nCuốn sách gồm 7 chương, với các khối kiến thức chuyên môn từ đơn giản đến phức tạp.\r\n\r\nChương 1: Internet & kết nối liên mạng với giao thức IP. Chương này trình bày kỹ thuật kết nối nhiều mạng máy tính thành một mạng máy tính lớn như Internet và các kỹ thuật, giải thuật liên quan như định danh bằng địa chỉ, tìm đường (routing), quản lý lỗi đường truyền.\r\n\r\nChương 2: Kết nối tầng giao vận và tầng Ứng dụng. Chương này mô tả chức năng của tầng giao vận, các kỹ thuật xử lý trên tầng giao vận và cách thức tầng ứng dụng được xây dựng dựa trên tầng giao vận.\r\n\r\nChương 3: Quản trị Intranet & Kết nối Internet. Chương này mô tả cách thức quản trị bên trong một mạng Intranet nội bộ và kết nối mạng nội bộ ra bên ngoại mạng Internet công cộng.\r\n\r\nChương 4: Các dịch vụ TCP/IP cơ bản. Chương này mô tả phương pháp thiết kế, xây dựng và vận hành các dịch vụ cơ bản trên TCP/IP như DNS, Mail, Web,...\r\n\r\nChương 5: Đảm bảo an ninh mạng nội bộ Intranet. Sau khi kết nối mạng nội bộ Intranet vào mạng công cộng Internet, bài toán đảm bảo an toàn cho các dịch vụ và người dùng chống lại các cuộc tấn công từ mạng Internet được đặt ra. Chương này trình bày các phương pháp bảo vệ mạng nội bộ Intranet bằng công cụ tường lửa (firewall) và hệ thống phát hiện xâm nhập (IDS).\r\n\r\nChương 6: Bảo mật và các giải pháp bảo mật mạng IP. Chương này trình bày các vấn đề liên quan đến bảo mật dữ liệu trên mạng và các giải pháp bảo mật đường truyền.\r\n\r\nChương 7: IPv6. Chương này trình bày các khía cạnh lý thuyết mới trong IP phiên bản 6 so với phiên bản 4 và các phương pháp thiết kế hệ thống với IPv6.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1, 6),
(5, 'Giáo Trình Mạng Và Truyền Dữ Liệu', '007', '99000', 8, '1637406816_mang2.jpg', 'Giáo Trình Mạng Và Truyền Dữ Liệu\r\n\r\nCông nghệ thông tin trên thế giới và ở Việt Nam những năm gần đây đã phát triển như vũ bão với hệ thống mạng máy tính được hình thành và phát triển ở khắp', 'Giáo Trình Mạng Và Truyền Dữ Liệu\r\n\r\nCông nghệ thông tin trên thế giới và ở Việt Nam những năm gần đây đã phát triển như vũ bão với hệ thống mạng máy tính được hình thành và phát triển ở khắp nơi từ trung ương đến địa phương, các trường học, viện nghiên cứu, các công ty kinh doanh, các xí nghiệp,... Sự phát triển mạnh mẽ này cũng chính là do những dịch vụ mà mạng máy tính mang lại, mạng máy tính không còn là một thuật ngữ khoa học thuần túy mà trở thành một đối tượng nghiên cứu và ứng dụng không chỉ ở mức người sử dụng mà ở mức sâu hơn làm chủ hệ thống và công nghệ, nhất là những công nghệ mới phát triển trong một vài năm gần đây.\r\n\r\nNội dung cuốn sách gồm 8 chương:\r\n\r\nChương 1. Khái niệm cơ bản về mạng máy tính.\r\nChương 2. Kiến trúc mạng và mô hình kết nối các hệ thống mở OSI\r\nChương 3. Công nghệ mạng cục bộ - LAN\r\nChương 4. Mạng Internet và công nghệ TCP?IP\r\nChương 5. Kết nối liên mạng với TCP/IP\r\nChương 6. Công nghệ mạng không dây và hệ thống thông tin di động.\r\nChương 7. Các công nghệ phát triển ứng dụng phân tán\r\nChương 8. Quản lý mạng và vấn đề an ninh mạng.\r\nMạng và truyền dữ liệu là môn học bắt buộc trong chương trình đào tạo cho học viên cao học, sinh viên chuyên ngành Công nghệ thông tin, Điện tử viễn thông. Vì vậy, cuốn sách sẽ là tài liệu tham khảo thật sự hữu ích cho các học viên, kỹ sư, kỹ thuật viên nghiên cứu và làm việc trong lĩnh vực công nghệ thông tin.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....\r\n\r\n', 1, 6),
(6, 'Không Gian Mạng', '008', '99000', 9, '1637406806_mang3.jpg', 'Không Gian Mạng\r\n\r\nKhông gian mạng là “lõi” của thế giới kết nối. Thế giới kết nối làm cho con người gần nhau hơn, hưởng lợi và chấp nhận thách thức nhiều hơn. Tận dụng tốt mọi cơ hội, thế ', 'Không Gian Mạng\r\n\r\nKhông gian mạng là “lõi” của thế giới kết nối. Thế giới kết nối làm cho con người gần nhau hơn, hưởng lợi và chấp nhận thách thức nhiều hơn. Tận dụng tốt mọi cơ hội, thế giới kết nối sẽ mang lại sự phát triển vượt bậc về kinh tế, xã hội cũng như nền hòa bình trên phạm vi toàn cầu; ngược lại nếu không giải quyết tốt các thách thức sẽ dẫn đến các hiểm họa khó lường\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1, 6),
(7, 'Nhập Môn Mạng Máy Tính', '009', '100000', 12, '1637665746_mang.jpg', 'Nhập Môn Mạng Máy Tính\r\n\r\nNhập Môn Mạng Máy Tính cung cấp những hướng dẫn dành cho các bạn để kết nối các máy tính với nhau, đầy ắp những lời khuyên mang tính thực tiễn, là kim chỉ nam giúp bạn h', 'Nhập Môn Mạng Máy Tính\r\n\r\nNhập Môn Mạng Máy Tính cung cấp những hướng dẫn dành cho các bạn để kết nối các máy tính với nhau, đầy ắp những lời khuyên mang tính thực tiễn, là kim chỉ nam giúp bạn hoàn thành công việc.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1, 6),
(8, 'Hacker Lược Sử', '010', '210000', 6, '1637407201_mang4.jpg', 'Cuốn sách nói về những nhân vật, cỗ máy, sự kiện định hình cho văn hóa và đạo đức hacker từ những hacker đời đầu ở đại học MIT.\r\n\r\nCâu chuyện hấp dẫn bắt đầu từ các phòng thí nghiệm nghiê', 'Tập hợp tài liệu cập nhật từ các tin tặc nổi tiếng như Bill Gates, Mark Zuckerberg, Richard Stallman…\r\n\r\nNhững sự thật về cuộc sống và con đường trở thành “tin tặc” của những con người đã thay đổi lịch sử phát triển của ngành Công nghệ.\r\n\r\nCuốn  sách của Steven Levy ghi lại những chiến công của các tin tặc thời kỳ đầu trong cuộc cách mạng máy tính - những kẻ mê máy tính thông minh và lập dị từ cuối những năm 1950 đến đầu thập niên 1980, dám mạo hiểm, bẻ cong quy tắc và đẩy thế giới vào một hướng đi hoàn toàn mới.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1, 6),
(9, 'Gián Điệp Mạng', '011', '230000', 15, '1637407260_mang5.jpg', 'Cuốn sách là câu chuyện người thực việc thực (tác giả cũng là nhân vật chính) kể về cuộc săn đuổi hacker bất đắc dĩ của một nhà khoa học chuyển tay ngang trở thành nhà quản lý hệ thống mạng m?', 'Cuốn sách là câu chuyện người thực việc thực (tác giả cũng là nhân vật chính) kể về cuộc săn đuổi hacker bất đắc dĩ của một nhà khoa học chuyển tay ngang trở thành nhà quản lý hệ thống mạng máy tính ở Phòng Thí nghiệm  Lawrence Berkeley, California, Mỹ.\r\n\r\nTừ một mức chênh lệch 75 xu trong hệ thống kế toán của phòng thí nghiệm, Cliff Stoll nghi ngờ có người đang sử dụng trái phép hệ thống của mình. Với quyết tâm tìm cho ra sự thật, Stoll bắt tay vào chuyến phiêu lưu một mình cùng gã hacker bí ẩn. Với những công cụ theo dõi thô sơ tự chế do không nhận được sự hỗ trợ của bất cứ ai – dẫu đã năm lần bảy lượt gõ cửa FBI, CIA và vô số các cơ quan an ninh, quân sự khác, Stoll đã rong ruổi theo gã hacker qua những mạng lưới quân sự nhạy cảm, các căn cứ quân sự, vệ tinh xuyên Đại Tây Dương, Nhật, và Đức. Cuối cùng, cũng bằng một chiến lược tự chế, anh đã bắt được một hacker quốc tế với động cơ là tiền, cocaine, và những âm mưu tình báo.\r\n\r\nCâu chuyện ly kỳ đến phút chót này đã trở thành nguồn cảm hứng cho nhiều chương trình truyền hình sau này ở Mỹ, và Stoll còn được nhận bằng khen của CIA, đồng thời trở thành một chuyên gia – có phần bất đắc dĩ – được nhiều người tìm kiếm để xin tư vấn về an ninh mạng.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1, 6),
(10, 'Bóng ma trên mạng', '012', '156000', 14, '1634904673_mang6.jpg', 'Vào thời kỳ mà các thành viên của Anonymous – nhóm hacker đình đám nhất thế giới ngày nay – còn chưa xuất hiện, Kevin Mitnick đã trở thành nỗi kinh hoàng của không biết bao nhiêu điều tra viên FBI, các c', 'Vào thời kỳ mà các thành viên của Anonymous – nhóm hacker đình đám nhất thế giới ngày nay – còn chưa xuất hiện, Kevin Mitnick đã trở thành nỗi kinh hoàng của không biết bao nhiêu điều tra viên FBI, các cơ quan chính phủ, các công ty cung cấp dịch vụ mạng và điện thoại. Với tài năng phi thường và niềm đam mê công nghệ khó ai sánh bằng, chỉ bằng các đòn tấn công bằng kỹ thuật xã hội (mạo danh, nghe lén, lục thùng rác,…), Mitnick đã thuyết phục được các nhân viên tại những công ty và cơ quan này giao nộp những thông tin cơ mật và vượt qua được nhiều lớp bảo mật để tiếp cận những dữ liệu mà ít người được biết. Có lẽ trên đời này sẽ chẳng có hacker nào dám cả gan nghe lén cả FBI, cơ quan điều tra sừng sỏ nhất thế giới, như Kevin Mitnick.\r\n\r\nCao trào của cuốn sách là khi Mitnick bắt đầu chuyến phiêu lưu chạy trốn khỏi FBI trong suốt ba năm. Ông đã tạo ra các danh tính giả, tìm việc tại nhiều thành phố mà vẫn kiểm soát được những kẻ đang truy đuổi mình. Dù phải lẩn trốn liên tục, rời xa gia đình và bạn bè nhưng Mitnick chưa khi nào từ bỏ niềm đam mê hacking của mình cho tới tận lúc bị bắt và phải chấp nhận kết cục lãnh án biệt giam, cách ly với mọi loại máy tính.\r\n\r\nGiờ đây, khi đã hoàn lương và ngẩng cao đầu trên đường đời, tác giả của cuốn sách Bóng ma trên mạng lại trải lòng với đám “hậu sinh” về quá khứ oai hùng nhưng cũng không kém phần ấn tượng của mình, những gì ông rút ra trong thời gian bị xộ khám và cũng để đính chính những tin đồn sai lệch xoay quanh Huyền thoại về Kevin Mitnick.\r\n\r\nVới cách viết hài hước, dí dỏm, nhưng không kém phần lôi cuốn, Bóng ma trên mạng có thể coi là một bộ phim hành động hoàn hảo, một góc nhìn chân thật về cuộc đời của một trong những tội phạm mạng cấp cao đầu tiên trên toàn cầu, người được mệnh danh là “hacker bị truy nã gắt gao nhất thế giới giới”.', 1, 6),
(11, 'Nghệ thuật ẩn mình', '013', '168000', 9, '1634904786_mang7.jpg', 'Trong cuốn sách này, Kevin Mitnick, hacker nổi tiếng nhất thế giới, sẽ hướng dẫn các biện pháp dễ thực hiện (và ít tốn kém) giúp bạn – trên cương vị một cá nhân bình thường và một người tiêu dù', 'Trong cuốn sách này, Kevin Mitnick, hacker nổi tiếng nhất thế giới, sẽ hướng dẫn các biện pháp dễ thực hiện (và ít tốn kém) giúp bạn – trên cương vị một cá nhân bình thường và một người tiêu dùng – có thể giấu các thông tin nhận dạng cá nhân của mình trong kỷ nguyên của Dữ liệu Lớn, vốn không thiếu những scandal quy mô quốc tế về những vụ vi phạm dữ liệu người dùng thường xuyên xuất hiện trên các mặt báo. Mitnick bàn đến nhiều phương tiện mà chúng ta sử dụng hằng ngày – từ điện thoại, email, cho đến tin nhắn,… – chỉ ra những lỗ hổng mà người khác có thể lợi dụng để giành quyền kiểm soát các dữ liệu của chúng ta, đồng thời đưa ra những giải pháp phòng chống cụ thể và hữu hiệu mà bất kỳ ai cũng có thể thực hiện để tự bảo vệ mình.\r\n\r\nNhưng có lẽ một trong những giá trị quan trọng nhất của cuốn sách là qua đó, tác giả đã giải ảo niềm tin thơ ngây của đại đa số chúng ta rằng những hoạt động của mình trên mạng là đàng hoàng và lành mạnh nên có thể công khai, rằng chỉ những người có ý đồ xấu mới phải tìm cách che giấu các dữ liệu cá nhân. Hay nói như Mikko Hypponen, nhà nghiên cứu trưởng của hãng bảo mật F-Secure, thì: “Có thể bạn không có gì phải giấu diếm. Nhưng bạn có rất nhiều thứ phải bảo vệ đấy.”', 1, 6),
(12, 'Khoa Học Khám Phá - Dữ Liệu Lớn', '014', '210000', 13, '1637302466_mang8.jpg', 'Màu sơn nào có thể cho bạn biết một chiếc xe đã qua sử dụng vẫn còn trong tình trạng tốt? Làm thế nào các công chức ở thành phố New York có thể xác định các hố ga nguy hiểm nhất trước khi chúng ph', 'Khoa Học Khám Phá - Dữ Liệu Lớn\r\n\r\nMàu sơn nào có thể cho bạn biết một chiếc xe đã qua sử dụng vẫn còn trong tình trạng tốt? Làm thế nào các công chức ở thành phố New York có thể xác định các hố ga nguy hiểm nhất trước khi chúng phát nổ? Và làm thế nào những cuộc tìm kiếm của Google dự đoán được sự lây lan của dịch cúm H1N1?Chìa khóa để trả lời những câu hỏi này, và nhiều câu hỏi khác, là dữ liệu lớn. \"Dữ liệu lớn\" đề cập đến khả năng đang phát triển của chúng ta để nắm giữ các bộ sưu tập lớn thông tin, phân tích, và rút ra những kết luận đôi khi sâu sắc đáng ngạc nhiên.\r\n\r\nLĩnh vực khoa học đang nổi lên này có thể chuyển vô số hiện tượng - từ giá vé máy bay đến các văn bản của hàng triệu cuốn sách - thành dạng có thể tìm kiếm được, và sử dụng sức mạnh tính toán ngày càng tăng của chúng ta để khám phá những điều chúng ta chưa bao giờ có thể nhìn thấy trước. Trong một cuộc cách mạng ngang tầm với Internet hoặc thậm chí in ấn, dữ liệu lớn sẽ thay đổi cách chúng ta nghĩ về kinh doanh, y tế, chính trị, giáo dục, và sự đổi mới trong những năm tới. Nó cũng đặt ra những mối đe dọa mới, từ sự kết thúc không thể tránh khỏi của sự riêng tư cho đến khả năng bị trừng phạt vì những thứ chúng ta thậm chí còn chưa làm, dựa trên khả năng của dữ liệu lớn có thể dự đoán được hành vi tương lai của chúng ta.Trong tác phẩm thông tuệ tuyệt vời và gây nhiều ngạc nhiên này, hai chuyên gia hàng đầu giải thích dữ liệu lớn là những gì, nó sẽ làm thay đổi cuộc sống của chúng ta như thế nào, và những gì chúng ta có thể làm để bảo vệ chính mình khỏi các mối nguy hiểm của nó. Dữ liệu lớn là cuốn sách lớn đầu tiên về điều to lớn sắp diễn ra.”Bạn đọc có thể quét các QR Code bên trong sách và trên bìa sách để xem các đoạn phim minh họa.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1, 6),
(13, 'Python cơ bản', '015', '125000', 12, '1637407078_cntt1.jpg', 'Hiện nay ngôn ngữ lập trình bậc cao Python đang nổi lên như một ngôn ngữ lập trình được sử dụng NHIỀU NHẤT trên thế giới. Điều này được giải thích bằng các lý do sau:\r\n\r\nPython là ngôn ngữ lập t', 'Hiện nay ngôn ngữ lập trình bậc cao Python đang nổi lên như một ngôn ngữ lập trình được sử dụng NHIỀU NHẤT trên thế giới. Điều này được giải thích bằng các lý do sau:\r\n\r\nPython là ngôn ngữ lập trình bậc cao khá đơn giản, dễ học, dễ viết.\r\n\r\nCách viết lệnh của Python khá đặc biệt, sử dụng các dấu cách (viết thụt vào) để mô tả các nhóm (block) lệnh. Đặc điểm này làm cho việc viết lệnh Python gần giống với cách viết, trình bày văn bản hàng ngày. Chính đặc điểm này làm cho ngôn ngữ lập trình Python rất dễ viết, trong sáng, ngày càng phát triển và được đưa vào môi trường giáo dục thay cho các ngôn ngữ truyền thống như Pascal, C hay Java.\r\n\r\nPython là ngôn ngữ mã nguồn mở và cho phép cộng đồng có thể đóng góp bằng cách bổ sung các module, các kho hàm số, thư viện thuật toán. Điều này làm cho Python phát triển BÙNG NỔ trong giới khoa học và giáo dục đại học. Đặc biệt trong một số ngành mũi nhọn của CNTT như IoT, trí tuệ nhân tạo (AI), dữ liệu lớn (big data) và CMCN 4.0, các phát triển rất nhanh thời gian gần đây của công nghệ đều gắn liền với Python.', 1, 5),
(14, 'Lời giải bài tập Python cơ bản', '016', '85000', 25, '1637407355_cntt2.jpg', 'Cuốn sách Lời giải bài tập Python cơ bản của Thầy Bùi Việt Hà hiện đã có mặt tại Tủ sách CS4S.\r\n\r\nCuốn sách này bao gồm lời giải, đáp số, chương trình, hướng dẫn chi tiết  cho tất cả 354  bài t', 'Cuốn sách Lời giải bài tập Python cơ bản của Thầy Bùi Việt Hà hiện đã có mặt tại Tủ sách CS4S.\r\n\r\nCuốn sách này bao gồm lời giải, đáp số, chương trình, hướng dẫn chi tiết  cho tất cả 354  bài tập của cuốn PYTHON_CƠ_BẢN đã được phát hành lần trước.\r\n\r\n- Bài tập của các chương sẽ được đánh số theo chương và số thứ tự bài.\r\n\r\n- Chương trình chi tiết giải một bài tập cụ thể sẽ luôn ghi rõ tên bài được giải ngay tại dòng đầu tiên của chương trình.\r\n\r\n- Trong sách chúng ta có thể phân biệt rõ ràng khuôn dạng thể hiện văn bản khác nhau giữa đề bài.\r\n\r\nPython là ngôn ngữ lập trình bậc cao khá dễ học, rất phù hợp để  học và dạy trong nhà trường phổ thông, vì thế Python sẽ đóng vai trò rất lớn trong môn Tin học, thời gian tới Python dự kiến sẽ được đưa vào Chương trình tin học lớp 10 trong Chương trình môn Tin học mới.\r\n\r\nPython là ngôn ngữ lập trình hiện được sử dụng nhiều nhất trong nghiên cứu và ứng dụng công nghệ mới hiện nay như Trí tuệ nhân tạo AI, In ternet vạn vật IoT, tính toán với số lớn (Big Data).\r\n\r\nHi vọng Bộ sách về Python cơ bản bao gồm lý thuyết, bài tập và lời giải sẽ có ích cho các Thầy cô giáo và học sinh trong việc tiếp cận nhanh đến ngôn ngữ lập trình hay và bổ ích này.', 1, 5),
(15, 'Giáo Trình Kỹ Thuật Lập Trình C Căn Bản', '017', '99000', 15, '1637421154_cntt3.jpg', 'Giáo trình kỹ thuật lập trình C căn bản và nâng cao được hình thành qua nhiều năm giảng dạy của các tác giả. Ngôn ngữ lập trình C là một môn học cơ sở trong chương trình đào tạo kỹ sư, cử nhân t', 'Giáo trình kỹ thuật lập trình C căn bản và nâng cao được hình thành qua nhiều năm giảng dạy của các tác giả. Ngôn ngữ lập trình C là một môn học cơ sở trong chương trình đào tạo kỹ sư, cử nhân tin học của nhiều trường đại học. Ở đây sinh viên được trang bị những kiến thức cơ bản nhất về lập trình, các kỹ thuật  tổ chức dữ liệu và lập trình căn bản với ngôn ngữ C.\r\n\r\nĐể đáp ứng nhu cầu học tập ngôn ngữ lập trình C của sinh viên cũng như nhu cầu về tài liệu cho mọi người trong nhiều ngành khoa học và kỹ thuật cần nghiên cứu C để giải quyết các bài toán của mình, tác giả biên soạn cuốn sách này. Nội dung cuốn sách là tập hợp một cách có chọn lọc các bài giảng của các tác giả.', 1, 5),
(16, 'Lập trình hướng đối tượng JAVA', '018', '210000', 12, '1637407578_cntt4.jpg', 'I. Đôi điều về tác giả\r\n\r\nTôi là NEOS.THÀNH (Nguyễn Văn Thành) – Một lập trình viên Java-Android, tác giả cuốn sách “Lập trình hướng đối tượng Java Core”, CEO của công ty TNHH MTV DV Giáo Dục Thành Ngu', 'I. Đôi điều về tác giả\r\n\r\nTôi là NEOS.THÀNH (Nguyễn Văn Thành) – Một lập trình viên Java-Android, tác giả cuốn sách “Lập trình hướng đối tượng Java Core”, CEO của công ty TNHH MTV DV Giáo Dục Thành Nguyên, đồng thời là mentor tại trường ĐH trực tuyến FUNiX, giảng viên giảng dạy tại cao đẳng nghề PolyTechnic,  công ty phần mềm Luvina và công ty phần mềm FPT.\r\n\r\nII. Quyển sách này nói về điều gì?\r\n\r\nJAVA là ngôn ngữ lập trình rất phổ biến nhất hiện nay, học #JAVA_CORE bạn sẽ có rất nhiều hướng đi, từ lập trình Mobile app, Java web, Desktop App, Game, và tất cả đều sử dụng nền tảng của JAVA CORE.\r\nQuyển sách này gồm 22 bài học từ Tư duy LTHĐT(Đa hình, kế thừ) đến các đối tượng #JavaCore (String, Array, File), lập trình giao diện Swing.\r\nQuyển sách này sẽ giúp bạn:\r\n\r\nĐi vào thế giới lập trình hết sức tự nhiên, thân thiện và dễ hiểu - LẬP TRÌNH HƯỚNG ĐỐI TƯỢNG LÀ TƯ DUY GẮN LIỀN VỚI CUỘC SỐNG HẰNG NGÀY\r\nNắm vững được thế nào là tư duy lập trình hướng đối tượng và cách phân tích một bài toán lập trình\r\nHiểu được các khái niệm lập trình Java cơ bản.\r\nThực hành xây dựng được các giao diện phần mềm desktop bằng ngôn ngữ JAVA\r\nSau khi có được nền tảng kiến thức lập trình JAVA core bạn có thể tự học các ngôn ngữ lập trình hướng đối tượng khác như C++/C, Python,\r\n', 1, 5),
(17, 'Giáo Trình Ngôn Ngữ Lập Trình C++', '018', '99000', 9, '1637407650_cntt5.jpg', 'Giáo trình Ngôn ngữ lập trình C++ được biên soạn nhằm mục đích phục vụ cho sinh viên các ngành kỹ thuật đồng thời là cuốn giáo trình tham khảo cho các giảng viên trong lĩnh vực Công nghệ thông tin. M?', 'Giáo trình Ngôn ngữ lập trình C++ được biên soạn nhằm mục đích phục vụ cho sinh viên các ngành kỹ thuật đồng thời là cuốn giáo trình tham khảo cho các giảng viên trong lĩnh vực Công nghệ thông tin. Mục đích của giáo trình này cung cấp đầy đủ các kiến thức về lập chương trình trên máy tính bằng ngôn ngữ C++, sau khi tìm hiểu xon giáo trình này độc giả có thể học tiếp các môn học về lập trình chuyên sâu trong các lĩnh vực chuyên ngành như Vi xử lý - Vi điều khiển, Lập trình Java, ASP, Lập trình phần mềm các thiết bị di động , \r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1, 5),
(18, ' 100 ý tưởng thay đổi Thiết kế đồ họa', '020', '180000', 9, '1637421287_tkdh1.jpg', 'Cuốn sách xác định, nói rõ, luận bàn và minh họa những ý tưởng lớn đã tạo ra động lực sản sinh nghệ thuật và kĩ thuật thiết kế đồ họa đương đại như sách, bích chương vật thể, bộ chữ cá', 'Cuốn sách xác định, nói rõ, luận bàn và minh họa những ý tưởng lớn đã tạo ra động lực sản sinh nghệ thuật và kĩ thuật thiết kế đồ họa đương đại như sách, bích chương vật thể, bộ chữ cái độc dạng, nhãn tên... Một số ý tưởng lớn bắt nguồn từ nhiều thế kỉ trước; nhiều ý tưởng khác lại nảy sinh ngay trong giai đoạn từ đầu đến giữa thế kỉ XX; và nhiều ý tưởng khác nữa được thai nghén vào cuối thế kỉ XX và đầu XXI. Đó là những ý đồ, quan điểm, sáng kiến và nguồn cảm hứng – về hình thức, tính thực tế, và khái niệm – mà các nhà thiết kế đồ họa đã vận dụng để nâng cao mọi loại hình truyền thông thị giác. Qua tổng hợp và ứng dụng liên tục, các ý tưởng này đã trở thành (những) ngôn ngữ gắn liền với thiết kế. Chúng tạo thành những cấu trúc kĩ thuật, triết lí, hình thức và mĩ học của ngành thiết kế đồ họa.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1, 12),
(19, 'Thiết Kế Cho Người Mới Bắt Đầu', '021', '20000', 6, '1637421369_tkdh2.jpg', 'Thiết Kế Cho Người Mới Bắt Đầu\r\n\r\nNếu như bạn đã từng ao ước, được biết về thiết kế, được hiểu về thiết kế, được thử nghiệm và chiêm nghiệm về thiết kế, thì đây chính là cuốn sách', 'Thiết Kế Cho Người Mới Bắt Đầu\r\n\r\nNếu như bạn đã từng ao ước, được biết về thiết kế, được hiểu về thiết kế, được thử nghiệm và chiêm nghiệm về thiết kế, thì đây chính là cuốn sách phù hợp cho bạn.\r\n\r\nĐã bao giờ bạn cảm thấy khó chịu trong việc tìm kiếm ý tưởng thiết kế?\r\n\r\nĐã bao giờ bạn thấy khó chịu với một số tài liệu nhìn không được đẹp?\r\n\r\nĐã bao giờ bạn muốn sửa một thứ gì đó do bạn tạo ra, để chúng đẹp hơn?\r\n\r\nĐã bao giờ bạn thấy màu sắc, bố cục, font chữ của tác phẩm bạn làm ra, nhìn chưa ổn?\r\n\r\nCuốn sách này sẽ giúp bạn cải thiện những điều trên!\r\n\r\nSẽ không có quá nhiều những kiến thức liên quan đến lịch sử thiết kế, cuốn sách này sẽ chỉ tập trung vào việc giúp bạn nắm bắt và ứng dụng những nền tảng quan trong nhất trong thiết kế đồ họa.', 1, 12),
(20, 'Graphics 01 - Connect The Dots', '022', '99000', 15, '1637421429_tkdh3.jpg', 'Graphics 01 - Connect The Dots\r\n\r\nKhi đang cầm cuốn tạp chí này trên tay, chắc hẳn bạn đã có những hình dung về khái niệm “graphic design” (thiết kế đồ hoạ) của riêng mình. Những hình dung đó có thể tồ', 'Graphics 01 - Connect The Dots\r\n\r\nKhi đang cầm cuốn tạp chí này trên tay, chắc hẳn bạn đã có những hình dung về khái niệm “graphic design” (thiết kế đồ hoạ) của riêng mình. Những hình dung đó có thể tồn tại dưới dạng những trang lý thuyết, những kiến thức chuyên sâu về bộ môn này mà bạn đã tích luỹ trong quá trình học tập và làm việc. Hoặc đơn giản hơn, chúng tồn tại trong cách bạn cảm nhận về vẻ đẹp của một tấm poster, bìa một cuốn sách, một tấm áp phích vô tình bắt gặp trên đường. Bởi lẽ, thiết kế đồ hoạ nằm ở khắp nơi xung quanh bạn. Dù bạn là ai, dù bạn đang tìm kiếm những nguồn cảm hứng, những ý tưởng mới cho tác phẩm của mình, hay đơn giản chỉ là yêu thích và muốn tìm hiểu về lĩnh vực sáng tạo này, tạp chí Graphics hứa hẹn sẽ là người bạn đồng hành thú vị và bổ ích của bạn trên hành trình đó.\r\n\r\nKhi thực hiện cuốn sách này, đội ngũ biên soạn của KEE Agency luôn tâm niệm: “Design for everyone - Design in everyone.” (Thiết kế dành cho mọi người - Thiết kế ở trong mỗi người). Từ khi sinh ra, con người đã luôn hướng tới cái đẹp. Nhu cầu hưởng thụ và tạo ra cái đẹp tồn tại ở tất cả các mặt trong đời sống. Thiết kế đồ họa vì vậy đã ra đời như một trong những câu trả lời cho nhu cầu đó. Ngày nay, thiết kế đồ họa đã trở thành một ngành dịch vụ quan trọng, có nhiều ảnh hưởng đến các lĩnh vực khác.', 1, 12),
(21, ' Draw The Lines', '023', '20000', 8, '1637422009_tkdh4.jpg', 'Graphics 02 - Draw The Lines \r\n\r\nSố thứ hai của Graphics xoay quanh thành phần thiết kế cơ bản thứ hai: Line (đường). Những bài viết chuyên đề sẽ cung cấp cho bạn những khái niệm về Đường và chúng được', 'Graphics 02 - Draw The Lines \r\n\r\nSố thứ hai của Graphics xoay quanh thành phần thiết kế cơ bản thứ hai: Line (đường). Những bài viết chuyên đề sẽ cung cấp cho bạn những khái niệm về Đường và chúng được sử dụng trong những bản thiết kế ra sao. Bên cạnh đó, chuyên mục Graphic - Illustration sẽ phân tích những xu hướng thiết kế nổi bật trong những năm vừa qua như Gradient và Line Art. Chuyên mục Branding - Packaging là tập hợp một số case study về các thương hiệu ứng dụng Line vào nhận diện và bao bì trên thực tế. Ngoài ra, nếu bạn quan tâm tới nhiếp ảnh hoặc muốn tìm kiếm những ý tưởng mới, chuyên mục Art & Inspiration sẽ giới thiệu loạt bài viết và trưng bày những tác phẩm nghệ thuật truyền cảm hứng dành cho bạn.\r\n\r\nCuối cùng, thiết kế không phải môn khoa học “1 + 1 = 2”. Không có khái niệm, lý thuyết nào trong thiết kế là tuyệt đối. Ban biên soạn tạp chí Graphics luôn hy vọng sẽ nhận được sự phản hồi, đóng góp của bạn qua địa chỉ graphics@colorme.vn để ngày càng cho ra các sản phẩm hoàn thiện hơn nữa. Trân trọng cảm ơn bạn và chúc bạn có một trải nghiệm thật tuyệt vời cùng với GRAPHICS 02 - BETWEEN', 1, 12),
(22, 'The Art of Data Science', '024', '180000', 15, '1637421978_data1.jpg', 'This book describes, simply and in general terms, the process of analyzing data. The authors have extensive experience both managing data analysts and conducting their data analyses', 'This book describes, simply and in general terms, the process of analyzing data. The authors have extensive experience both managing data analysts and conducting their data analyses, and have carefully observed what produces coherent results and what fails to produce useful insights into data. This book is a distillation of their experience in a format that applies to both practitioners and managers in data science.', 1, 11),
(23, 'How to Learn from Data', '0025', '99000', 15, '1637422201_data2.jpg', 'In this \"important and comprehensive\" guide to statistical thinking (New Yorker), discover how data literacy is changing the world and gives you a better understanding of life’s biggest problems. ', 'In this \"important and comprehensive\" guide to statistical thinking (New Yorker), discover how data literacy is changing the world and gives you a better understanding of life’s biggest problems.  \r\n \r\nStatistics are everywhere, as integral to science as they are to business, and in the popular media hundreds of times a day. In this age of big data, a basic grasp of statistical literacy is more important than ever if we want to separate the fact from the fiction, the ostentatious embellishments from the raw evidence -- and even more so if we hope to participate in the future, rather than being simple bystanders.\r\n \r\nIn The Art of Statistics, world-renowned statistician David Spiegelhalter shows readers how to derive knowledge from raw data by focusing on the concepts and connections behind the math. Drawing on real world examples to introduce complex issues, he shows us how statistics can help us determine the luckiest passenger on the Titanic, whether a notorious serial killer could have been caught earlier, and if screening for ovarian cancer is beneficial. The Art of Statistics not only shows us how mathematicians have used statistical science to solve these problems -- it teaches us how we too can think like statisticians. We learn how to clarify our questions, assumptions, and expectations when approaching a problem, and -- perhaps even more importantly -- we learn how to responsibly interpret the answers we receive', 1, 11),
(24, 'Cơ Sở Công Nghệ Phần Mềm', '026', '180000', 6, '1637422390_cn1.jpg', 'Cơ Sở Công Nghệ Phần Mềm\r\nCông nghệ phần mềm hay kỹ nghệ phần mềm (tiếng Anh: software engineering) là sự áp dụng một cách tiếp cận có hệ thống, có kỷ luật, và định lượng', 'Cơ Sở Công Nghệ Phần Mềm\r\nCông nghệ phần mềm hay kỹ nghệ phần mềm (tiếng Anh: software engineering) là sự áp dụng một cách tiếp cận có hệ thống, có kỷ luật, và định lượng được cho việc phát triển, sử dụng và bảo trì phần mềm. Ngành học kỹ nghệ phần mềm bao trùm kiến thức, các công cụ, và các phương pháp cho việc định nghĩa yêu cầu phần mềm, và thực hiện các tác vụ thiết kế, xây dựng, kiểm thử (software testing), và bảo trì phần mềm.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1, 9),
(25, 'Hệ Thống Thông Tin Quản Lý', '030', '200000', 9, '1640192245_tt1.jpg', 'Hệ Thống Thông Tin Quản Lý là cuốn sách đề cập đến vấn đề lý luận cơ bản nhất về một MIS, đồng thời giới thiệu với độc giả hai hệ thống thông tin quản lý hoạch định nguồn lực doanh nghi', 'Hệ Thống Thông Tin Quản Lý là cuốn sách đề cập đến vấn đề lý luận cơ bản nhất về một MIS, đồng thời giới thiệu với độc giả hai hệ thống thông tin quản lý hoạch định nguồn lực doanh nghiệp (FRP) và quản lý quan hệ khách hàng (CRM) đang được các tổ chức và doanh nghiệp Việt nam rất quan tâm hiện nay.\r\n\r\nNội dung cuốn sách gồm 6 chương:\r\n\r\nChương 1: Các khái niệm cơ bản về hệ thống thông tin quản lý (MIS)\r\nChương 2: Các nhân tố quan trọng của hệ thống thông tin quản lý\r\nChương 3: Cơ sở dữ liệu – hạt nhân của hệ thống thông tin quản lý\r\nChương 4: Phương pháp luận về phát triển một hệ thống thông tin quản lý\r\nChương 5: Hệ thống thông tin quản lý hoạch định nguồn lực doanh nghiệp Chương 6: Hệ thống thông tin quản lý quan hệ khách hàng\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1, 10),
(26, 'Điện toán đám mây', '027', '99000', 15, '1637422817_ktm1.jpg', 'Điện toán đám mây -Tác giả: Huỳnh Quyết Thắng (Chủ biên)\r\n\r\nCuốn sách Điện toán đám mây được biên soạn cho đối tượng là học viên cao học các chuyên ngành Công nghệ thông tin. Sinh viên năm cuối c?', 'Điện toán đám mây -Tác giả: Huỳnh Quyết Thắng (Chủ biên)\r\n\r\nCuốn sách Điện toán đám mây được biên soạn cho đối tượng là học viên cao học các chuyên ngành Công nghệ thông tin. Sinh viên năm cuối của các trường đại học kỹ thuật cũng có thể sử dụng giáo trình như một tài liệu tham khảo để phát triển các ứng dụng cho nghiên cứu, cho đồ án tốt nghiệp.\r\n\r\nCác tác giả hy vọng thông qua giáo trình sẽ cung cấp cho người đọc một tiếp cận tổng thể tới các khái niệm cơ bản về điện toán đám mây, các vấn đề về lưu trữ và xử lý dữ liệu, các vấn đề về an toàn và bảo mật, các dịch vụ, kiến trúc dịch vụ, một số chủ đề nâng cao gợi mở các vấn đề nghiên cứu hiện nay trong lĩnh vực điện toán đám mây.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1, 8),
(27, ' Extension of cauchy riemann', '028', '20000', 15, '1640192726_ktm2.jpg', 'Extension of cauchy riemann system in higher dimensions. Tác giả: Đặng Văn Khải\r\n\r\nCuốn sách được viết bằng tiếng Anh, dùng cho sinh viên và học viên cao học chuyên ngành Toán. Nội dung sách trình bày về phương ph', 'Extension of cauchy riemann system in higher dimensions. Tác giả: Đặng Văn Khải\r\n\r\nCuốn sách được viết bằng tiếng Anh, dùng cho sinh viên và học viên cao học chuyên ngành Toán. Nội dung sách trình bày về phương pháp mở rộng hệ thống Cauchy - Riemann trong một số chiều không gian. Phương pháp này, một mặt hợp nhất các phương pháp mở rộng khác nhau cho đến nay của hệ thống C-R thành một lược đồ chung, mặt khác, cũng tạo ra các kết quả tổng quát mới.\r\n\r\nCác kết quả này được trình bày trong 3 chương: Chương 1. Vectơ Holomorphic trong không gian Euclide m chiều. Chương 2. Các hàm Holomorphic lấy giá trị trong đại số Clifford. Chương 3. Một lớp của hệ elliptic bậc nhất (phần mở rộng của phương pháp Vekua).\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1, 8),
(28, 'Internet Vạn Vật', '029', '99000', 15, '1640192715_ktm3.jpg', 'Cuốn sách này trình bày những kiến thức cơ bản về mạng Internet vạn vật bao gồm các công nghệ thành phần và những ứng dụng tiềm năng của IoT. Thông quan cuốn sách này, bạn đọc có thể hiểu và áp ', 'Cuốn sách này trình bày những kiến thức cơ bản về mạng Internet vạn vật bao gồm các công nghệ thành phần và những ứng dụng tiềm năng của IoT. Thông quan cuốn sách này, bạn đọc có thể hiểu và áp dụng những kiến thức về IoT cho các bài toán ứng dụng thực tế\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `id_tintuc` int(11) NOT NULL,
  `tieude` text NOT NULL,
  `noidung` text NOT NULL,
  `tatcanoidung` text NOT NULL,
  `hinhanh` varchar(50) DEFAULT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tin_tuc`
--

INSERT INTO `tin_tuc` (`id_tintuc`, `tieude`, `noidung`, `tatcanoidung`, `hinhanh`, `tinhtrang`) VALUES
(40, '', 'tình yêu giúp họ nên đôi sau bao chướng ngại trùng trùng . tình yêu nâng cánh họ trên bước đường văn chương , thăng hoa và lắng đọng cùng những trang vết\r\n\"Giờ thì tôi hiểu ra, khó khăn còn là một thứ xúc tác để những bông hoa trong khu vườn tình người nở rộ. Thăng trầm, vinh nhục', 'TÌNH YÊU GIÚP HỌ NÊN ĐÔI SAU BAO CHƯỚNG NGẠI TRÙNG TRÙNG. TÌNH YÊU NÂNG CÁNH HỌ TRÊN BƯỚC ĐƯỜNG VĂN CHƯƠNG, THĂNG HOA VÀ LẮNG ĐỌNG CÙNG NHỮNG TRANG VIẾT\r\n\"Giờ thì tôi hiểu ra, khó khăn còn là một thứ xúc tác để những bông hoa trong khu vườn tình người nở rộ. Thăng trầm, vinh nhục… tất cả đều đã trải, đều đã vô thường, thay đổi và chỉ có hằng số Elena là còn ở lại. Nàng luôn ở bên tôi. Lúc nào cũng ở bên tôi. Dù có khi chúng tôi cách xa nhau hơn 10.000 km\"…\r\nĐó là những dòng nhà văn - dịch giả Trương Văn Dân viết về người vợ của mình, nữ nhà văn người Ý Elena Pucillo Trương trong tập truyện ngắn và tùy bút \"Milano Sài Gòn đang về hay sang?\"(NXB Tổng hợp TP HCM, 2018). Ông trân trọng tình yêu lớn lao của bà: \"Là người luôn chấp nhận hy sinh, Elena yêu tôi bằng một tình yêu mãnh liệt. Tình yêu ấy như hai trái tim nằm giữa lằn ranh, vừa hòa vừa nhập, thách thức mọi khác biệt của hai nền văn hóa\"…\r\n\r\nTrong buổi giao lưu tại Đường Sách TP HCM vào sáng 9-11, cùng với tập truyện của Trương Văn Dân, tập \"Vàng trên biển đá đen\" của Elena Pucillo Trương (NXB Tổng hợp TP HCM, 2018) cũng được giới thiệu, giúp người yêu văn chương hiểu thêm về tình yêu lớn lao của đôi vợ chồng Việt - Ý. Tình yêu giúp họ nên đôi sau bao chướng ngại trùng trùng. Tình yêu nâng cánh họ trên bước đường văn chương, thăng hoa và lắng đọng cùng những trang viết.\r\n\r\nNhà văn Trương Văn Dân sinh ra tại Bình Định, du học ngành hóa và công nghệ dược tại Ý, sau đó đã nên duyên vợ chồng cùng TS Elena Pucillo Trương (Đại học Milano - Ý). Hơn 10 năm qua, hai người trở về Việt Nam sinh sống. Hôn nhân của họ càng trở nên bền chặt khi họ có chung tình yêu dành cho văn chương.</br>\r\n<img src=\"anhsach/anhtin1.jpg\">\r\n</br>\r\n\"Vàng trên biển đá đen\" gồm 14 truyện ngắn và 11 tạp bút. Phần lớn những câu chuyện gắn với Việt Nam, từ Tây Bắc (Vàng trên biển đá đen), Hà Nội (Một đêm huyền diệu; Hà Nội, nét đẹp bí ẩn) đến Quảng Ninh (Trên đỉnh núi thiêng), Vũng Tàu (Bình minh vàng trên biển)… Nhà phê bình Cao Thị Hồng nhìn nhận đằng sau mỗi câu chuyện là những thông điệp về cõi người, là tinh thần trân trọng những giá trị nhân văn, nhân bản với khát khao hướng về những gì tốt đẹp nhất cho con người và vì con người… Với \"Con chim nhỏ trong lồng\", tác giả phơi bày tâm lý u uất của một bà mẹ bị con trai và con dâu ruồng bỏ, ghẻ lạnh, bỏ mặc bà quay quắt trong chính ngôi nhà của mình. \"Chút hơi ấm cuối cùng\" lại là câu chuyện thương tâm về người cha bị con cái bạc đãi, một bi kịch phận người trong sân khấu của cõi người… Cao nguyên đá Hà Giang hiện lên trong \"Vàng trên biển đá đen\" vừa khắc nghiệt vừa nên thơ, là truyện ngắn cho thấy vốn sống phong phú của nhà văn Elena khi đặc tả về cô giáo cõng chữ trên non cao và những học trò người dân tộc thiểu số vùng cao nguyên đá.\r\n\r\nTheo nhà phê bình Nguyễn Thị Tịnh Thy: \"Kết cấu giản dị theo dòng tự sự của nhân vật và kết thúc bất ngờ là điểm làm nên phong cách truyện ngắn của Elena. Nhân vật của chị thường suy xét, suy nghĩ, nhớ nhung, buồn khổ, âu lo, dằn vặt… trong suốt tiến trình của truyện. Mọi chuyển động ở họ đều thuộc về cái \"tĩnh\" với chất nội tâm, dòng tâm tưởng chảy tràn từ dòng này sang dòng khác. Kết thúc truyện, cái \"động\" đột nhiên xuất hiện với hành động đầy bất ngờ đối với người đọc nhưng lại rất logic với tính cách của nhân vật\".\r\n\r\nCòn với tập truyện ngắn và tùy bút \"Milano Sài Gòn đang về hay sang?\", là những cuộc viễn du của Trương Văn Dân với đầy ắp hiện thực cuộc sống. Ông có những trang viết mang ám ảnh về nguồn cội, về đất nước, quê hương với mong mỏi mỗi người rồi sẽ tìm được cho mình \"một cõi đi về\" phía ánh sáng của tình yêu thương, lòng nhân ái và sự hướng thiện. Trương Văn Dân từng tự sự: \"Tôi đã viết \"Bàn tay nhỏ dưới mưa\" như nhiều mảnh gương, mỗi mảnh phản chiếu theo một góc. Có mảnh quay vào trong, soi nội tâm nhân vật, có mảnh hướng ra ngoài để nhìn ra thế giới. Qua các trang viết đều có phản chiếu một chút người, một chút ta, một chút bạn bè và những cảm nhận về những vấn đề mang tính bản thể: sự sống và cái chết, nhân phẩm và sự sa ngã, khát vọng vô cùng của con người và những hữu hạn của tồn tại\"…\r\n\r\nGiao lưu với bạn đọc tại Đường Sách, nhà văn Trương Văn Dân đọc hai câu thơ của Trần Thoại Nguyên để nói tình yêu lớn của đời mình: \"Phải đâu gặp gỡ tình cờ/ Từ vô lượng kiếp đã chờ đợi nhau\". Người vợ Ý của ông đã yêu chồng, yêu quê hương Bình Định, yêu đất nước Việt Nam như bao con dân người Việt khác, như có dòng máu Việt luân lưu. Về đất Tây Sơn, bà múc gàu nước từ giếng cổ ở Bảo tàng Quang Trung và uống ngon lành. Tình cảm của quê hương, của bà mẹ chồng làm cho cô con dâu trong \"Milano Sài Gòn đang về hay sang?\" quý trọng, thương yêu, như nhận định của người bạn văn Ngô Quang Hiển: \"Bằng tình thương hết sức chân thành ấy, bà đã làm cho cô con dâu người Ý không còn cảm giác đang sang mà đang về. Về nhà. Và khi đã về nhà thì trong tâm hồn Ý đã thật sự có thêm hồn Việt\".\r\n\r\nNhà văn Trương Văn Dân cũng cho rằng nhiều tác phẩm của Elena Pucillo Trương mang đến sự ám ảnh về cuộc sống hiện đại, những phát hiện, góc nhìn riêng biệt của Elana. Ông cũng nhắn nhủ rằng: \"Đừng phung phí thời gian. Phung phí thời gian là có tội với đời, với chính mình\". \r\n\r\nBài và ảnh: HOÀNG HOA\r\nNguồn: Người lao động\r\n\r\n', '1640588487_anhtin1.jpg', 1),
(41, 'BS Nguyễn Chấn Hùng và những d', '(PL)- Đọc Nhẹ bước lãng du, người đọc sẽ tìm thấy hình ảnh một trí thức lãng tử, khoan thai đi giữa cuộc đời. Ở đó, ông thấy đời thú vị như cụm lục bình dặt dìu trôi.\r\n\r\n\r\nSáng 18-11, tại đường sách Nguyễn Văn Bình (quận 1, TP.HCM), GS-BS Nguyễn Chấn Hùng đã có buổi giao lưu, giới t', '(PL)- Đọc Nhẹ bước lãng du, người đọc sẽ tìm thấy hình ảnh một trí thức lãng tử, khoan thai đi giữa cuộc đời. Ở đó, ông thấy đời thú vị như cụm lục bình dặt dìu trôi.\r\n\r\n\r\nSáng 18-11, tại đường sách Nguyễn Văn Bình (quận 1, TP.HCM), GS-BS Nguyễn Chấn Hùng đã có buổi giao lưu, giới thiệu tác phẩm Nhẹ bước lãng du vừa được NXB Tổng hợp TP.HCM tái bản.\r\n\r\nÁm ảnh sông Vàm Cỏ thời thơ ấu\r\n\r\nGS-BS Nguyễn Chấn Hùng, nguyên Giám đốc BV Ung bướu TP.HCM, là người có những đóng góp quan trọng trong việc xây dựng và phát triển chiến lược phòng, chống ung thư ở Việt Nam. Ông được mọi người rất quý trọng không chỉ ở tài năng, sự đức độ mà còn là người chịu khó trong viết lách.\r\n\r\nLần giở từng trang sách, người đọc sẽ bắt gặp ở vị giáo sư tài hoa sự lạc quan, dí dỏm, tình cảm khi ông thuật lại nhiều câu chuyện “tai nghe, mắt thấy”, sự cảm nhận sâu sắc về những vùng đất trên thế giới ông từng đặt chân đến.\r\n\r\nMột điều mà độc giả dễ bắt gặp trong cuốn sách của ông là hình ảnh về những dòng sông. Ông dẫn độc giả đến sông Gành Hào ra biển Tây, sông Ông Đốc ra biển Đông; rồi ngược theo dòng Cửa Lớn ra hai biển thăm Đất Mũi tại Biển Tây, đến Cửa Bồ Đề ra biển Đông; xuống Cà Mau, Rạch Giá, qua Cầu Mới sông Cái Lớn - Cái Bé, nhớ phà Tắc Cậu, xóm Xẻo Rô; qua cầu Đầm Cùng, bồi hồi nhìn bến phà cũ, hay đứng trên cầu Năm Căn nhìn dòng Cửa Lớn để cùng trải lòng trước biển xanh...\r\n\r\nLý giải về sự xuất hiện với tần suất dày đặc của những dòng sông, GS-BS Nguyễn Chấn Hùng nói rằng tuổi thơ ông lớn lên bên cạnh sông Thủ Thừa, con kênh nối sông Vàm Cỏ Tây với Vàm Cỏ Đông nên có rất nhiều kỷ niệm mà ông không thể kể hết.\r\n\r\n“Con sông quê nhà luôn luôn ở trong lòng tôi. Đến tuổi học trò, tôi lại ngày hai buổi theo bờ sông Tiền tới lớp, thế mà đến tuổi 70 mới được dịp trở lại thăm chiến tích lẫy lừng Rạch Gầm-Xoài Mút. Tất cả dòng sông ấy hằn sâu trong tiềm thức tôi từ khi còn là đứa trẻ cho đến bây giờ. Và tới đâu tôi cũng tìm đến với sông, tìm tới tận đầu nguồn chảy để cùng bồi hồi, hoài niệm và suy ngẫm về cuộc đời” - GS-BS Nguyễn Chấn Hùng chia sẻ.\r\n\r\nÔng kể về những dòng sông trên thế giới đã đi qua, về cảm xúc đầy hứng khởi, đầy say mê để rồi gửi vào từng trang giấy. Nhưng dù có chu du khắp bốn bể năm châu thì ông vẫn dành trọn tình yêu đối với dòng sông của quê hương.\r\n</br>\r\n<img src=\"anhsach/anhtin2.jpg\"></br>\r\nGS-BS Nguyễn Chấn Hùng giao lưu, ký tặng sách cho độc giả trong buổi ra mắt sách. Ảnh: T.THÙY\r\n\r\nĐi rất nhiều nhưng không phải… đi du lịch\r\n\r\nCó độc giả đã hỏi GS-BS Nguyễn Chấn Hùng rằng liệu những dòng sông trong trang sách có phải là sự trở về của ông với nguồn cội của mình hay không. Ông trả lời: “Không, đó không phải là sự trở về. Vì ở trong tâm trí tôi, những dòng sông vẫn luôn tồn tại ở đó. Tôi luôn nhớ đến nó nên chắc chắn đó không phải là sự trở về”.\r\n\r\n“Tôi luôn nhớ tới những dòng sông trên quê hương đất nước mình, mà mỗi lần nhớ thì tôi phải tới đó đứng. Đứng bên dòng sông, tôi lại ngẫm nghĩ, khắc khoải về nhiều điều trong cuộc sống này” - ông nói thêm.\r\n\r\nCũng chính vì lẽ đó mà ông đã chín lần đến thăm sông Cửu Long nhưng vẫn chưa thấy thỏa. Ông đứng trên bờ sông Lam, sông Lô, sông Nhật Lệ không biết bao nhiêu lần, thu hết mọi giác độ, mọi cảnh vật xung quanh vào tầm mắt và cảm xúc mà vẫn chưa thấy đủ. Ông bảo rằng ông đi đến nhiều nơi nhưng không phải đơn thuần chỉ là đi du lịch. “Đi để hiểu rõ hơn về sâu thẳm của sự sống chứ không phải là kiểu đi du lịch. Đi, ngẫm nghĩ, nó mở ra trong tôi rất nhiều góc độ về mọi điều trong cuộc sống. Đi đó đi đây rồi thì thấy càng đậm tình với quê nhà” - ông trải lòng.\r\n\r\nÔng cũng nhận ra một điều rằng dòng sông ở đâu thì nền văn minh được hình thành từ đó. Đó không chỉ đơn thuần là một dòng sông mà nó còn mang nhiều giá trị khác. Với mỗi dòng sông đã đi qua, ông đều cố gắng để tìm hiểu lịch sử, về nếp sống, về cội nguồn của nó.\r\n\r\nTại buổi ra mắt sách, GS-BS Nguyễn Chấn Hùng cũng nhắn nhủ với những bạn trẻ: “Sống trong thời đại ngày hôm nay, mỗi người trong chúng ta đều được hưởng những điều kiện tốt nhất để học hỏi, tìm hiểu về văn hóa dân tộc mình. Muốn đi tới đâu là tới thì sao ta không đi, không học?”.', '1640500997_anhtin2.jpg', 1),
(42, 'Cẩm nang nghiên cứu khoa học t', '(Thanhuytphcm.vn) - Trong những ngày cuối tháng 7/2018, hòa nhịp cùng những trăn trở để phát triển một thành phố sáng tạo, từ hội thảo khoa học “Khơi dậy và phát huy truyền thống năng động, sáng tạo để phát triển Thành phố giai đoạn 2018-2020 và những năm tiếp theo” của Thành ủy ', '(Thanhuytphcm.vn) - Trong những ngày cuối tháng 7/2018, hòa nhịp cùng những trăn trở để phát triển một thành phố sáng tạo, từ hội thảo khoa học “Khơi dậy và phát huy truyền thống năng động, sáng tạo để phát triển Thành phố giai đoạn 2018-2020 và những năm tiếp theo” của Thành ủy Thành phố Hồ Chí Minh; hội thảo quốc tế “Tầm nhìn cho đô thị sáng tạo TPHCM” của UBND TPHCM, NXB Tổng hợp TPHCM cho ra mắt ấn phẩm Cẩm nang nghiên cứu khoa học – Từ ý tưởng đến công bố của tác giả Nguyễn Văn Tuấn. Tác phẩm được biên soạn với mong muốn giúp cho những ai muốn dấn thân vào công việc nghiên cứu khoa học, góp phần mở rộng tầm nhìn và các bước triển khai cụ thể cho khát khao xây dựng đô thị sáng tạo của TPHCM.\r\n</br>\r\n<img src=\"anhsach/anhtin3.jpg\">\r\n</br>\r\n\r\nĐây là tập tài liệu ngắn trong 15 năm tác giả giảng dạy ở Việt Nam, tổng quan quy trình và nghiên cứu khoa học. Cuốn sách không đi vào chi tiết về phương pháp mà là cung cấp cho các bạn mới bắt đầu làm nghiên cứu khoa học thấy được hành trình trước mắt để chuẩn bị. Với 21 tiêu đề gợi mở như: Tại sao nghiên cứu khoa học?; Thế nào là “cái mới” trong khoa học?; Cách thiết kế bộ câu hỏi; Trị số P trong nghiên cứu khoa học; Khoa học Việt Nam đang ở đâu; Những vấn đề thời sự…, bạn đọc sẽ được dẫn dắt qua một quy trình nghiên cứu khoa học từ lúc hình thành ý tưởng, thu thập dữ liệu qua thí nghiệm, đến cách soạn bài báo khoa học bằng tiếng Anh, và công bố kết quả khoa học.\r\n\r\nMỗi quy trình được minh họa bằng những ví dụ thực tế sinh động cùng những kinh nghiệm và trải nghiệm của chính tác giả. Nguyễn Văn Tuấn là giáo sư Trường Y thuộc Đại học New South Wales, giáo sư Y khoa Tiên lượng thuộc Đại học Công nghệ Sydney, giáo sư  adjunct Dịch tễ học và Thống kê học Trường Y thuộc Đại học Notre Dame (Úc). Tác giả là trưởng một labo nghiên cứu loãng xương Viện Nghiên cứu Y khoa Garvan (Úc); giám đốc labo nghiên cứu cơ xương Đại học Tôn Đức Thắng. Ông là người thứ 33 được UNSW Sydney trao bằng Tiến sĩ khoa học về những đóng góp xuất sắc cho chuyên ngành loãng xương trên thế giới. Ông đã công bố gần 300 công trình nghiên cứu trên các tập san:  Nature, Science, JAMA, BMJ, Lancet, New England Journal of Medecine.\r\n\r\nNhững trải nghiệm từ chính tác giả sẽ giúp bạn đọc cảm thấy nghiên cứu khoa học là một hành trình khám phá thú vị và hào hứng.    \r\n\r\nTheo: hcmcpv.org.vn', '1640501023_anhtin3.jpg', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_gbook`
--
ALTER TABLE `admin_gbook`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id_details`);

--
-- Chỉ mục cho bảng `dang_ky`
--
ALTER TABLE `dang_ky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `danh_muc_moi`
--
ALTER TABLE `danh_muc_moi`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `gioi_thieu`
--
ALTER TABLE `gioi_thieu`
  ADD PRIMARY KEY (`id_gioithieu`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quydinhsudung`
--
ALTER TABLE `quydinhsudung`
  ADD PRIMARY KEY (`id_quydinh`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`id_tintuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_gbook`
--
ALTER TABLE `admin_gbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `dang_ky`
--
ALTER TABLE `dang_ky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `danh_muc_moi`
--
ALTER TABLE `danh_muc_moi`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `gioi_thieu`
--
ALTER TABLE `gioi_thieu`
  MODIFY `id_gioithieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `quydinhsudung`
--
ALTER TABLE `quydinhsudung`
  MODIFY `id_quydinh` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `id_tintuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
