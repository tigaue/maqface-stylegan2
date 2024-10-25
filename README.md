# Motion transfer-enhanced StyleGAN for generating diverse macaque facial expressions


## Style mixing
### Mixing results

- Layer 0,1,2

First row/column: Source images. First column images are motion-transferred for motions defined in our paper.

Second row/column: Inversion images.

Layer 0, 1, 2 of column images were injected to row images.

![result of style mixing](img/mixing_0_1_2.gif "result of style mixing")

- Layer 6,7,8

First row/column: Source images. First column images are motion-transferred for motions defined in our paper.

Second row/column: Inversion images.

Layer 6, 7, 8 of column images were injected to row images.

### Use your own source images

```bash
bash scripts/style_mixing_maq.sh
```


![result of style mixing](img/mixing_6_7_8.gif "result of style mixing")

## Result of morph
First row/column: Source images. First column images are motion-transferred for motions defined in our paper.

Second row/column: Inversion images.

All layer of column images were 50% injected to row images.

![result of style mixing](img/mixing_morph.gif "result of style mixing")


## Editing
