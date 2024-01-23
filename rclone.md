### Linux
```
cd /root/
wget https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
sudo cp rclone-v*-linux-amd64/rclone /usr/sbin/
rm -rf rclone-*

rclone config
```

###
```
client id: 82190643388- 9kivj61sqn9gbbk5gv5t 41nshtb147nh.apps. googleusercontent.com
secred: GOCSPX- ya1tpak0q51J 17T8g8lxhqYtbE19
```

### Use
```
rclone copy /home/ubuntu/pvbang/ pvbang:Backup
```

### Auto sync
```
crontab -e

# sync vào 3h sáng
which rclone
0 3 * * * /usr/sbin/rclone copy /home/ubuntu/pvbang/ pvbang:Backup

# sync 2 tiếng 1 lần
0 */2 * * * /usr/sbin/rclone copy /home/ubuntu/pvbang/ pvbang:Backup
```