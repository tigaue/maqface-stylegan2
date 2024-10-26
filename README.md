# Motion transfer-enhanced StyleGAN for generating diverse macaque facial expressions


## Style mixing
### Mixing results

First row/column: Source images. First column images are motion-transferred for motions defined in our paper. Second row/column: Inversion images.

- Inject 0,1,2 of column images
![result of style mixing](img/mixing_0_1_2.gif "result of style mixing")
- Layer 6,7,8
![result of style mixing](img/mixing_6_7_8.gif "result of style mixing")
- Morph (50% blending in all layers)
![result of style mixing](img/mixing_morph.gif "result of style mixing")

### Use your own source images

```bash
bash scripts/style_mixing_maq.sh
```

## Editing
