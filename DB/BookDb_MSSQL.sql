CREATE DATABASE book_db;
Use book_db;

CREATE TABLE KhachHang
(
	MaKH VARCHAR(10) NOT NULL PRIMARY KEY,
	TenKh NVARCHAR(30),
	SoDT VARCHAR(11),
	Email VARCHAR(20)
);
CREATE TABLE NhanVien
(
	Manv VARCHAR(10) NOT NULL PRIMARY KEY,
	TenNV NVARCHAR(30),
	SoDT VARCHAR(11),
	Email VARCHAR(20),
	ChucVu VARCHAR(20)
);

CREATE TABLE PhieuNhap
(
	MaPN INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	MaNCC VARCHAR(10),
	NgayNhap DATETIME DEFAULT GETDATE(),
	MaNV VARCHAR(10),
	TongTien Double precision
);

CREATE TABLE CTPhieu
(
	MaPN INT,
	MaSach VARCHAR(10),
	SL SMALLINT,
	ChietKhau DOUBLE PRECISION DEFAULT 0,
	DonGia Double precision,
	PRIMARY KEY(MaPN,MaSach)
);

CREATE TABLE NhaCungCap
(
	MaNCC VARCHAR(10) NOT NULL PRIMARY KEY,
	TenNCC NVARCHAR(20),
	Diachi VARCHAR(200),
	SoDT VARCHAR(11)
);

CREATE TABLE TaiKhoan
(
	MaTK VARCHAR(10) NOT NULL PRIMARY KEY,
	TenTK NVARCHAR(20),
	TenHienThi VARCHAR(50),
	MatKhau VARCHAR(20),
	ChucVu SMALLINT DEFAULT 0
);

CREATE TABLE TacGia
(	
	MaTG VARCHAR(10) NOT NULL PRIMARY KEY,
	TenTG NVARCHAR(20),
	Email VARCHAR(20),
	SoDT VARCHAR(11)
);

CREATE TABLE NXB
(
	MaNXB VARCHAR(10) PRIMARY KEY,
	TenNXB NVARCHAR(20),
	Email VARCHAR(20)
);

CREATE TABLE TheLoai
( 
	MaTL VARCHAR(10) PRIMARY KEY,
	TenTL NVARCHAR(20),
	Mota NVARCHAR(200)
);

CREATE TABLE Sach
(
	MaSach VARCHAR(10) PRIMARY KEY,
	TenSach NVARCHAR(100),
	MaTL VARCHAR(10),
	MaNXB VARCHAR(10),
	MaTG VARCHAR(10),
	SL INT,
	GiaTien DOUBLE PRECISION,
	Hinh VARCHAR(50),
	UuTien INT NULL,
	MaDM INT
);

CREATE TABLE HoaDon
(
	MaHD INT IDENTITY(1,1) PRIMARY KEY,
	MaKH VARCHAR(10),
	Ngay DATETIME DEFAULT GETDATE(),
	TongTien DOUBLE PRECISION
);

CREATE TABLE CTHD
(
	MaHD INT,
	MaSACH VARCHAR(10),
	SL SMALLINT,
	KhuyenMai DOUBLE PRECISION DEFAULT 0,
	DonGia DOUBLE PRECISION,
	PRIMARY KEY(MaHD,MaSach)
);

CREATE TABLE DanhMuc
(
	MaDM INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	TenDM NVARCHAR(50),
	MetaTitle VARCHAR(100) NULL
)

Create Table SaveHistory
(
	ID Int Identity(1,1) Primary Key,
	AuditCode Varchar(50),
	AuditDate Datetime,
	AuditItemID Varchar(100),
	Description Nvarchar (4000),
	EventID Varchar (50)
)

ALTER TABLE PhieuNhap
ADD CONSTRAINT FK_PN_NV FOREIGN KEY(MaNV) REFERENCES NhanVien(MaNV)
ALTER TABLE PhieuNhap
ADD CONSTRAINT FK_PN_NCC FOREIGN KEY(MaNCC) REFERENCES NhaCungCap(MaNCC)

ALTER TABLE CTPhieu
ADD CONSTRAINT FK_CTP_PN FOREIGN KEY(MaPN) REFERENCES PhieuNhap(MaPN)
ALTER TABLE CTPhieu
ADD CONSTRAINT FK_CTP_Sach FOREIGN KEY(MaSach) REFERENCES Sach(MaSach)

ALTER TABLE Sach
ADD CONSTRAINT FK_Sach_TL FOREIGN KEY(MaTL) REFERENCES TheLoai(MaTL)
ALTER TABLE Sach
ADD CONSTRAINT FK_Sach_TG FOREIGN KEY(MaTG) REFERENCES TacGia(MaTG)
ALTER TABLE Sach
ADD CONSTRAINT FK_Sach_NXB FOREIGN KEY(MaNXB) REFERENCES NXB(MaNXB)
ALTER TABLE Sach
ADD CONSTRAINT FK_Sach_DanhMuc FOREIGN KEY(MaDM) REFERENCES DanhMuc(MaDM)

ALTER TABLE CTHD
ADD CONSTRAINT FK_CTHD_Sach FOREIGN KEY(MaSach) REFERENCES Sach(MaSach)
ALTER TABLE CTHD
ADD CONSTRAINT FK_CTHD_HD FOREIGN KEY (MaHD) REFERENCES HoaDon(MaHD)

ALTER TABLE HoaDon
ADD CONSTRAINT FK_HD_KH FOREIGN KEY(MaKH) REFERENCES KhachHang(MaKH);