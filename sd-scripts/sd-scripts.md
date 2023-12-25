git clone https://github.com/kohya-ss/sd-scripts.git

###
```bash
conda create -n sdscripts python=3.10
conda activate sdscripts

conda install pytorch==2.1.1 torchvision==0.16.1 torchaudio==2.1.1 pytorch-cuda=12.1 -c pytorch -c nvidia

pip install --upgrade -r requirements.txt
conda install xformers -c xformers
```

mkdir trainings
cd trainings
mkdir img

chmod 755 train.sh
./train.sh


conda activate bitsandbytes
pip install bitsandbytes==0.41.1
conda install scipy

conda deactivate


conda update -n base -c defaults conda