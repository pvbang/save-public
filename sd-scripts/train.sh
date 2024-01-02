#!/bin/bash

cd /home/ubuntu/pvbang/sd-scripts

accelerate launch --num_processes=8 --multi_gpu --num_machines=1 --gpu_ids=0,1,2,3,4,5,6,7 "train_network.py" --config_file=/home/ubuntu/pvbang/trainings/train_network_config.toml