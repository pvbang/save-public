### Tutorial
```bash
https://www.youtube.com/watch?v=Tp7WR9Qb9vk&t
```

###
```bash
git clone https://github.com/kohya-ss/sd-scripts.git
```

### Install
```bash
conda create -n sdscripts python=3.10
conda activate sdscripts

conda install pytorch==2.1.1 torchvision==0.16.1 torchaudio==2.1.1 pytorch-cuda=12.1 -c pytorch -c nvidia

pip install --upgrade -r requirements.txt
conda install xformers -c xformers
```

### Run
```bash
mkdir trainings
cd trainings
mkdir images output log

chmod 755 train.sh
./train.sh
```

### Fix
```bash
conda activate bitsandbytes
pip install bitsandbytes==0.41.1
conda install scipy

conda deactivate

conda update -n base -c defaults conda
```

### Train Caption
```bash
# train caption
https://colab.research.google.com/drive/1_WbjLtik3YZqdvcU5iU8x6PsxyHpVzPu?usp=sharing
```