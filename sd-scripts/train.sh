#!/bin/bash

cd /home/ubuntu/pvbang/sd-scripts

accelerate launch "train_network.py" --config_file=/home/ubuntu/pvbang/trainings/train_network_config.toml