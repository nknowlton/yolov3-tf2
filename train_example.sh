#! /bin/bash

# Example Train with added options
 python /home/nick/git/yolo-v3-tf2-nk/train_NK.py \
	--dataset /fastdata/embryo/voc2012_train.tfrecord \
	--val_dataset /fastdata/embryo/voc2012_val.tfrecord \
	--classes /home/nick/git/yolov3-tf2/data/voc2012.names \
	--num_classes 20 \
	--mode fit --transfer darknet \
	--batch_size 64 \
	--epochs 20 \
    --logs /home/nick/tmp \
	--weights /home/nick/git/yolov3-tf2/checkpoints/yolov3.tf \
	--weights_num_classes 80 

python /home/nick/git/yolo-v3-tf2-nk/train_NK.py \
--dataset /fastdata/embryo/tfrecords/train_1241.tfrecords \
--val_dataset /fastdata/embryo/tfrecords/test_1241.tfrecords \
--classes /fastdata/embryo/tfrecords/random/classes.txt \
--num_classes 2 \
--mode fit \
--size 454 \
--transfer darknet \
--batch_size 16 \
--epochs 1000 \
--learning_rate 0.001 \
--weights /home/nick/git/yolov3-tf2/checkpoints/yolov3.tf \
--weights_num_classes 80 \
--logs 1241_images_large

python /home/nick/git/yolo-v3-tf2-nk/train_NK.py \
--dataset /fastdata/embryo/tfrecords/train_1241.tfrecords \
--val_dataset /fastdata/embryo/tfrecords/test_1241.tfrecords \
--classes /fastdata/embryo/tfrecords/random/classes.txt \
--num_classes 2 \
--mode fit \
--size 454 \
--transfer darknet \
--batch_size 16 \
--epochs 1000 \
--learning_rate 0.001 \
--useMish True \
--weights /home/nick/git/yolov3-tf2/checkpoints/yolov3.tf \
--weights_num_classes 80 \
--logs 1241_images_mish
# Scratch

python /home/nick/git/yolo-v3-tf2-nk/train_NK.py \
--dataset /fastdata/embryo/tfrecords/train_1241.tfrecords \
--val_dataset /fastdata/embryo/tfrecords/test_1241.tfrecords \
--classes /fastdata/embryo/tfrecords/random/classes.txt \
--num_classes 2 \
--mode fit \
--size 454 \
--batch_size 8 \
--epochs 1000 \
--learning_rate 0.001 \
--useMish True \
--logs 1241_images_mish




# tiny
python /home/nick/git/yolo-v3-tf2-nk/train_NK.py \
--dataset /fastdata/embryo/tfrecords/train_1241.tfrecords \
--val_dataset /fastdata/embryo/tfrecords/test_1241.tfrecords \
--classes /fastdata/embryo/tfrecords/random/classes.txt \
--num_classes 2 \
--mode fit \
--size 416 \
--tiny True \
--transfer darknet \
--batch_size 16 \
--epochs 1000 \
--learning_rate 0.001 \
--useMish True \
--weights /home/nick/git/yolo-v3-tf2-nk/checkpoints/yolov3-tiny.tf \
--weights_num_classes 80 \
--logs 1241_images_mish_tiny




python /home/nick/git/yolov3-tf2/detect_NK.py \
        --classes /fastdata/embryo/tfrecords/random/classes.txt \
        --num_classes 2 \
        --weights /home/nick/git/yolo-v3-tf2-nk/checkpoints/yolov3_best_model.tf \
        --image /fastdata/embryo/tfrecords/test \
        --output /fastdata/embryo/tfrecords/test_det_raw


python /home/nick/git/yolov3-tf2/detect_NK.py \
        --classes /fastdata/embryo/tfrecords/random/classes.txt \
        --num_classes 2 \
		--tiny True \
        --weights /home/nick/git/yolo-v3-tf2-nk/checkpoints/yolov3_best_model.tf \
        --image /fastdata/embryo/tfrecords/test \
        --output /fastdata/embryo/tfrecords/test_det_tiny
