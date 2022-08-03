# ===================== Configuration =====================
# 'Chinese' or 'English'
dataset_name='English'
# BiLSTM, BERT, EANN, DeClarE, MAC
model='BERT'
# Using News Environment or not (set it as 'true' or 'false')
use_news_env='false'

# ===================== Training and Inferring =====================
# CUDA_VISIBLE_DEVICES=1 \
# CUDA_LAUNCH_BLOCKING=1 \
python -u main.py \
--dataset ${dataset_name} --model ${model} --use_news_env ${use_news_env} \
--lr 5e-4 --batch_size 32 --epochs 50 \
--debug true \
--save ckpts/${dataset_name}/${model}_${use_news_env}