## Install Python in Linux

### Python 3.10.9
```bash
sudo apt update
sudo apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget

wget https://www.python.org/ftp/python/3.10.9/Python-3.10.9.tgz
tar -xvf Python-3.10.9.tgz
cd Python-3.10.9
./configure --enable-optimizations
sudo make altinstall
python3.10 --version
```

```bash
pip install --upgrade pip
```

```bash
# window
python -m venv venv
venv\Scripts\activate.bat

# linux
python3.11 -m venv venv
source venv/bin/activate

sudo ln -sf /opt/tensorflow/bin/python3.10 /usr/bin/python
echo "alias python='/opt/tensorflow/bin/python3.10'" >> ~/.bashrc
source ~/.bashrc

sudo ln -sf /opt/tensorflow/bin/python3.10 /usr/bin/python3
echo "alias python3='/opt/tensorflow/bin/python3.10'" >> ~/.bashrc
source ~/.bashrc
```

### Install library
```bash
pip install -r requirements.txt
```

### Fix Permission denied
```
chmod +x filename
```