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


Thêm ràng buộc vào những bảng có thuộc tính cần thiết ràng buộc

Nhấp chuột phải vào khoảng trống bất kì trong mục 'Design' của bảng ---> Check constraints
![image](https://github.com/user-attachments/assets/09929bab-aead-4ee6-af4d-82227b9b2956)

![image](https://github.com/user-attachments/assets/27475e4e-baa3-4201-86d0-aa8819675c34)

add 
làm tương tự với các bảng khác


Cài khóa chính cho các thuộc tính trong bảng:
Nhấp chuột phải vào thuộc tính ---> set primary key

![image](https://github.com/user-attachments/assets/cf63edcb-d463-4bda-90d6-d968099b7b82)

làm tương tự với các bảng khác

Cài đặt khóa ngoại(FK) cho các thuộc tính:

Chỉ có thể cài khóa ngoại khi thuộc tính đó là khóa chính tại một bảng mà chúng ta muốn liên kết tới

Nhấp chuột phải vào bất kì trong mục 'Design' của bảng ---> Relationship

![image](https://github.com/user-attachments/assets/fa0d655d-13e7-44ed-b5f5-50ef32e74414)

Add(thêm khóa ngoại) ----> Nhấp vào '...' tại Tables And Columns Specification ( liên kết khóa chính của bảng này với khóa ngoại của bảng kia)

Tại Insert And Update Specification ----> chọn Update Rule : CASCADE ( CASCADE để bảo bảo tính nhất quán dữ liệu, nếu dữ liệu của thuộc tính khóa chính bị thay đổi thì dữ liệu của khóa ngoại tại bảng liên kết cũng sẽ thay đổi theo)

![image](https://github.com/user-attachments/assets/82a4978b-b4cf-428c-b341-5fab19080603)


![image](https://github.com/user-attachments/assets/0a2e780f-01dc-4475-9997-4f807d6a5279)


![image](https://github.com/user-attachments/assets/b6fcc7fd-8751-4c16-8fd2-58f7346b35b6)


![image](https://github.com/user-attachments/assets/197b1e9c-a839-4737-8faf-db4249dba2c9)


... với các bảng khác làm tương tự


Liên kết khoá chínhh, khoá ngoại
vào database diagram => new database diagram
add ta được sơ đồ liên kết

![image](https://github.com/user-attachments/assets/128f712f-153c-4134-859c-8220720df27d)

![image](https://github.com/user-attachments/assets/2a0677b1-7b97-4eb5-ac22-84197b741b38)

![image](https://github.com/user-attachments/assets/ddc38bb7-ff27-4fe3-bba7-79dbb761195e)


Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương

![image](https://github.com/user-attachments/assets/d501c88c-5e3d-4943-a8d0-11dc060f0788)

chuột phải vào bảng cần chuyển => script table as => create to => new query ... 
Lệnh Sql sau khi chuyển từ thao tác đồ hoạ của bảng 

![image](https://github.com/user-attachments/assets/9bb287b0-3fee-4d03-a8c2-67b878b69e58)



các bảng khác làm tương tự 











