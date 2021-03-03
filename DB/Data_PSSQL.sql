
INSERT INTO NhaCungCap (MaNCC, TenNCC, Diachi, SoDT) VALUES (N'NCC001', N'Kim Đồng', N'123/123/2 asd', N'0123396');
INSERT INTO NhaCungCap (MaNCC, TenNCC, Diachi, SoDT) VALUES (N'NCC002', N'Fahasa', N'12asd3', N'2326232326');
INSERT INTO NhaCungCap (MaNCC, TenNCC, Diachi, SoDT) VALUES (N'NCC003', N'Nhà CC 003', NULL, NULL);
INSERT INTO NhaCungCap (MaNCC, TenNCC, Diachi, SoDT) VALUES (N'NCC004', N'Nhà CC 004', NULL, NULL);
INSERT INTO NhaCungCap (MaNCC, TenNCC, Diachi, SoDT) VALUES (N'NCC005', N'Nhà CC', NULL, NULL);

INSERT INTO TacGia (MaTG, TenTG, Email, SoDT) VALUES (N'TG001', N'Nguyễn Nhật Ánh', N'', N'');
INSERT INTO TacGia (MaTG, TenTG, Email, SoDT) VALUES (N'TG002', N'Ngô Tất Tố', N'', N'');
INSERT INTO TacGia (MaTG, TenTG, Email, SoDT) VALUES (N'TG003', N'Kim Lân', NULL, NULL);
INSERT INTO TacGia (MaTG, TenTG, Email, SoDT) VALUES (N'TG004', N'Nguyễn Ngọc Tư', N'', N'');
INSERT INTO TacGia (MaTG, TenTG, Email, SoDT) VALUES (N'TG005', N'Tố Hữu', N'', N'')
INSERT INTO TacGia (MaTG, TenTG, Email, SoDT) VALUES (N'TG006', N'Donald J.Trump', NULL, NULL);
INSERT INTO TacGia (MaTG, TenTG, Email, SoDT) VALUES (N'TG007', N'Rick Riorda', NULL, NULL);
INSERT INTO TacGia (MaTG, TenTG, Email, SoDT) VALUES (N'TG008', N'Nicholas Sparks', NULL, NULL);
INSERT INTO TacGia (MaTG, TenTG, Email, SoDT) VALUES (N'TG009', N'Haruki Murakami', NULL, NULL);
INSERT INTO TacGia (MaTG, TenTG, Email, SoDT) VALUES (N'TG010', N'Paulo Coelho', NULL, NULL);

INSERT INTO NXB (MaNXB, TenNXB, Email) VALUES (N'NXB001', N'Nhà xuất bản trẻ', N'');
INSERT INTO NXB (MaNXB, TenNXB, Email) VALUES (N'NXB002', N'Văn Học', N'');
INSERT INTO NXB (MaNXB, TenNXB, Email) VALUES (N'NXB003', N'DHQG Hà Nội', N'');
INSERT INTO NXB (MaNXB, TenNXB, Email) VALUES (N'NXB004', N'Thái Hà Book', N'');
INSERT INTO NXB (MaNXB, TenNXB, Email) VALUES (N'NXB005', N'Hoa Học Trò', N'');
INSERT INTO NXB (MaNXB, TenNXB, Email) VALUES (N'NXB006', N'Hachette Publishing', NULL);
INSERT INTO NXB (MaNXB, TenNXB, Email) VALUES (N'NXB007', N'Usborne', NULL);
INSERT INTO NXB (MaNXB, TenNXB, Email) VALUES (N'NXB008', N'HarperCollins', NULL);
INSERT INTO NXB (MaNXB, TenNXB, Email) VALUES (N'NXB009', N'Parragon', NULL);
INSERT INTO NXB (MaNXB, TenNXB, Email) VALUES (N'NXB010', N'Nhà xuất bản trẻ', NULL);
INSERT INTO NXB (MaNXB, TenNXB, Email) VALUES (N'NXB011', N'Văn Học', NULL);

