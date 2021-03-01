# recommended paddle.__version__ == 2.0.0
# python3 -m paddle.distributed.launch --log_dir=./debug/ --gpus '0,1,2,3,4,5,6,7'  tools/train.py -c configs/rec/rec_mv3_none_bilstm_ctc.yml

# ZJ resnet50
#python3 -m paddle.distributed.launch tools/train.py -c configs/det/det_r50_vd_db.yml -o Global.pretrain_weights=./pretrain_models/det_r50_vd_db_v2.0_train/

#FLAGS_selected_gpus=0,1,2 python3.5 tools/train.py -c configs/det/ch_ppocr_v2.0/ch_det_res18_db_v2.0.yml -o Global.pretrain_weights=./pretrain_models/ResNet18_vd_pretrained/
# resnet 18
FLAGS_selected_gpus=0,1,2 python3.5 tools/train.py -c configs/det/ch_ppocr_v2.0/ch_det_res18_db_v2.0.yml -o Global.pretrain_weights=./pretrain_models/ResNet18_vd_pretrained/
