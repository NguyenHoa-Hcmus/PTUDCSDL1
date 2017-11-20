CREATE DATABASE QLKS
GO

use QLKS
go 
CREATE TABLE HangKiGui
(
	IDKhachHang int not null,
	MaHangKiGui int not null,
	TenHangKiGui nvarchar(100),
	SoLuong int check(SoLuong >= 0),
	NgayGui datetime,
	NgayNhan datetime,
	GhiChu nvarchar(200),
	PRIMARY KEY(IDKhachHang, MaHangKiGui)
)

CREATE TABLE DatPhong
(
	IDKhachHang int not null,
	MaPhong int not null,
	CMNDKhachHang char(12) not null,
	NgayDatPhong date,
	SoLuongNguoi int check(SoLuongNguoi >= 0),
	NgayNhanPhong date,
	NgayTraPhong date,
	PRIMARY KEY(IDKhachHang, MaPhong)
)

CREATE TABLE BanGiamDoc
(
	MaGiamDoc int not null,
	TenGiamDoc nvarchar(100) not null,
	MaChucDanh int,
	NgayNhanChuc date,
	Luong decimal check(Luong >= 0),
	GhiChu nvarchar(200),
	PRIMARY KEY(MaGiamDoc)
)

CREATE TABLE NhanVien
(
	MaNhanVien int not null,
	HoTen nvarchar(100) not null,
	CMND char(12) not null,
	Luong decimal check(Luong >= 0),
	SDT char(12),
	MaChucDanh int,
	MaBoPhan int,
	GioiTinh nvarchar(5),
	PRIMARY KEY(MaNhanVien)
)

CREATE TABLE TaiKhoan
(
	TenTaiKhoan varchar(100) not null,
	MatKhau varchar(100) not null,
	SoLanDangNhap int,
	PRIMARY KEY(TenTaiKhoan)
)

CREATE TABLE ChiTietNhanVien
(
	MaNhanVien int not null,
	DiaChi nvarchar(200),
	NgayBatDauLam datetime,
	GhiChu nvarchar(200),
	PRIMARY KEY(MaNhanVien)
)

CREATE TABLE NhanVienViPham
(
	MaNhanVien int not null,
	MaViPham int,
	Ngay date,
	Solan int check(SoLan >= 0),
	PRIMARY KEY(MaNhanVien, MaViPham)
)

ALTER TABLE HangKiGui ADD CONSTRAINT
fk_HangKiGui_KhachHang FOREIGN KEY(IDKHachHang)
REFERENCES KhachHang(IDKhachHang)

ALTER TABLE DatPhong ADD CONSTRAINT
fk_DatPhong_KhachHang FOREIGN KEY(IDKHachHang)
REFERENCES KhachHang(IDKhachHang)

ALTER TABLE DatPhong ADD CONSTRAINT
fk_DatPhong_Phong FOREIGN KEY(MaPhong)
REFERENCES Phong(MaPhong)

ALTER TABLE DatPhong ADD CONSTRAINT
fk_DatPhong_KhanhHang FOREIGN KEY(CMNDKhachHang)
REFERENCES KhachHang(CMND)

ALTER TABLE BanGiamDoc ADD CONSTRAINT
fk_BanGiamDoc_NhanVien FOREIGN KEY(MaGiamDoc)
REFERENCES NhanVien(MaNhanVien)

ALTER TABLE BanGiamDoc ADD CONSTRAINT
fk_BanGiamDoc_ChucDanh FOREIGN KEY(MaChucDanh)
REFERENCES ChucDanh(MaChucDanh)

ALTER TABLE NhanVien ADD CONSTRAINT
fk_NhanVien_ChucDanh FOREIGN KEY(MaChucDanh)
REFERENCES ChucDanh(MaChucDanh)

ALTER TABLE NhanVien ADD CONSTRAINT
fk_NhanVien_BoPhan FOREIGN KEY(MaBoPhan)
REFERENCES BoPhan(MaBoPhan)

ALTER TABLE ChiTietNhanVien ADD CONSTRAINT
fk_ChiTietNhanVien_NhanVien FOREIGN KEY(MaNhanVien)
REFERENCES NhanVien(MaNhanVien)

ALTER TABLE NhanVienViPham ADD CONSTRAINT
fk_NhanVienViPham_NhanVien FOREIGN KEY(MaNhanVien)
REFERENCES NhanVien(MaNhanVien)

ALTER TABLE NhanVienViPham ADD CONSTRAINT
fk_NhanVienViPham_ViPham FOREIGN KEY(MaViPham)
REFERENCES ViPham(MaViPham)