INSERT INTO TheLoai (MaTL, TenTL, Mota) VALUES (N'TL001', N'Văn học', N'Mô tả 2');
INSERT INTO TheLoai (MaTL, TenTL, Mota) VALUES (N'TL002', N'Kinh tế', N'');
INSERT INTO TheLoai (MaTL, TenTL, Mota) VALUES (N'TL003', N'Triết học', N'');
INSERT INTO TheLoai (MaTL, TenTL, Mota) VALUES (N'TL004', N'Thể thao', N'');
INSERT INTO TheLoai (MaTL, TenTL, Mota) VALUES (N'TL005', N'Ngoại ngữ', N'');
INSERT INTO TheLoai (MaTL, TenTL, Mota) VALUES (N'TL006', N'Y học- sức khỏe', NULL);
INSERT INTO TheLoai (MaTL, TenTL, Mota) VALUES (N'TL007', N'Hồi ký- tùy bút', NULL);
INSERT INTO TheLoai (MaTL, TenTL, Mota) VALUES (N'TL008', N'Ẩm thực- nấu ăn', NULL);
INSERT INTO TheLoai (MaTL, TenTL, Mota) VALUES (N'TL009', N'Truyện tranh', NULL);

INSERT INTO DanhMuc (MaDM, TenDM, MetaTitle) VALUES (1, N'Sách theo nhà cung cấp', N'danh-muc-1');
INSERT INTO DanhMuc (MaDM, TenDM, MetaTitle) VALUES (2, N'Sách trong nước', N'danh-muc-2');
INSERT INTO DanhMuc (MaDM, TenDM, MetaTitle) VALUES (3, N'Tuyển tập', N'danh-muc-3');
INSERT INTO DanhMuc (MaDM, TenDM, MetaTitle) VALUES (4, N'Sách theo tác giả', N'danh-muc-4');

INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH001', N'Tắt Đèn', N'TL001', N'NXB002', N'TG001', 11, 20000, N'tat-den.jpg', NULL, 1);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH002', N'Con Chó Nhỏ Mang Giỏ Hoa Hồng', N'TL001', N'NXB001', N'TG001', 22, 50000, N'con-cho-nho-bia-thuong.jpg', NULL, 2);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH003', N'Nghĩ Lớn Để Thành Công', N'TL002', N'NXB006', N'TG006', 20, 200000, N'image193441.jpg', NULL, 3);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH004', N'Đánh Bại Phố Wall', N'TL002', N'NXB009', N'TG007', 20, 15000, N'danh-bai-pho-wall.jpg', NULL, 2);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH005', N'Sự Kiến Tạo Xã Hội Về Thực Tại', N'TL003', N'NXB007', N'TG008', 20, 100000, N'su-kien-tao-xa-hoi-ve-thuc-tai.jpg', NULL, 3);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH006', N'Lịch Sử Triết Học - Từ Cổ Đại Đến Cận Hiện Đại', N'TL003', N'NXB008', N'TG009', 6, 89000, N'lich-su-triet-hoc.jpg', NULL, 3);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH007', N'Hướng Dẫn Học Karate', N'TL004', N'NXB003', N'TG004', 3, 45000, N'huong-dan-hoc-karate.jpg', NULL, 1);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH008', N'Ngữ Pháp Tiếng Hàn Cơ Bản', N'TL005', N'NXB004', N'TG002', 4, 96000, N'ngu-phap-tieng-han-co-ban.jpg', NULL, 1);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH009', N'Tự Học Tiếng Anh Hiệu Quả', N'TL005', N'NXB005', N'TG003', 5, 69000, N'tu-hoc-tieng-anh.jpg', NULL, 1);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH010', N'Bác Sĩ Tốt Nhất Là Chính Mình - Tập 9', N'TL006', N'NXB001', N'TG005', 7, 56000, N'bac-si-tot-nhat-8-.jpg', NULL, 1);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH011', N'Bác Sĩ Tốt Nhất Là Chính Mình - Tập 8', N'TL006', N'NXB001', N'TG005', 9, 58000, N'bac-si-tot-nhat-9.jpg', NULL, 1);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH012', N'Bánh Mì Thơm, Cà Phê Đắng', N'TL007', N'NXB010', N'TG006', 3, 76000, N'banh-mi-thom.jpg', NULL, 2);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH013', N'Putin - Sự Trỗi Dậy Của Một Con Người', N'TL007', N'NXB007', N'TG007', 1, 68000, N'putin-su-troi-day.jpg', NULL, 3);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH014', N'Dinh Dưỡng Cho Trẻ Béo Phì', N'TL008', N'NXB004', N'TG003', 2, 58000, N'dinh-duong-cho-tre-beo-phi.jpg', NULL, 1);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH015', N'Các Món Ăn Đặc Sản Miền Nam', N'TL008', N'NXB005', N'TG004', 3, 68000, N'cac-mon-an-dac-san.jpg', NULL, 2);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH016', N'Truyện tranh Doremon', N'TL009', N'NXB001', N'TG009', 10, 25000, N'doraemon.jpg', NULL, 1);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH017', N'Thám Tử Lừng Danh Conan', N'TL009', N'NXB001', N'TG009', 10, 26000, N'tham-tu-lung-danh-conan.jpg', NULL, 3);
INSERT INTO Sach (MaSach, TenSach, MaTL, MaNXB, MaTG, SL, GiaTien, Hinh, UuTien, MaDM) VALUES (N'SACH018', N'Đấm Phát Chết Luôn', N'TL009', N'NXB001', N'TG008', 9, 30000, N'dam-phat-chet.jpg', NULL, 3);

