-- 15
CREATE TABLE ViPham
{
    Ma int IDENTITY(1,1),
    TenViPham nvarchar(200) not null,
    SoTienPhat decimal check(SoTienPhat>=0),
    PRIMARY KEY (Ma)
}

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
    MaKhachHang int IDENTITY(1,1),
    MaDichVu int not null,
    ThoiGian date,
    DonGia int check(DonGia>=0),
    PRIMARY KEY (MaKhachHang, MaDichVu)
)

--19
CREATE TABLE  BoPhan
(
    MaBoPhan int IDENTITY(1,1),
    TenBoPhan nvarchar(200),
    TruongBoPhan int not null,
    NgayThanhLap date check(NgayThanhLap<=GETDATE()),
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
    PRIMARY KEY (MaHoaDon, MaPhong, MaDichVu, MaThietBi)
)

-- Foreign key
ALTER TABLE ChiTietDichVu 
ADD CONSTRAINT fk_ChiTietDichVu_NhanVien
FOREIGN KEY(QuanLy) REFERENCES NhanVien(MaNhanVien)

ALTER TABLE KhachHangSuDungDichVu 
ADD CONSTRAINT fk_KhachHangSuDungDichVu_KhachHang
FOREIGN KEY(MaKhachHang) REFERENCES KhachHang(IDKhachHang)

ALTER TABLE KhachHangSuDungDichVu 
ADD CONSTRAINT fk_KhachHangSuDungDichVu_DichVu
FOREIGN KEY(MaDichVu) REFERENCES DichVu(MaDichVu)

ALTER TABLE BoPhan 
ADD CONSTRAINT fk_BoPhan_NhanVien
FOREIGN KEY(TruongBoPhan) REFERENCES NhanVien(MaNhanVien)

ALTER TABLE ChiTietHoaDon 
ADD CONSTRAINT fk_ChiTietHoaDon_Phong
FOREIGN KEY(MaPhong) REFERENCES Phong(MaPhong)

ALTER TABLE ChiTietHoaDon 
ADD CONSTRAINT fk_ChiTietHoaDon_DichVu
FOREIGN KEY(MaDichVu) REFERENCES DichVu(MaDichVu)

ALTER TABLE ChiTietHoaDon 
ADD CONSTRAINT fk_ChiTietHoaDon_ThietBi
FOREIGN KEY(MaThietBi) REFERENCES ThietBi(MaThietBi)