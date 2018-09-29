DIR=$PWD
cd $DIR
echo current dir is $PWD

# 设置目录，避免module找不到的问题
export PYTHONPATH=$PYTHONPATH:$DIR:$DIR/slim:$DIR/deeplab

# 定义各目录
output_dir=/output  # 训练目录
dataset_dir=/data/qq-39925317/drivable # 数据集目录，这里是写死的，记得修改

train_dir=$output_dir/train
checkpoint_dir=$train_dir

# config文件

# 先清空输出目录，本地运行会有效果，tinymind上运行这一行没有任何效果
# tinymind已经支持引用上一次的运行结果，这一行需要删掉，不然会出现上一次的运行结果被清空的状况。
# rm -rvf $output_dir/*

# 因为dataset里面的东西是不允许修改的，所以这里要把config文件复制一份到输出目录

python ./deeplab/train.py --logtostderr --train_logdir $train_dir --tf_initial_checkpoint /data/qq-39925317/drivable/model.ckpt --dataset_dir $dataset_dir --model_variant xception_65



