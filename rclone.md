### Linux
```bash
cd /root/
wget https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
sudo cp rclone-v*-linux-amd64/rclone /usr/sbin/
rm -rf rclone-*

rclone config
```

###
```bash
client id: 82190643388- 9kivj61sqn9gbbk5gv5t 41nshtb147nh.apps. googleusercontent.com
secred: GOCSPX- ya1tpak0q51J 17T8g8lxhqYtbE19
```

### Use
```bash
rclone copy /home/ubuntu/pvbang/ pvbang:Backup
```

### Auto sync
```bash
which rclone
crontab -e

# sync vào 3h sáng
0 3 * * * /usr/sbin/rclone copy /home/ubuntu/pvbang/ pvbang:Backup

# sync 2 tiếng 1 lần
0 */2 * * * /usr/sbin/rclone copy /home/ubuntu/pvbang/ pvbang:Backup
```


### Cách setup tự động Backup các file lớn
```bash
nano backup.sh
```

```bash 
# trong backup.sh

#!/bin/bash

# Đường dẫn tới thư mục cần sao lưu
source_dir="/tmp2/pvbang/ComfyUI/"

# Đường dẫn tới thư mục sao lưu trên remote
dest_dir="pvb:comfyuibackup"

# Duyệt qua từng tệp tin trong thư mục nguồn
for file in $(find $source_dir -type f); do
    # Xác định kích thước của tệp tin
    file_size=$(wc -c <"$file")

    # Sao lưu tệp tin với kích thước đã xác định
    rclone rcat --size $file_size $dest_dir/$(basename $file) <"$file"
done
```

```bash
chmod +x backup.sh

crontab -e

# sync vào 1h sáng
0 1 * * * /bin/bash /path/to/backup.sh
```