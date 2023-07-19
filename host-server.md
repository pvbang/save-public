## Host server (linux):

### Truy cập server thông qua Password
```bash
ssh root@11.111.11.111      # host example 11.111.11.111
password123                 # password
```

### Truy cập server thông qua pem file
```bash
ssh -i file.pem root@111.111.111.111        # host
```

### Cách duy trì host dù đã tắt terminal (screen)
```bash
# duy trì màn hình này, tắt cửa sổ thì lệnh vẫn chạy
screen

# xem tất cả screen
screen -ls

# xóa screen
screen -XS <session-id> quit
```

### Run server python trên host
```bash
# file fast api ở trong app.py 
uvicorn app:app --host 111.111.111.111 --port 1000
```






### Host server python using apache2
```bash
# nhớ thay example.com thành tên domain

# cài đặt client Let’s Encrypt
sudo add-apt-repository ppa: certbot / certbot
sudo apt-get update
sudo apt-get install python-certbot-apache

# install chứng chỉ ssl
sudo certbot --apache -d example.com        # sudo certbot --apache -d example.com -d www.example.com

# test ssl online
https://www.ssllabs.com/ssltest/analyze.html?d=example.com&latest

# tư động gia hạn chứng chỉ
sudo certbot renew --dry-run

# chỉnh sửa host
# 
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/example.com.conf

# nano vào địa chỉ sau để chỉnh sửa file
nano /etc/apache2/sites-available/example.com.conf

# thay setting này vào file example.com.conf
<VirtualHost *:80>
    #ServerName www.example.com

    ServerName server-name
    ServerAdmin webmaster@localhost
    ServerAlias server-alias
    
    #DocumentRoot /document/root/

    <Proxy *>
        AuthType none
        AuthBasicAuthoritative Off
        SetEnv proxy-chain-auth On
        Order allow,deny
        Allow from all
    </Proxy>

    ProxyPass / http://127.0.0.1:port/
    ProxyPassReverse / http://127.0.0.1:port/

    <Directory /document/root/>
        Order deny,allow
        Allow from all
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/server-error.log
    LogLevel debug
    CustomLog ${APACHE_LOG_DIR}/server-access.log combined
</VirtualHost>

# cài đặt proxy và restart apache
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo systemctl restart apache2

# bước cuối cùng: cầu nguyện cho nó không gặp lỗi nào :v
```