INSERT INTO TAIKHOAN(MaTK,TenTK,TenHienThi,MatKhau, Quyen, MaKH) VALUES('','ADMIN',N'Toàn Pro','123', 1,'KH00000015' )
INSERT INTO TAIKHOAN(MaTK,TenHienThi,MatKhau) VALUES('','Phoenix','Admin 002','12345')

INSERT INTO THELOAI VALUES('TL001',N'Văn học','')
INSERT INTO THELOAI VALUES('TL002',N'Kinh tế','')
INSERT INTO THELOAI VALUES('TL003',N'Tâm lý kĩ năng sống','')
INSERT INTO THELOAI VALUES('TL004',N'Giáo khoa tham khảo','')
INSERT INTO THELOAI VALUES('TL005',N'Ngoại ngữ','')


INSERT INTO NXB VALUES('NXB001',N'Kim đồng','')
INSERT INTO NXB VALUES('NXB002',N'Văn học','')
INSERT INTO NXB VALUES('NXB003',N'DHQG Hà Nội','')
INSERT INTO NXB VALUES('NXB004',N'004','')
INSERT INTO NXB VALUES('NXB005',N'005','')

INSERT INTO TACGIA VALUES ('TG001',N'Nguyễn Nhật Ánh','','')
INSERT INTO TACGIA VALUES ('TG002',N'Ngô Tất Tố','','')
INSERT INTO TACGIA VALUES ('TG003',N'Tác Giả 003','','')
INSERT INTO TACGIA VALUES ('TG004',N'Tác Giả 004','','')
INSERT INTO TACGIA VALUES ('TG005',N'Tác Giả 005','','')


INSERT INTO DanhMuc(TenDM,MetaTitle) VALUES (N'Danh mục 1','danh-muc-1')
INSERT INTO DanhMuc(TenDM,MetaTitle) VALUES (N'Danh mục 2','danh-muc-2')
INSERT INTO DanhMuc(TenDM,MetaTitle) VALUES (N'Danh mục 3','danh-muc-3')

INSERT INTO SACH(MASACH,TENSACH,MATL,MANXB,MATG,MaDM,SL) VALUES('SACH001',N'Tắt đèn','TL001','NXB002','TG001',1,10)
INSERT INTO SACH(MASACH,TENSACH,MATL,MANXB,MATG,MaDM,SL) VALUES('SACH002',N'Sách 002','TL002','NXB002','TG002',1,20)
INSERT INTO SACH(MASACH,TENSACH,MATL,MANXB,MATG,MaDM,SL) VALUES('SACH003',N'Sách 003','TL003','NXB003','TG002',1,15)
INSERT INTO SACH(MASACH,TENSACH,MATL,MANXB,MATG,MaDM,SL) VALUES('SACH004',N'Sách 004','TL004','NXB002','TG005',2,14)
INSERT INTO SACH(MASACH,TENSACH,MATL,MANXB,MATG,MaDM,SL) VALUES('SACH005',N'Sách 005','TL005','NXB005','TG005',3,20)


INSERT INTO SACH(MASACH,TENSACH,MATL,MANXB,MATG,MaDM,SL) VALUES('SACH005',N'Sách 005','TL005','NXB005','TG005',3,20)