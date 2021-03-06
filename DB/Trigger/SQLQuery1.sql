CREATE TABLE LOP 
(
	 MALOP VARCHAR(10) PRIMARY KEY,
	 MAKHOA VARCHAR(10),
	 SS INT
)

CREATE TABLE KHOA
(
	MAKHOA VARCHAR(10) PRIMARY KEY,
	TENKHOA NVARCHAR(10)
)

CREATE TABLE MONHOC
(
	MAMH VARCHAR(10) PRIMARY KEY,
	TENMH NVARCHAR(10),
	MAKHOA VARCHAR(10)
)

ALTER TABLE MONHOC
ADD CONSTRAINT FK_MH_KH FOREIGN KEY(MAKHOA) REFERENCES KHOA(MAKHOA)
ON UPDATE CASCADE

ALTER TABLE LOP
ADD CONSTRAINT FK_LOP_KH FOREIGN KEY(MAKHOA) REFERENCES KHOA(MAKHOA)
ON UPDATE CASCADE

ALTER TRIGGER YUPDATE ON KHOA
INSTEAD OF UPDATE
AS
BEGIN
	ALTER TABLE MONHOC DROP CONSTRAINT FK_MH_KH
	ALTER TABLE LOP DROP CONSTRAINT FK_LOP_KH
	UPDATE KHOA SET MAKHOA = (SELECT MAKHOA FROM inserted) WHERE MAKHOA = (SELECT MAKHOA FROM deleted)
	UPDATE MONHOC SET MAKHOA = (SELECT MAKHOA FROM inserted) WHERE MAKHOA = (SELECT MAKHOA FROM deleted)
	UPDATE LOP SET MAKHOA = (SELECT MAKHOA FROM inserted) WHERE MAKHOA = (SELECT MAKHOA FROM deleted)
	ALTER TABLE MONHOC ADD CONSTRAINT FK_MH_KH FOREIGN KEY(MAKHOA) REFERENCES KHOA(MAKHOA)
	ALTER TABLE LOP ADD CONSTRAINT FK_LOP_KH FOREIGN KEY(MAKHOA) REFERENCES KHOA(MAKHOA)
END



UPDATE KHOA
SET MAKHOA = 'KHOA3'
Where MAKHOA = 'KHOA2'

