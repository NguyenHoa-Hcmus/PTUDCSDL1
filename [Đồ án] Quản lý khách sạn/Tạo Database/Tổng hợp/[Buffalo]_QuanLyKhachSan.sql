
Create Database QuanLyKhachSan
go
use QuanLyKhachSan
go
Create table KhachHang
(
	IDKhachHang int IDENTITY(1,1),
	CMND char(20)unique not null,
	HoTen nvarchar(100) not null,
	SDT char(20),
	DiaChi nvarchar(100)unique,
	Primary key(IDKhachHang)
)

Create table DichVu
(
	MaDichVu int IDENTITY(1,1),
	TenDichVu nvarchar(100),
	DonGia decimal, 
	GhiChu nvarchar(200),
	Primary key(MaDichVu)
)

Create table Phong
(
	MaPhong int IDENTITY(1,1), 
	TenPhong nvarchar(100),
	LoaiPhong int,
	SucChua int check(SucChua>=0),
	TinhTrang int,
	DonGia decimal,
	GhiChu nvarchar(200),
	Primary key(MaPhong)
)
Create table HoaDon
(
	MaHoaDon int IDENTITY(1,1),
	MaNhanVien int not null,
	IDKhachHang int not null,
	NgayTao datetime check(NgayTao<=getdate()),
	ThanhTien decimal,
	Primary key(MaHoaDon)
)

Create table ThietBi
(
	MaThietBi int IDENTITY(1,1),
	TenThietBi nvarchar(100),
	HangSanXuat nvarchar(100),
	TinhTrang int,
	GhiChu nvarchar(200),
	Primary key(MaThietBi)
)
Create table HuyPhong
(
	MaPhong int not null,
	IDKhachHang int not null,
	MaNhanVien int not null,
	NgayHuy date check(NgayHuy<=cast(CURRENT_TIMESTAMP as date)),
	GhiChu nvarchar(200),
	Primary key(MaPhong, IDKhachHang)
)

Create table NhanTraPhong
(
	MaPhong int not null,
	IDKhachHang int not null,
	NgayNhan date check(NgayNhan<=cast(CURRENT_TIMESTAMP as date)),
	NgayTra date check(NgayTra<=cast(CURRENT_TIMESTAMP as date)),
	MaHangKiGui int,
	GhiChu nvarchar(200),
	Primary key(MaPhong, IDKhachhang)
)

CREATE TABLE HangKiGui
(
	IDKhachHang int,
	MaHangKiGui int,
	TenHangKiGui nvarchar(100),
	SoLuong int,
	NgayGui datetime check(NgayGui<=CURRENT_TIMESTAMP),
	NgayNhan datetime check (NgayNhan<=CURRENT_TIMESTAMP),
	GhiChu nvarchar(200),
	primary key(IDKhachHang, MaHangKiGui)
)

CREATE TABLE DatPhong
(
	IDKhachHang int,
	MaPhong int,
	CMNDKhachHang char(20),
	NgayDatPhong date check(NgayDatPhong<=cast(CURRENT_TIMESTAMP as DATE)),
	SoLuongNguoi int check(SoLuongNguoi>0),
	NgayNhanPhong date ,
	NgayTraPhong date ,
	primary key(IDKhachHang, MaPhong)
)

CREATE TABLE BanGiamDoc
(
	MaGiamDoc int IDENTITY(1,1),
	TenGiamDoc nvarchar(100),
	MaChucDanh int,
	NgayNhanChuc date,
	Luong decimal check (Luong>0),
	GhiChu nvarchar(200),
	primary key(MaGiamDoc)
)

CREATE TABLE NhanVien
(
	MaNhanVien int IDENTITY(1,1),
	HoTen nvarchar(100),
	CMND char(12) not null unique,
	Luong decimal check(Luong>0),
	SDT char(12)unique,
	MaChucDanh int,
	MaBoPhan int,
	GioiTinh nvarchar(5) check(GioiTinh=N'Nam'or GioiTinh=N'Nữ'),
	primary key(MaNhanVien)
)

