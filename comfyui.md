### Install
```bash
# github
git clone https://github.com/comfyanonymous/ComfyUI.git

cd ComfyUI
python3.10 -m venv venv
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
python3.10 -m venv venv
source venv/bin/activate

cd ComfyUI/custom_nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager
cd ..
python -m pip install -r custom_nodes/ComfyUI-Manager/requirements.txt
```


### Config models path
```bash
echo "comfyui:
    checkpoints: /home/ubuntu/pvbang/saves/checkpoints/
    clip: /home/ubuntu/pvbang/saves/clip/
    clip_vision: /home/ubuntu/pvbang/saves/clip_vision/
    configs: /home/ubuntu/pvbang/saves/configs/
    controlnet: /home/ubuntu/pvbang/saves/controlnet/
    embeddings: /home/ubuntu/pvbang/saves/embeddings/
    loras: /home/ubuntu/pvbang/saves/loras/
    upscale_models: /home/ubuntu/pvbang/saves/upscale_models/
    vae: /home/ubuntu/pvbang/saves/vae/" > extra_model_paths.yaml
```
