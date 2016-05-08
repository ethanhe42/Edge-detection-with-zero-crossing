# edge Detection from scratch  
![img](https://raw.githubusercontent.com/yihui-he/yihui-he-Edge-detection-with-zero-crossing/master/lena_1.bmp)  
**Note:**  
1. I performed a threshold enhancement on this algorithm, maybe the results is a little bit different from they should be.(less noises, but some lines are disjointed)  
2. put images with scripts in the same folder

marr.m is the edge detection algorithm  
    -n sigma  
    -filename lena  
    -extend .jpg  
Gaussian_mask_pyramid.m create gaussian mask  
    -masksize  
    -sigma  
main.m shows a way of using my "marr.m" to detect edges  
    it process those test images at once, lena,lena3, ucsb, up  
    note that  
myConv.m implement convolution func  
