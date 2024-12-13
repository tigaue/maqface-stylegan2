DIR_ROOT=$(pwd)

export ITE="320000"
export DIR="restyle_image_traintest_20240205_jr-sgv2000_r2_eye0_eye2-10"

export TORCH_CUDA_ARCH_LIST='8.0+PTX' ## for solving "nvcc fatal   : Unsupported gpu architecture 'compute_86'" on 3090

cd modules/restyle-encoder
python "scripts/demo_editing_maqface.py" \
    --path_img="${DIR_ROOT}/data/sample_images/test/Wolowitz-6675-170816-00000000.jpg" \
    --checkpoint_path="/mnt/Archive/tkyiga_monkeygan_dataset_final/4_stylegan2-ada_restyle-psp/restyle_train-decoder-true/${DIR}/checkpoints/iteration_${ITE}.pt" \
    --dir_directions="${DIR_ROOT}/data/boundaries" \
    --exp_dir="${DIR_ROOT}/output/inversion"
    # --path_img="${DIR_ROOT}/data/sample_images/058 (9)-00000001.jpg" \
    # --checkpoint_path="${DIR_ROOT}/data/checkpoints/restyle_image_traintest_20240205_jr-sgv2000_r2_eye0_eye0-1_iteration_320000.pt" \

cd ${DIR_ROOT}