CREATE TABLE TaiKhoan
(
	TenTaiKhoan varchar(100),
	MatKhau varchar(100),
	SoLanDangNhap int,
	MaNhanVien int unique,
	primary key(TenTaiKhoan)
)

CREATE TABLE ChiTietNhanVien
(
	MaNhanVien int,
	DiaChi nvarchar(200),
	NgayBatDauLam date,
	GhiChu nvarchar(200),
	primary key(MaNhanVien)
)

CREATE TABLE NhanVienViPham
(
	MaNhanVien int,
	MaViPham int,
	Ngay date,
	Solan int check(SoLan>=0),
	primary key(MaNhanVien, MaViPham)
)
-- 15
create table ViPham
(
    Ma int IDENTITY(1,1),
    TenViPham nvarchar(200) not null,
    SoTienPhat decimal check(SoTienPhat>=0),
    PRIMARY KEY (Ma)
)

-- 16
CREATE TABLE ChiTietKhachHang
(
    CMND char(20),
    SoLanDatPhong int,
    TongTien decimal check(TongTien>=0),
    SoLuongNgay int,
    SoTienPhat decimal check(SoTienPhat>=0),
    TongTienDichVu decimal,
    PRIMARY KEY (CMND)
)

-- 17
CREATE TABLE ChiTietDichVu
(
    MaDichVu int IDENTITY(1,1),
    QuanLy int not null,
    NgayLap date,
    NgayHuy date,
    TongDoanhThu decimal check(TongDoanhThu>=0),
    PRIMARY KEY (MaDichVu)
)

-- 18
CREATE TABLE KhachHangSuDungDichVu
(
    MaKhachHang int,
    MaDichVu int,
    ThoiGian date,
    DonGia int check(DonGia>=0),
    PRIMARY KEY (MaKhachHang, MaDichVu)
)

--19
CREATE TABLE  BoPhan
(
    MaBoPhan int IDENTITY(1,1),
    TenBoPhan nvarchar(200) not null,
    TruongBoPhan int not null,
    NgayThanhLap date check(NgayThanhLap<=cast(GETDATE()as date)),
    PRIMARY KEY (MaBoPhan)
)
-- 20
CREATE TABLE ChucDanh
(
    MaChucDanh int IDENTITY(1,1),
    TenChucDanh nvarchar(200) not null,
    PRIMARY KEY (MaChucDanh)
)

-- 21
CREATE TABLE ChiTietHoaDon
(
    MaHoaDon int IDENTITY(1,1),
    MaPhong int not null,
    GiaPhong decimal check(GiaPhong>=0),
    MaDichVu int not null,
    GiaDichVu decimal check(GiaDichVu>=0),
    MaThietBi int not null,
    GiaThietBi decimal check(GiaThietBi>=0),
    PRIMARY KEY (MaHoaDon)
)
create table LoaiPhong
(
	MaLoaiPhong int IDENTITY(1,1),
	TenLoaiPhong nvarchar(100) not null,
	primary key(MaLoaiPhong)
)
-- Chi tiet phong
create table ChiTietPhong
(
	MaPhong int,
	Tang int check(Tang>=0),
	DayNha char(10),
	ThoiGianSuDungGanNhat datetime check(ThoiGianSuDungGanNhat<=CURRENT_TIMESTAMP),
	SoLanSudung int check(SoLanSuDung>0),
	primary key(MaPhong)

)
--TinhTrangPhong
create table TinhTrangPhong
(
	MaTinhTrang int IDENTITY(1,1),
	TenTinhTrang nvarchar(100),
	primary key(MaTinhTrang)
)
--Tinh trang thiet bi
create table TinhTrangThietBi
(
	MaTinhTrang int IDENTITY(1,1),
	TenTinhTrang nvarchar(100),
	primary key(MaTinhTrang)
)
--Chi tiet thiet bi
create table ChiTietThietBi
(
	MaThietBi int,
	NgayMua date check(NgayMua<=cast(Getdate()as date)) not null,
	NgaySuaChuaGanNhat date,
	GiaTien decimal not null,
	SoLanSuaChua int,
	HanBaoHanh date not null,
	primary key(MaThietBi)
)

