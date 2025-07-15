-- 1. Bảng Người Dùng
CREATE TABLE NguoiDung (
    MaNguoiDung INT PRIMARY KEY AUTO_INCREMENT,
    Ten NVARCHAR(100),
    Email NVARCHAR(100),
    MatKhau NVARCHAR(100)
);

-- 2. Bảng Truyện
CREATE TABLE Truyen (
    MaTruyen INT PRIMARY KEY AUTO_INCREMENT,
    NgayTao DATE,
    TuaDe NVARCHAR(200),
    MoTa TEXT,
    TheLoai NVARCHAR(100),
    MaTacGia NVARCHAR(100),
    AnhBia NVARCHAR(255)
);

-- 3. Bảng Truyện - Chương
CREATE TABLE TruyenChuong (
    MaChuong INT PRIMARY KEY AUTO_INCREMENT,
    MaTruyen INT,
    ThuTuChuong INT,
    NgayTao DATE,
    NoiDungChuong TEXT,
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
);

-- 4. Bảng Lịch Sử Đọc Truyện
CREATE TABLE LichSuDocTruyen (
    MaLichSu INT PRIMARY KEY AUTO_INCREMENT,
    MaNguoiDung INT,
    MaChuong INT,
    ThoiGianDocLanCuoi DATETIME,
    TrangThaiDaDoc BOOLEAN,
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung),
    FOREIGN KEY (MaChuong) REFERENCES TruyenChuong(MaChuong)
);

-- 5. Bảng Đánh Giá
CREATE TABLE DanhGia (
    MaDanhGia INT PRIMARY KEY AUTO_INCREMENT,
    MaTruyen INT,
    MaNguoiDung INT,
    SoSao INT CHECK (SoSao BETWEEN 1 AND 5),
    NgayDanhGia DATE,
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen),
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung)
);

-- 6. Bảng Bình Luận
CREATE TABLE BinhLuan (
    MaBinhLuan INT PRIMARY KEY AUTO_INCREMENT,
    MaNguoiDung INT,
    MaChuong INT,
    MaTruyen INT,
    NoiDungBinhLuan TEXT,
    NgayBinhLuan DATETIME,
    TenNguoiDung NVARCHAR(100),
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung),
    FOREIGN KEY (MaChuong) REFERENCES TruyenChuong(MaChuong),
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
);

-- 7. Bảng Thanh Toán
CREATE TABLE ThanhToan (
    MaThanhToan INT PRIMARY KEY AUTO_INCREMENT,
    MaNguoiDung INT,
    PhuongThucThanhToan NVARCHAR(100),
    ThoiGianThanhToan DATETIME,
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung)
);

-- 8. Bảng Tìm Kiếm
CREATE TABLE TimKiem (
    MaTimKiem INT PRIMARY KEY AUTO_INCREMENT,
    MaTruyen INT,
    TuKhoa NVARCHAR(100),
    NgayTimKiem DATETIME,
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
);
