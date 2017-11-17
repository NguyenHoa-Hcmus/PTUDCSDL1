CREATE DATABASE QLKS
GO

use QLKS
go 
CREATE TABLE HangKiGui
(
	IDKhachHang int,
	MaHangKiGui int,
	TenHangKiGui nvarchar(100),
	SoLuong int,
	ngayGui datetime,
	NgayNhan datetime,
	GhiChu nvarchar(200),
	primary key(IDKhachHang, MaHangKiGui)
)

CREATE TABLE Datphong
(
	IDKhachHang int,
	MaPhong int,
	CMNDKhachHang char(12),
	NgayDatPhong date,
	SoLuongNguoi int,
	NgayNhanPhong date,
	NgayTraPhong date,
	primary key(IDKhachHang, MaPhong)
)

CREATE TABLE BanGiamDoc
(
	MaGiamDoc int,
	TenGiamDoc nvarchar(100),
	MaChucDanh int,
	NgayNhanChuc date,
	Luong decimal,
	GhiChu nvarchar(200),
	primary key(MaGiamDoc),
)

CREATE TABLE NhanVien
(
	MaNhanVien int,
	HoTen nvarchar(100),
	CMND char(12),
	Luong decimal,
	SDT char(12),
	MaChucDanh int,
	MaBoPhan int,
	GioiTinh nvarchar(5),
	primary key(MaNhanVien),
)

CREATE TABLE TaiKhoan
(
	TenTaiKhoan varchar(100),
	MatKhau varchar(100),
	SoLanDangNhap int,
	primary key(TenTaiKhoan),
)

CREATE TABLE ChiTietNhanVien
(
	MaNhanVien int,
	DiaChi nvarchar(200),
	NgayBatDauLam datetime,
	GhiChu nvarchar(200),
	primary key(MaNhanVien),
)

CREATE TABLE NhanVienViPham
(
	MaNhanVien int,
	MaViPham int,
	Ngay date,
	Solan int,
	primary key(MaNhanVien, MaViPham)
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