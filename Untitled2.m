clc;
clear all;
[I,MAP]=imread('D:\Project-Under water image quality enhancement\hazed1.jpg');
RGB = ind2rgb(I,MAP);
LAB = rgb2lab(RGB);
L = LAB(:,:,1)/100;
L = adapthisteq(L,'NumTiles',[8 8],'ClipLimit',0.005);
LAB(:,:,1) = L*100;
J = lab2rgb(LAB);
figure
imshowpair(RGB,J,'montage')
title('Original (left) and Contrast Enhanced (right) Image')

