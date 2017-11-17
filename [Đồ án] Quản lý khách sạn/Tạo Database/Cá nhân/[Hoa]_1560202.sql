create database QLKhachSan
go
use QLKhachSan

--Loai phong
create table LoaiPhong
(
	MaLoaiPhong int IDENTITY(1,1)not null,
	TenLoaiPhong nvarchar(100),
	primary key(MaLoaiPhong)
);
-- Chi tiet phong
create table ChiTietPhong
(
	MaPhong int not null,
	Tang int check(Tang>0),
	DayNha char(10),
	ThoiGianSuDungGanNhat datetime check(ThoiGianSuDungGanNhat<=CURRENT_TIMESTAMP),
	SoLanSudung int check(SoLanSuDung>0),
	primary key(MaPhong)

);
--TinhTrangPhong
create table TinhTrangPhong
(
	MaTinhTrang int IDENTITY(1,1) not null ,
	TenTinhTrang nvarchar(100),
	primary key(MaTinhTrang)
);
--Tinh trang thiet bi
create table TinhTrangThietBi
(
	MaTinhTrang int IDENTITY(1,1) not null,
	TenTinhTrang nvarchar(100),
	primary key(MaTinhTrang)
);
--Chi tiet thiet bi
create table ChiTietThietBi
(
	MaThietBi int not null,
	NgayMua date check(NgayMua<=),
	NgaySuaChuaGanNhat date,
	GiaTien decimal,
	SoLanSuaChua int,
	HanBaoHanh date,
	primary key(MaThietBi)
);

--Phan cong
create table PhanCong
(
	MaPhanCong int IDENTITY(1,1)not null,
	MaNhanVien int not null,
	ThoiGianPhanCong datetime,
	MaCongViec int,
	ThoiGianBatDau datetime,
	ThoiGianKetThuc datetime,
	GhiChu nvarchar(200),
	primary key(MaPhanCong,MaNhanVien),

);
--Cong viec
create table CongViec
(
	MaCongViec int IDENTITY(1,1)not null,
	MaBoPhan int,
	TenCongViec nvarchar(200),
	ThoiGianBatDau datetime,
	ThoiGianKetThuc datetime,
	DiaDiem nvarchar(200),
	GhiChu nvarchar(200),
	primary key(MaCongViec,MaBoPhan),

);