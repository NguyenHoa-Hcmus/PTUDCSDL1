-- 15
CREATE TABLE ViPham
(
    Ma int,
    TenViPham nvarchar(200),
    SoTienPhat decimal,
    PRIMARY KEY (Ma)
)

-- 16
CREATE TABLE ChiTietKhachHang
(
    CMND char(20),
    SoLanDatPhong int,
    TongTien decimal,
    SoLuongNgay int,
    SoTienPhat decimal,
    TongTienDichVu decimal,
    PRIMARY KEY (CMND)
)

-- 17
CREATE TABLE ChiTietDichVu
(
    MaDichVu int,
    QuanLy int,
    NgayLap date,
    NgayHuy date,
    TongDoanhThu decimal,
    PRIMARY KEY (MaDichVu)
)

-- 18
CREATE TABLE KhachHangSuDungDichVu
(
    MaKhachHang int,
    MaDichVu int,
    ThoiGian date,
    DonGia int,
    PRIMARY KEY (MaKhachHang, MaDichVu)
)

--19
CREATE TABLE  BoPhan
(
    MaBoPhan int,
    TenBoPhan nvarchar(200),
    TruongBoPhan int,
    NgayThanhLap date,
    PRIMARY KEY (MaBoPhan)
)

-- 20
CREATE TABLE ChucDanh
(
    MaChucDanh int,
    TenChucDanh nvarchar(200),
    PRIMARY KEY (MaChucDanh)
)

-- 21
CREATE TABLE ChiTietHoaDon
(
    MaHoaDon int,
    MaPhong int,
    GiaPhong decimal,
    MaDichVu int,
    GiaDichVu decimal,
    MaThietBi int,
    GiaThietBi decimal,
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