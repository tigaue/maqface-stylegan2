DIR_ROOT=$(pwd)

export ITE="320000"
export DIR="restyle_image_traintest_20240205_jr-sgv2000_r2_eye0_eye2-10"

export TORCH_CUDA_ARCH_LIST='8.0+PTX' ## for solving "nvcc fatal   : Unsupported gpu architecture 'compute_86'" on Nvidia RTX-3090

cd modules/restyle-encoder
python "scripts/demo_editing_maqface.py" \
    --path_img="${DIR_ROOT}/data/sample_images/Wolowitz-6675-170816-00000000.jpg" \
    --checkpoint_path="${DIR_ROOT}/data/checkpoints/maqface-stylegan2.pt" \
    --dir_directions="${DIR_ROOT}/data/boundaries" \
    --exp_dir="${DIR_ROOT}/output/inversion"

cd ${DIR_ROOT}