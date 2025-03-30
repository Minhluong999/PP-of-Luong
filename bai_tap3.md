BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 30/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1.Sửa bảng DKMH và bảng Điểm từ bài tập 2
sửa bảng DKMH
![image](https://github.com/user-attachments/assets/bc455947-21fa-4563-b71d-568ff053b108)
bảng Diem
![image](https://github.com/user-attachments/assets/877f3b1f-3bcb-4856-9feb-ede5ce8a95d9)
Tạo FK của bảng Diem liên kết với PK của bảng DKMH (id_dk)
![image](https://github.com/user-attachments/assets/ee78c24c-95ac-4518-b613-d42c2a56dca9)
2.Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
Thao tác đồ họa nhập có kiểm soát từ tính năng Edit trên UI cho các bảng: nhấp chuột phải vào dbo ===> edit top 200 rows
![image](https://github.com/user-attachments/assets/aa1e9712-0386-445e-93c1-ea5220058ef3)
Nhập dữ liệu vào
