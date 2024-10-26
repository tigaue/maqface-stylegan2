# Motion transfer-enhanced StyleGAN for generating diverse macaque facial expressions


## Style mixing
### Mixing results

First row/column: Source images. First column images are motion-transferred for motions defined in our paper. Second row/column: Inversion images.

- Injection of 0,1,2 layers from column images to row images (Mouth movements)
![result of style mixing](img/mixing_0_1_2.gif "result of style mixing")
- Injection of 6,7,8 layers from column images to row images (Eye movements)
![result of style mixing](img/mixing_6_7_8.gif "result of style mixing")
- Morph (50% blending in all layers) (Intermediate identity)
![result of style mixing](img/mixing_morph.gif "result of style mixing")

### Use your own source images

```bash
bash scripts/style_mixing_maq.sh
```

## Editing