--Phan cong
create table PhanCong
(
	MaPhanCong int IDENTITY(1,1),
	MaNhanVien int,
	ThoiGianPhanCong datetime,
	MaCongViec int,
	ThoiGianBatDau datetime,
	ThoiGianKetThuc datetime,
	GhiChu nvarchar(200),
	primary key(MaPhanCong,MaNhanVien),

)
--Cong viec
create table CongViec
(
	MaCongViec int IDENTITY(1,1),
	MaBoPhan int,
	TenCongViec nvarchar(200),
	ThoiGianBatDau datetime,
	ThoiGianKetThuc datetime,
	DiaDiem nvarchar(200),
	GhiChu nvarchar(200),
	primary key(MaCongViec,MaBoPhan),

)

go
ALTER TABLE Phong 
ADD CONSTRAINT FK_Phong_LoaiPhong 
FOREIGN KEY(LoaiPhong) REFERENCES LoaiPhong(MaLoaiPhong)

ALTER TABLE Phong
ADD CONSTRAINT FK_Phong_TinhTrangPhong
FOREIGN KEY(TinhTrang) REFERENCES TinhTrangPhong(MaTinhTrang)

ALTER TABLE HoaDon
ADD CONSTRAINT FK_HoaDon_NhanVien
FOREIGN KEY(MaNhanVien) REFERENCES NhanVien(MaNhanVien)

ALTER TABLE HoaDon
ADD CONSTRAINT FK_HoaDon_KhachHang
FOREIGN KEY(IDKhachHang) REFERENCES KhachHang(IDKhachHang)

ALTER TABLE ThietBi
ADD CONSTRAINT FK_ThietBi_TinhTrangThietBi
FOREIGN KEY(TinhTrang) REFERENCES TinhTrangThietBi(MaTinhTrang)

ALTER TABLE HuyPhong
ADD CONSTRAINT FK_HuyPhong_Phong
FOREIGN KEY(MaPhong) REFERENCES Phong(MaPhong)

ALTER TABLE HuyPhong
ADD CONSTRAINT FK_HuyPhong_KhachHang
FOREIGN KEY(IDKhachHang) REFERENCES KhachHang(IDKhachHang)

ALTER TABLE HuyPhong
ADD CONSTRAINT FK_HuyPhong_NhanVien
FOREIGN KEY(MaNhanVien) REFERENCES NhanVien(MaNhanVien)

ALTER TABLE NhanTraPhong
ADD CONSTRAINT FK_NhanTraPhong_Phong
FOREIGN KEY(MaPhong) REFERENCES Phong(MaPhong)

ALTER TABLE NhanTraPhong
ADD CONSTRAINT FK_NhanTraPhong_KhachHang
FOREIGN KEY(IDKhachHang) REFERENCES KhachHang(IDKhachHang)

ALTER TABLE NhanTraPhong
ADD CONSTRAINT FK_NhanTraPhong_HangKiGui
FOREIGN KEY(MaHangKiGui) REFERENCES HangKiGui(MaHangKiGui)

ALTER TABLE HangKiGui ADD CONSTRAINT
FK_HangKiGui_KhachHang FOREIGN KEY(IDKHachHang)
REFERENCES KhachHang(IDKhachHang)

ALTER TABLE DatPhong ADD CONSTRAINT
FK_DatPhong_KhachHang FOREIGN KEY(IDKHachHang)
REFERENCES KhachHang(IDKhachHang)

ALTER TABLE DatPhong ADD CONSTRAINT
FK_DatPhong_Phong FOREIGN KEY(MaPhong)
REFERENCES Phong(MaPhong)

ALTER TABLE DatPhong ADD CONSTRAINT
FK_DatPhong_KhanhHang FOREIGN KEY(CMNDKhachHang)
REFERENCES KhachHang(CMND)

ALTER TABLE BanGiamDoc ADD CONSTRAINT
FK_BanGiamDoc_NhanVien FOREIGN KEY(MaGiamDoc)
REFERENCES NhanVien(MaNhanVien)