INSERT INTO KhachHang (MaKH, TenKh, SoDT, Email, DiaChi) VALUES (N'KH001', N'Khách hàng', N'1263552', N'kh1@gmail.com', NULL);
INSERT INTO KhachHang (MaKH, TenKh, SoDT, Email, DiaChi) VALUES (N'KH002', N'Khách Hàng 002', N'0132662', N'kh002@gmail.com', N'sadsaadsdsa');
INSERT INTO KhachHang (MaKH, TenKh, SoDT, Email, DiaChi) VALUES (N'KH003', N'003', NULL, NULL, NULL);
INSERT INTO KhachHang (MaKH, TenKh, SoDT, Email, DiaChi) VALUES (N'KH004', N'004', NULL, NULL, NULL);
INSERT INTO KhachHang (MaKH, TenKh, SoDT, Email, DiaChi) VALUES (N'KH005', N'005', NULL, NULL, NULL);
INSERT INTO KhachHang (MaKH, TenKh, SoDT, Email, DiaChi) VALUES (N'KH006', N'006', NULL, NULL, NULL);
INSERT INTO KhachHang (MaKH, TenKh, SoDT, Email, DiaChi) VALUES (N'KH007', N'007', NULL, NULL, NULL);
INSERT INTO KhachHang (MaKH, TenKh, SoDT, Email, DiaChi) VALUES (N'KH008', N'008', NULL, NULL, NULL);
INSERT INTO KhachHang (MaKH, TenKh, SoDT, Email, DiaChi) VALUES (N'KH009', N'009', NULL, NULL, NULL);
INSERT INTO KhachHang (MaKH, TenKh, SoDT, Email, DiaChi) VALUES (N'KH010', N'010', NULL, NULL, NULL);

INSERT INTO NhanVien (Manv, TenNV, SoDT, Email, ChucVu) VALUES (N'NV01', N'NV01', N'NV01', N'NV01', N'NV01');
INSERT INTO TaiKhoan (MaTK, TenTK, TenHienThi, MatKhau, ChucVu) VALUES (N'ACC001', N'ADMIN', N'Át Min', N'123', 0);
INSERT INTO TaiKhoan (MaTK, TenTK, TenHienThi, MatKhau, ChucVu) VALUES (N'ACC002', N'Phoenix', N'Á Ắ Ấ', N'12345', 0);