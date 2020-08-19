CREATE  PROC Revenue(@Summary Float OUTPUT)
AS
	SELECT @Summary = ISNULL(SUM( (T2.SL*T3.GiaTien) - (T2.SL*T3.GiaTien*T2.KhuyenMai)),0)
	FROM HoaDon T1 LEFT JOIN CTHD T2 ON T1.MaHD = T2.MaHD INNER JOIN Sach T3 ON T2.MaSACH = T3.MaSach

DECLARE @Count FLoat
EXEC RevenueTo 6, @Count OUTPUT
SELECT @Count

CREATE PROC TotalPrice(@Price FLoat OUTPUT)
AS
	SELECT @Price = ISNULL(SUM( (T2.SL*T3.GiaTien) - (T2.SL*T3.GiaTien*T2.ChietKhau)),0)
	FROM PhieuNhap T1 LEFT JOIN CTPhieu T2 ON T1.MaPN = T2.MaPN INNER JOIN Sach T3 ON T2.MaSACH = T3.MaSach

DECLARE @Price FLoat
EXEC TotalPrice @Price OUTPUT
SELECT @Price

CREATE  PROC DoanhThu(@Month Int , @Year Int , @TongDT Float OUTPUT)
AS
	SELECT @TongDT = ISNULL(SUM( (T2.SL*T3.GiaTien) - (T2.SL*T3.GiaTien*T2.KhuyenMai)),0)
	FROM HoaDon T1 LEFT JOIN CTHD T2 ON T1.MaHD = T2.MaHD INNER JOIN Sach T3 ON T2.MaSACH = T3.MaSach
	Where MONTH(T1.Ngay) = @Month AND YEAR(T1.Ngay) = @Year

DECLARE @DT Float
EXEC DoanhThu 10, 2019, @DT OUTPUT
SELECT @DT

CREATE  PROC DoanhThu1(@Month Int , @Year Int , @TongDT Float OUTPUT)
AS
	SELECT @TongDT = ISNULL(SUM( (T2.SL*T3.GiaTien) - (T2.SL*T3.GiaTien*T2.KhuyenMai)),0)
	FROM HoaDon T1 LEFT JOIN CTHD T2 ON T1.MaHD = T2.MaHD INNER JOIN Sach T3 ON T2.MaSACH = T3.MaSach
	Where MONTH(T1.Ngay) = @Month AND YEAR(T1.Ngay) = @Year


