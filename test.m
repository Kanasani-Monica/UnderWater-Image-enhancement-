clc;
clear all;
Im=imread('D:\Project-Under water image quality enhancement\report images\original_1.jpg');
figure(1);
imshow(Im);

hsv=rgb2hsv(Im);
H=hsv(:,:,1);
S=hsv(:,:,2);
V=hsv(:,:,3);
S1=adapthisteq(S,'ClipLimit',0.4,'Distribution','exponential');
V1=adapthisteq(V,'ClipLimit',0.4,'Distribution','exponential');
HSV1=cat(3,H,S1,V1);
HSV1=hsv2rgb(HSV1);


S2=adapthisteq(S,'ClipLimit',0.25,'Distribution','exponential');
V2=adapthisteq(V,'ClipLimit',0.25,'Distribution','exponential');
HSV2=cat(3,H,S2,V2);
HSV2=hsv2rgb(HSV2);


S3=adapthisteq(S,'ClipLimit',0.1,'Distribution','exponential');
V3=adapthisteq(V,'ClipLimit',0.1,'Distribution','exponential');
HSV3=cat(3,H,S3,V3);
HSV3=hsv2rgb(HSV3);


S4=adapthisteq(S,'ClipLimit',0.05,'Distribution','exponential');
V4=adapthisteq(V,'ClipLimit',0.05,'Distribution','exponential');
HSV4=cat(3,H,S4,V4);
HSV4=hsv2rgb(HSV4);



S5=adapthisteq(S,'ClipLimit',0.01,'Distribution','exponential');
V5=adapthisteq(V,'ClipLimit',0.01,'Distribution','exponential');
HSV5=cat(3,H,S5,V5);
HSV5=hsv2rgb(HSV5);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%ssim_8=ssim(I3,Im);
%display(ssim_8);


%e_1=entropy(Im);
%display(e_1);
%e_2=entropy(RGB);
%display(e_2);
%e_3=psnr(HSV);
%display(e_3);
%e_4=psnr(J1);
%display(e_4);
%e_6=psnr(I1);
%display(e_6);
%e_7=psnr(I2);
%display(e_7);
%e_8=psnr(I3);
%display(e_8);


HSV1=uint8(HSV1);
HSV2=uint8(HSV2);
HSV3=uint8(HSV3);
HSV4=uint8(HSV4);
HSV5=uint8(HSV5);
psnr_1=psnr(HSV1,Im);
display(psnr_1);
psnr_2=psnr(HSV2,Im);
display(psnr_2);
psnr_3=psnr(HSV3,Im);
display(psnr_3);
psnr_4=psnr(HSV4,Im);
display(psnr_4);
psnr_5=psnr(HSV5,Im);
display(psnr_5);








