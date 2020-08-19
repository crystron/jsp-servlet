ALTER PROC Login(@Name VARCHAR(20), @Pass Varchar(20))
AS
	SELECT MaTK, TenTK, ChucVu
	FROM TaiKhoan
	WHERE TenTK = @Name AND MatKhau = @Pass

EXEC Login 'Admin', '123'