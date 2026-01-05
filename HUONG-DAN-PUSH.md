# Hướng dẫn Push Code lên GitHub

## Vấn đề hiện tại
Code chưa được push lên GitHub vì repository chưa có commit nào.

## Cách giải quyết

### Cách 1: Chạy file batch (Đơn giản nhất)
1. Mở **Terminal** trong VS Code (nhấn `Ctrl + ~` hoặc `View > Terminal`)
2. Chạy lệnh:
   ```bash
   .\PUSH-TO-GITHUB.bat
   ```

### Cách 2: Chạy từng lệnh thủ công
Mở Terminal trong VS Code và chạy các lệnh sau:

```bash
# 1. Kiểm tra trạng thái
git status

# 2. Thêm tất cả file vào staging
git add .

# 3. Commit với message
git commit -m "Initial commit: Finsmart project with AdminDashboard fix"

# 4. Đảm bảo đang ở branch main
git branch -M main

# 5. Push lên GitHub
git push -u origin main
```

## Kiểm tra sau khi push
Sau khi push thành công, bạn có thể kiểm tra tại:
**https://github.com/diemtienhue/FINSMART1**

## Lưu ý
- Đảm bảo bạn đã đăng nhập GitHub trong VS Code hoặc đã cấu hình credentials
- Nếu gặp lỗi authentication, bạn có thể cần:
  - Sử dụng Personal Access Token thay vì password
  - Hoặc cấu hình SSH key

