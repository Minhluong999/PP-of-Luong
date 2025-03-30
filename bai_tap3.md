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
Nhập liệu vào

![image](https://github.com/user-attachments/assets/aa1e9712-0386-445e-93c1-ea5220058ef3)

![image](https://github.com/user-attachments/assets/eaf5affa-9120-411d-bb1e-56b914597adc)

![image](https://github.com/user-attachments/assets/68e94a87-bb1e-4226-813e-ada4cd046247)

![image](https://github.com/user-attachments/assets/dd022e6b-be9f-4c8b-82f8-23e14c513b13)

![image](https://github.com/user-attachments/assets/e97c66cf-5bf3-49db-a60f-b3f6f714e413)


 ...
 
Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học :
Chọn New Query trên bảng tab hoặc 'CTRL N' để tạo 1 truy vấn mới:

![image](https://github.com/user-attachments/assets/3d444af9-d501-47ac-83b0-d77cb587f9d9)

![image](https://github.com/user-attachments/assets/28ad8fbf-3c0c-48c3-88aa-26d5a08323e8)

Tạo diagram mô tả các PK, FK của db:
Trong database QLSV, nhấp chuột phải vào Database ---> New database diagram:

![image](https://github.com/user-attachments/assets/bb5a1110-77ed-4b6d-8e10-a9658b72b03b)

Thực hiện Add các bảng vào Diagram ta được sơ đồ quan hệ sau:

![image](https://github.com/user-attachments/assets/702c90ad-f1e4-476b-b708-1745bcf92d9b)
