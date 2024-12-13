DIR_ROOT=$(pwd)

export ITE="320000"
export DIR="restyle_image_traintest_20240205_jr-sgv2000_r2_eye0_eye2-10"

export TORCH_CUDA_ARCH_LIST='8.0+PTX' ## for solving "nvcc fatal   : Unsupported gpu architecture 'compute_86'" on Nvidia RTX-3090

cd modules/restyle-encoder
python "scripts/demo_mixing_maqface.py" \
    --path_img="${DIR_ROOT}/data/sample_images/n3072-00000000.jpg" \
    --path_img2="${DIR_ROOT}/data/sample_images/Wolowitz-6675-170816-00000000.jpg" \
    --checkpoint_path="${DIR_ROOT}/data/checkpoints/maqface-stylegan2.pt" \
    --exp_dir="${DIR_ROOT}/output/mixing" \
    --mixing_layers="0,1,2,3,4,5,6,7,8,9,10,11,12,13"

cd ${DIR_ROOT}