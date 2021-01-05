#!/usr/bin/env bash
data_dir=/homes/ql001/Dataset
data_set=PRID2011

CUDA_VISIBLE_DEVICES=0,2,3 python3 ../taudl_video.py \
                               --data-dir ${data_dir} \
                               -d ${data_set} \
                               -b 384 \
                               -a resnet50 \
                               --features 2048 \
                               --epochs 200 \
                               --num-instances 16 \
                               --start_save 100