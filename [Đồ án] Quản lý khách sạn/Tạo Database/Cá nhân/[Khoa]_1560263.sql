Create table KhachHang
(
	IDKhachHang int not null,
	CMND char(12) not null,
	HoTen nvarchar(200) not null,
	SDT char(20),
	DiaChi nvarchar(200),
	Primary key(IDKhachHang)
)

Create table DichVu
(
	MaDichVu int not null,
	TenDichVu nvarchar(200),
	DonGia decimal, 
	GhiChu nvarchar(200),
	Primary key(MaDichVu)
)

Create table Phong
(
	MaPhong int not null,
	TenPhong nvarchar(200),
	LoaiPhong int,
	SucChua int,
	TinhTrang int,
	DonGia decimal,
	GhiChu nvarchar(200),
	Primary key(MaPhong)
)

Create table HoaDon
(
	MaHoaDon int not null,
	MaNhanVien int not null,
	IDKhachHang int not null,
	NgayTao date,
	ThanhTien int,
	Primary key(MaHoaDon)
)

Create table ThietBi
(
	MaThietBi int not null,
	TenThietBi nvarchar(200),
	HangSanXuat nvarchar(200),
	TinhTrang int,
	GhiChu nvarchar(200),
	Primary key(MaThietBi)
)

Create table HuyPhong
(
	MaPhong int not null,
	IDKhachHang int not null,
	MaNhanVien int not null,
	NgayHuy date,
	GhiChu nvarchar(200),
	Primary key(MaPhong, IDKhachHang)
)

Create table NhanTraPhong
(
	MaPhong int not null,
	IDKhachHang int not null,
	NgayNhan date,
	NgayTra date,
	MaHangKiGui int,
	GhiChu nvarchar(200),
	Primary key(MaPhong, IDKhachhang)
)

ALTER TABLE Phong 
ADD CONSTRAINT fk_Phong_LoaiPhong 
FOREIGN KEY(LoaiPhong) REFERENCES LoaiPhong(MaLoaiPhong)

ALTER TABLE Phong
ADD CONSTRAINT fk_Phong_TinhTrangPhong
FOREIGN KEY(TinhTrang) REFERENCES TinhTrangPhong(MaTinhTrang)

ALTER TABLE HoaDon
ADD CONSTRAINT fk_HoaDon_NhanVien
FOREIGN KEY(MaNhanVien) REFERENCES NhanVien(MaNhanVien)

ALTER TABLE HoaDon
ADD CONSTRAINT fk_HoaDon_KhachHang
FOREIGN KEY(IDKhachHang) REFERENCES KhachHang(IDKhachHang)

ALTER TABLE ThietBi
ADD CONSTRAINT fk_ThietBi_TinhTrangThietBi
FOREIGN KEY(TinhTrang) REFERENCES TinhTrangThietBi(MaTinhTrang)

ALTER TABLE HuyPhong
ADD CONSTRAINT fk_HuyPhong_Phong
FOREIGN KEY(MaPhong) REFERENCES Phong(MaPhong)

ALTER TABLE HuyPhong
ADD CONSTRAINT fk_HuyPhong_KhachHang
FOREIGN KEY(IDKhachHang) REFERENCES KhachHang(IDKhachHang)

ALTER TABLE HuyPhong
ADD CONSTRAINT fk_HuyPhong_NhanVien
FOREIGN KEY(MaNhanVien) REFERENCES NhanVien(MaNhanVien)

ALTER TABLE NhanTraPhong
ADD CONSTRAINT fk_NhanTraPhong_Phong
FOREIGN KEY(MaPhong) REFERENCES Phong(MaPhong)

ALTER TABLE NhanTraPhong
ADD CONSTRAINT fk_NhanTraPhong_KhachHang
FOREIGN KEY(IDKhachHang) REFERENCES KhachHang(IDKhachHang)

ALTER TABLE NhanTraPhong
ADD CONSTRAINT fk_NhanTraPhong_HangKiGui
FOREIGN KEY(MaHangKiGui) REFERENCES HangKiGui(MaHangKiGui)