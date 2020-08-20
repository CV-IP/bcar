python run_trainer.py \
       --root_path data \
       --log_path logs_mobilenet_v2 \
       --student_class_module lib.mobilenet_v2 \
       --student_class_name MobilenetV2IFN \
       --teacher_class_module lib.mobilenet_v2 \
       --teacher_class_name MobilenetV2IFN \
       --train_targets cuhk02 cuhk03 duke market person_search \
       --test_targets viper prid grid i_lids \
       --augmentation_types flip crop \
       --batch_size 64 \
       --n_workers 7 \
       --gpu_ids 0 \
       --init_lr_student_classifier .01 \
       --init_lr_teacher_classifier .02 \
       --init_interval 1 \
       --hard_ratio .3