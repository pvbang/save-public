## Use Git

### Login git (đăng nhập lúc mới tải git, sau này không cần nữa)
```bash
git config --global user.name "abc"                   # abc là tên tài khoản git, cần vào github để tạo tài khoản trước
git config --global user.email abc@gmail.com          # email dùng để đăng ký tài khoản trên
```

### Create new repository (tạo dự án mới, trưởng dự án tạo)
```bash
git init
git add .
git commit -m "messenger"
git branch -M main
git remote add origin https://github.com/ilyouu/save-public.git       # <<link repository>>.git
git push -u origin main
```

### Clone repository (Lấy repository về máy)
```bash
git clone https://github.com/ilyouu/save-public.git       # <<link repository>>.git
```

### Create new branch (Tạo nhánh mới)
```bash
git checkout -b nhanh1      # nhanh1 là tên nhánh, thường đặt tên của bản thân hoặc tính năng mới, ví dụ feature/cat-class
# or
git branch nhanh1
```

### Kiểm tra nhánh
```bash
git branch
```

### Đi đến nhánh khác
```bash
git checkout nhanh1     # nhanh1 là tên nhánh muốn đến
```

### Gộp nhánh
```bash
git checkout main
git merge nhanh1        # gộp nhanh1 vào nhánh main, tức là lưu thay đổi từ nhanh1 vào main
```

### Xoá nhánh
```bash
git checkout -d nhanh1
```

### Xem vị trí hiện tại và các nhánh khác
```bash
git log --oneline
```

### Cập nhật code từ máy lên github
```bash
git add .
git commit -m "note"       # -m "..." nơi viết ghi chú về điều mình vừa thực hiện, ví dụ: git commit -m "Fix: missing eat function" 
git push                   # or: git push origin nhanh1
```
### Cập nhật code từ github về máy
```bash
git pull                   # or: git pull origin main
```

### Phục hồi code từ commit cuối
```bash
git restore .
```

### Phục hồi từ commit bất kỳ
```bash
git checkout 000000 -- .      # 000000 là mã commit, sau -- có thể chọn file muốn phục hồi
```

