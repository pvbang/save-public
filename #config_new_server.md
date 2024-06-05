```bash
############################################################################################################ 
### Remote Desktop
sudo apt update
sudo apt install ubuntu-desktop -y
sudo apt install xrdp -y
sudo adduser xrdp ssl-cert

sudo systemctl restart xrdp
sudo passwd ubuntu


############################################################################################################
### Cloudflare: https://one.dash.cloudflare.com/195f5955360a5210b2802446fc2de018/networks/tunnels/cfd_tunnel/2292a62f-ac46-4fd8-a269-8395e7a16a44/edit?tab=overview
curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb && 
sudo dpkg -i cloudflared.deb && 
sudo cloudflared service install eyJhIjoiMTk1ZjU5NTUzN...

# And Config Public host names Cloudflare


############################################################################################################
### Install Nvidia
sudo add-apt-repository ppa:graphics-drivers/ppa
ubuntu-drivers devices
sudo ubuntu-drivers autoinstall
sudo reboot

# Open VPS and Download models, folder ComfyUI,...


############################################################################################################
### Config models path
mkdir pvbang
cd pvbang
mkdir saves
cd saves
mkdir checkpoints clip clip_vision configs controlnet embeddings loras upscale_models vae
cd checkpoints
mkdir SD1.5 SDXL Inpainting SVD

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


############################################################################################################
### API 
# API MekongAI
screen -S api-1
cd pvbang/python-comfyui-gradio
python3.10 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python app.py

# API Other Website
screen -S api-2
cd pvbang/python-comfyui-gradio
source venv/bin/activate
python app_other_website.py

# API Image
screen -S api-images
cd pvbang/python-comfyui-gradio
source venv/bin/activate
python app_image.py


############################################################################################################
### Clone ComfyUI Image Generate
# comfyui-image-generate-1
screen -S comfyui-image-generate-1
cd pvbang/comfyui-image-generate-1/ComfyUI
source venv/bin/activate
python main.py --port 7700 --listen --cuda-device 0

# comfyui-image-generate-2
cp -r comfyui-image-generate-1 comfyui-image-generate-2
screen -S comfyui-image-generate-2
cd pvbang/comfyui-image-generate-2/ComfyUI
source venv/bin/activate
python main.py --port 7702 --listen --cuda-device 1

# comfyui-image-generate-3
cp -r comfyui-image-generate-1 comfyui-image-generate-3
screen -S comfyui-image-generate-3
cd pvbang/comfyui-image-generate-3/ComfyUI
source venv/bin/activate
python main.py --port 7704 --listen --cuda-device 2

# comfyui-image-generate-4
cp -r comfyui-image-generate-1 comfyui-image-generate-4
screen -S comfyui-image-generate-4
cd pvbang/comfyui-image-generate-4/ComfyUI
source venv/bin/activate
python main.py --port 7706 --listen --cuda-device 3

# comfyui-image-generate-5
cp -r comfyui-image-generate-1 comfyui-image-generate-5
screen -S comfyui-image-generate-5
cd pvbang/comfyui-image-generate-5/ComfyUI
source venv/bin/activate
python main.py --port 7708 --listen --cuda-device 4

# comfyui-image-generate-6
cp -r comfyui-image-generate-1 comfyui-image-generate-6
screen -S comfyui-image-generate-6
cd pvbang/comfyui-image-generate-6/ComfyUI
source venv/bin/activate
python main.py --port 7710 --listen --cuda-device 5

# comfyui-image-generate-7
cp -r comfyui-image-generate-1 comfyui-image-generate-7
screen -S comfyui-image-generate-7
cd pvbang/comfyui-image-generate-7/ComfyUI
source venv/bin/activate
python main.py --port 7712 --listen --cuda-device 6

### ComfyUI Image Face Swap
screen -S comfyui-face-swap-1
cd pvbang/comfyui-face-swap-1/ComfyUI
source venv/bin/activate
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu121
pip install -r requirements.txt
python main.py --port 7800 --listen --cuda-device 1

### ComfyUI Image Outfit Swap
screen -S comfyui-ootdiffusion-1
cd pvbang/comfyui-ootdiffusion-1/ComfyUI
source venv/bin/activate
pip install -r requirements.txt
pip install -r custom_nodes/ComfyUI-OOTDiffusion/requirements.txt
python main.py --port 7900 --listen --cuda-device 2

### ComfyUI Image Children
screen -S comfyui-child
cd cd pvbang/comfyui-child/ComfyUI
source venv/bin/activate
pip install -r requirements.txt
python main.py --port 8000 --listen --cuda-device 3

### ComfyUI Image Nude
screen -S comfyui-image-nude
cd pvbang/comfyui-image-nude/ComfyUI
source venv/bin/activate
python main.py --port 7600 --listen --cuda-device 4


############################################################################################################
```