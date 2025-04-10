USE [QLSV]
GO
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'K22548044', N'nguyen van a', CAST(N'2000-01-01' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'k22548045', N'nguyen van b', CAST(N'2000-02-02' AS Date))
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'K58KMT', N'ki thuat may tinh ')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'K58KTP', N'ki thuat phan mem')
GO
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'K58KMT', N'K22548045', N'Sinh Vien')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'K58KTP', N'K22548044', N'Sinh Vien')
GO
INSERT [dbo].[GVCN] ([maLop], [maGV], [HK]) VALUES (N'K58KTP', N'K22548011', N'2024')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'CNTT', N'CSDL', N'Dien tu')
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (1, 1, 10)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (2, 2, 5)
GO
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (1, N'K58KTP', N'K22548044', 10, 50)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (2, NULL, NULL, NULL, NULL)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [NgaySinh], [maBM]) VALUES (N'K22548011', N'nguyen thi a', CAST(N'1990-01-01' AS Date), N'CNTT')
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'01', N'Dien tu')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'02', N'Co khi')
GO
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [maMon], [maGV]) VALUES (N'K58KTP', N'ki thuat phan mem', N'1', N'A1', N'K22548011')
GO
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (N'A1', N'CSDL', 3)
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (N'A2', N'MKT', 2)
GO
