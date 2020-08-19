Create Proc searchBookByName(@StrSearch Nvarchar(50))
as
BEGIN
		SELECT *
		FROM Sach
		WHERE  TenSach Like N'%'+@StrSearch+'%'   OR   MaSach Like N'%'+@StrSearch+'%' 
END

searchBookByName 'Đấm'