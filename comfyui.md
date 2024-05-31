### Install
```bash
# github
git clone https://github.com/comfyanonymous/ComfyUI.git

cd ComfyUI
python3.11 -m venv venv
source venv/bin/activate

# AMD GPUs (Linux only)
# pip3.11 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm5.7
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/rocm6.0

# NVIDIA
# pip3.11 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu121
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu121

### fix "Torch not compiled with CUDA enabled" error
# pip uninstall torch     # and reinstall

#
pip install -r requirements.txt

# use
python main.py --port 7766 --listen

# use gpu 0
python main.py --port 7766 --listen --cuda-device 0
```

### ComfyUI Manager
```bash
https://github.com/ltdrdata/ComfyUI-Manager

# install
cd ComfyUI/custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager
cd ..
python3.11 -m venv venv
source venv/bin/activate
python -m pip install -r requirements.txt
python -m pip install -r custom_nodes/ComfyUI-Manager/requirements.txt
python -m pip install torchvision
```