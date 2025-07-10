-- Bảng Người dùng
CREATE TABLE NguoiDung (
    MaNguoiDung INT PRIMARY KEY,
    Ten VARCHAR(100),
    Email VARCHAR(100),
    MatKhau VARCHAR(100)
);

-- Bảng Truyện
CREATE TABLE Truyen (
    MaTruyen INT PRIMARY KEY,
    TuaDe VARCHAR(255),
    MoTa TEXT,
    TheLoai VARCHAR(100),
    MaTacGia INT,
    AnhBia VARCHAR(255),
    NgayTao DATE,
    FOREIGN KEY (MaTacGia) REFERENCES NguoiDung(MaNguoiDung)
);

-- Bảng Truyện chương
CREATE TABLE TruyenChuong (
    MaChuong INT PRIMARY KEY,
    MaTruyen INT,
    ThuTuChuong INT,
    NgayTao DATE,
    NoiDungChuong TEXT,
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
);

-- Bảng Đánh giá
CREATE TABLE DanhGia (
    MaDanhGia INT PRIMARY KEY,
    MaNguoiDung INT,
    MaTruyen INT,
    SoSao INT,
    NgayDanhGia DATE,
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung),
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
);

-- Bảng Bình luận
CREATE TABLE BinhLuan (
    MaBinhLuan INT PRIMARY KEY,
    MaNguoiDung INT,
    MaChuong INT,
    MaTruyen INT,
    NoiDungBinhLuan TEXT,
    NgayBinhLuan DATE,
    TenNguoiDung VARCHAR(100),
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung),
    FOREIGN KEY (MaChuong) REFERENCES TruyenChuong(MaChuong),
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
);

-- Bảng Thanh toán
CREATE TABLE ThanhToan (
    MaThanhToan INT PRIMARY KEY,
    MaNguoiDung INT,
    SoTien DECIMAL(10,2),
    PhuongThucThanhToan VARCHAR(100),
    ThoiGianThanhToan DATE,
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung)
);

-- Bảng Tìm kiếm
CREATE TABLE TimKiem (
    MaTimKiem INT PRIMARY KEY,
    MaTruyen INT,
    TuKhoa VARCHAR(255),
    NgayTimKiem DATE,
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
);

-- Bảng Lịch sử đọc truyện
CREATE TABLE LichSuDocTruyen (
    MaNguoiDung INT,
    MaTruyen INT,
    MaChuong INT,
    ThoiGianDocLanCuoi DATE,
    TrangThaiDaDoc VARCHAR(20),
    PRIMARY KEY (MaNguoiDung, MaTruyen, MaChuong),
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung),
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen),
    FOREIGN KEY (MaChuong) REFERENCES TruyenChuong(MaChuong)
);
