BÀI TẬP VỀ NHÀ 02 của SV: Lăng Nguyễn Minh Lượng. MSSV: k225480106044 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 25/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.

BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Đăng nhập Sql

![image](https://github.com/user-attachments/assets/20bd9f26-5515-4be9-aa5d-fddc26a90049)

Tạo database
Sau khi kết nối thành công, nhấp chuột phải vào Database --> New Database

![image](https://github.com/user-attachments/assets/9dc43bd8-a731-40aa-99ee-3b4a1f83cdd4)

Đặt tên cho Database và nhấn 'Ok'

![image](https://github.com/user-attachments/assets/958cc84f-7cd5-4428-9b38-fe5655002901)
Tạo Bảng
Nhấp vào dấu '+' tại Database vừa tạo, ta sẽ thấy có tệp 'Tables'

![image](https://github.com/user-attachments/assets/8a6db9b6-55bb-4be0-8a82-38731340349a)


Nhấp chuột phải vào 'Tables' --> New ---> Table

Thực hiện thêm các thuộc tính theo yêu cầu vào mỗi bảng với kiểu dữ liệu phù hợp với thuộc tính đó ---> Ctrl S để lưu bảng và đặt tên bảng

![image](https://github.com/user-attachments/assets/7c49f0df-173f-4a3f-b124-0cfd384a3336)


![image](https://github.com/user-attachments/assets/4ff785d0-cac7-4a57-8d39-920e64cb42bd)


![image](https://github.com/user-attachments/assets/7394eee9-32a6-4f18-9399-546aa9d21dd4)


![image](https://github.com/user-attachments/assets/440a4e50-dbb5-4168-9d27-bb9c82e9f83e)


![image](https://github.com/user-attachments/assets/ec633e54-2639-4003-89af-63b21cd38cd5)


![image](https://github.com/user-attachments/assets/309c3ada-b2ee-4a2c-8694-ff7ad68cdd0b)


![image](https://github.com/user-attachments/assets/e3886f07-1568-4994-b4ca-71f86f8807ca)


![image](https://github.com/user-attachments/assets/007ae36b-fd5c-46e7-9428-6d64d5e0c062)


![image](https://github.com/user-attachments/assets/5bf01081-adad-4fd0-964c-c3cc40896323)


![image](https://github.com/user-attachments/assets/9d9f027d-59b6-40b8-8e86-b3188eb67096)