ALTER TABLE BanGiamDoc ADD CONSTRAINT
FK_BanGiamDoc_ChucDanh FOREIGN KEY(MaChucDanh)
REFERENCES ChucDanh(MaChucDanh)

ALTER TABLE NhanVien ADD CONSTRAINT
FK_NhanVien_ChucDanh FOREIGN KEY(MaChucDanh)
REFERENCES ChucDanh(MaChucDanh)

ALTER TABLE NhanVien ADD CONSTRAINT
FK_NhanVien_BoPhan FOREIGN KEY(MaBoPhan)
REFERENCES BoPhan(MaBoPhan)

ALTER TABLE ChiTietNhanVien ADD CONSTRAINT
FK_ChiTietNhanVien_NhanVien FOREIGN KEY(MaNhanVien)
REFERENCES NhanVien(MaNhanVien)

ALTER TABLE ChiTietDichVu 
ADD CONSTRAINT FK_ChiTietDichVu_NhanVien
FOREIGN KEY(QuanLy) REFERENCES NhanVien(MaNhanVien)

ALTER TABLE KhachHangSuDungDichVu 
ADD CONSTRAINT FK_KhachHangSuDungDichVu_KhachHang
FOREIGN KEY(MaKhachHang) REFERENCES KhachHang(IDKhachHang)

ALTER TABLE KhachHangSuDungDichVu 
ADD CONSTRAINT FK_KhachHangSuDungDichVu_DichVu
FOREIGN KEY(MaDichVu) REFERENCES DichVu(MaDichVu)

ALTER TABLE BoPhan 
ADD CONSTRAINT FK_BoPhan_NhanVien
FOREIGN KEY(TruongBoPhan) REFERENCES NhanVien(MaNhanVien)

ALTER TABLE ChiTietHoaDon 
ADD CONSTRAINT FK_ChiTietHoaDon_Phong
FOREIGN KEY(MaPhong) REFERENCES Phong(MaPhong)

ALTER TABLE ChiTietHoaDon 
ADD CONSTRAINT FK_ChiTietHoaDon_DichVu
FOREIGN KEY(MaDichVu) REFERENCES DichVu(MaDichVu)

ALTER TABLE ChiTietHoaDon 
ADD CONSTRAINT FK_ChiTietHoaDon_ThietBi
FOREIGN KEY(MaThietBi) REFERENCES ThietBi(MaThietBi)

ALTER TABLE PhanCong
 ADD CONSTRAINT FK_PHANCONG_NHANVIEN
  FOREIGN KEY(MaNhanVien) REFERENCES NhanVien(MaNhanVien)

ALTER TABLE CongViec 
ADD CONSTRAINT FK_CONGVIEC_BOPHAN 
FOREIGN KEY(MaBoPhan) REFERENCES BoPhan(MaBoPhan)
---Thêm khóa ngoại
ALTER TABLE TaiKhoan
ADD CONSTRAINT FK_TaiKhoan_NhanVien
FOREIGN KEY(MaNhanVien) REFERENCES NhanVien(MaNhanVien)

--
ALTER TABLE NhanVienViPham
ADD CONSTRAINT FK_NhanVienViPham_ViPham
FOREIGN KEY(MaViPham) REFERENCES ViPham(Ma)

--
ALTER TABLE NhanVienViPham
ADD CONSTRAINT FK_NhanVienViPham_NhanVien
FOREIGN KEY(MaNhanVien) REFERENCES NhanVien(MaNhanVien)
--
ALTER TABLE ChiTietThietBi
ADD CONSTRAINT FK_ChiTietThietBi_ThietBi
FOREIGN KEY(MaThietBi) REFERENCES ThietBi(MaThietBi)

--
ALTER TABLE ChiTietKhachHang
ADD CONSTRAINT FK_ChiTietKhachHang_KhachHang
FOREIGN KEY(CMND) REFERENCES KhachHang(CMND)
--
ALTER TABLE ChiTietPhong
ADD CONSTRAINT FK_ChiTietPhong_Phong
FOREIGN KEY(MaPhong) REFERENCES Phong(MaPhong)