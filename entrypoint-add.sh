#!/bin/bash

service ssh start

sleep 120

deepspeed \
    --num_nodes 4 \
    --max_elastic_nodes 8 \
    --min_elastic_nodes 1 \
    --num_gpus 1 \
    --force_multi \
    --hostfile ./hosts_add.txt \
    --elastic_training \
    --master_port 49091 \
    --master_addr worker-0 \
    train_bert_ds_el_script.py \
        --checkpoint_dir ./checks_el
