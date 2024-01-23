### Install
```bash
# github
https://github.com/comfyanonymous/ComfyUI.git

python3.12 -m venv venv
source venv/bin/activate

# install
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu121
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu121
pip uninstall torch
pip install -r requirements.txt

# use
python main.py --port 7676 --cuda-device 7
```