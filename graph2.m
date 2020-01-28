x = [22.8152,18.1908,14.6060,12.1853, 11.4489, 11.2613,11.2113,11.1890,11.1890,11.1890,11.1890,11.1890,11.1890];
y=[0.005,0.01,0.02,0.04,0.06,0.08,0.1,0.2,0.4,0.6,0.8,0.9,1];
plot(y,x,'r');
hold on
%x2=[0.9190,0.7634,0.5029,0.2499,0.1722,0.1549,0.1509,0.1500,0.1500,0.111.1890500,0.1500,0.1500,0.1500];
%plot(y,x2,'g');

%x3=[1,0.7903,0.5640,0.3358,0.2702,0.2595,0.2578,0.2577,0.2577,0.2577,0.2577,0.2577,0.2577];
%plot(y,x3,'y');

x4=[23.9190,22.6294,18.5327,15.4906,14.4612,14.2108,14.1441,14.1198,14.1198,14.1198,14.1198,14.1198,14.1198];
plot(y,x4,'b');

x5=[16.5827,14.5813,12.5797,11.5785,11.5782,10.5782, 10.5782,10.5782,10.5782,10.5782, 10.5782,10.5782,10.5782]
plot(y,x5,'k');
xlabel('Clip Limit');
ylabel('Peak Signal-to-Noise Ratio');
hold off


hsv=rgb2hsv(Im);
H=hsv(:,:,1);
S=hsv(:,:,2);
V=hsv(:,:,3);
S=adapthisteq(S,'ClipLimit',0.01,'Distribution','rayleigh');
V=adapthisteq(V,'ClipLimit',0.01,'Distribution','rayleigh');
HSV=cat(3,H,S,V);
HSV1=hsv2rgb(HSV);
figure(2);
subplot(2,2,2);
imshow(HSV1);
title('HSV image');





I1=imguidedfilter(RGB1);
figure(3);
subplot(2,2,1);
imshow(I1);
title('Guided filter image on RGB');


I2=imguidedfilter(YCBCR);
figure(3);
subplot(2,2,2);
imshow(I2);
title('Guided filter image on ycbcr');

I3=imguidedfilter(HSV1);
figure(3);
subplot(2,2,3);
imshow(I3);
title('Guided filter image on HSV');

ycbcr=rgb2ycbcr(Im);
Y=ycbcr(:,:,1);
Cb=ycbcr(:,:,2);
Cr=ycbcr(:,:,3);
y1=adapthisteq(Y,'ClipLimit',0.01,'Distribution','rayleigh');
YCBCR1=cat(3,y1,Cb,Cr);
YCBCR1=ycbcr2rgb(YCBCR1);
figure(2);
subplot(2,2,1);
imshow(YCBCR1);
title('YCBCR image');

y2=adapthisteq(Y,'ClipLimit',0.01,'Distribution','uniform');
YCBCR2=cat(3,y2,Cb,Cr);
YCBCR2=ycbcr2rgb(YCBCR2);
figure(2);
subplot(2,2,2);
imshow(YCBCR2);
title('YCBCR image');


Y3=adapthisteq(Y,'ClipLimit',0.01,'Distribution','exponential');
YCBCR3=cat(3,Y3,Cb,Cr);
YCBCR3=ycbcr2rgb(YCBCR3);
figure(2);
subplot(2,2,3);
imshow(YCBCR3);
title('YCBCR image');
%display(psnr_2);
%psnr_3=psnr(HSV4,Im);
%display(psnr_3);
%psnr_4=psnr(HSV5,Im);
%display(psnr_4);
HSV1=uint8(HSV1);
I3=uint8(I3);
mse_1=immse(RGB1,Im);
display(mse_1);
mse_2=immse(HSV1,Im);
display(mse_2);
mse_3=immse(YCBCR1,Im);
display(mse_3);
mse_1=immse(I1,Im);
display(mse_1);
mse_2=immse(I2,Im);
display(mse_2);
mse_3=immse(I3,Im);
display(mse_3);

ycbcr=rgb2ycbcr(Im);
Y=ycbcr(:,:,1);
Cb=ycbcr(:,:,2);
Cr=ycbcr(:,:,3);
y1=adapthisteq(Y,'ClipLimit',0.4,'Distribution','rayleigh');
YCBCR1=cat(3,y1,Cb,Cr);
YCBCR1=ycbcr2rgb(YCBCR1);


y2=adapthisteq(Y,'ClipLimit',0.25,'Distribution','rayleigh');
YCBCR2=cat(3,y2,Cb,Cr);
YCBCR2=ycbcr2rgb(YCBCR2);



Y3=adapthisteq(Y,'ClipLimit',0.1,'Distribution','rayleigh');
YCBCR3=cat(3,Y3,Cb,Cr);
YCBCR3=ycbcr2rgb(YCBCR3);


Y4=adapthisteq(Y,'ClipLimit',0.05,'Distribution','rayleigh');
YCBCR4=cat(3,Y4,Cb,Cr);
YCBCR4=ycbcr2rgb(YCBCR4);

Y5=adapthisteq(Y,'ClipLimit',0.01,'Distribution','rayleigh');
YCBCR5=cat(3,Y5,Cb,Cr);
YCBCR5=ycbcr2rgb(YCBCR5);
R=Im(:,:,1);
G=Im(:,:,2);
B=Im(:,:,3);
r1=adapthisteq(R,'ClipLimit',0.4,'Distribution','exponential');
g1=adapthisteq(G,'ClipLimit',0.4,'Distribution','exponential');
b1=adapthisteq(B,'ClipLimit',0.4,'Distribution','exponential');
RGB1=cat(3,r1,g1,b1);

r2=adapthisteq(R,'ClipLimit',0.25,'Distribution','exponential');
g2=adapthisteq(G,'ClipLimit',0.25,'Distribution','exponential');
b2=adapthisteq(B,'ClipLimit',0.25,'Distribution','exponential');
RGB2=cat(3,r2,g2,b2);


r3=adapthisteq(R,'ClipLimit',0.1,'Distribution','exponential');
g3=adapthisteq(G,'ClipLimit',0.1,'Distribution','exponential');
b3=adapthisteq(B,'ClipLimit',0.1,'Distribution','exponential');
RGB3=cat(3,r3,g3,b3);



r4=adapthisteq(R,'ClipLimit',0.05,'Distribution','exponential');
g4=adapthisteq(G,'ClipLimit',0.05,'Distribution','exponential');
b4=adapthisteq(B,'ClipLimit',0.05,'Distribution','exponential');
RGB4=cat(3,r4,g4,b4);

r5=adapthisteq(R,'ClipLimit',0.01,'Distribution','exponential');
g5=adapthisteq(G,'ClipLimit',0.01,'Distribution','exponential');
b5=adapthisteq(B,'ClipLimit',0.01,'Distribution','exponential');
RGB5=cat(3,r5,g5,b5);


psnr_1=psnr(RGB1,Im);
display(psnr_1);
psnr_4=psnr(HSV1,Im);
display(psnr_4);
psnr_2=psnr(YCBCR1,Im);
display(psnr_2);
psnr_3=psnr(I1,Im);
display(psnr_3);
psnr_4=psnr(I2,Im);
display(psnr_4);
psnr_4=psnr(I3,Im);
display(psnr_4);



hsv=rgb2hsv(Im);
H=hsv(:,:,1);
S=hsv(:,:,2);
V=hsv(:,:,3);
S1=adapthisteq(S,'ClipLimit',0.01,'Distribution','rayleigh');
V1=adapthisteq(V,'ClipLimit',0.01,'Distribution','rayleigh');
HSV1=cat(3,H,S1,V1);
HSV1=hsv2rgb(HSV1);
figure(2);
subplot(2,2,1);
imshow(HSV1);
title('HSV image');

hsv=rgb2hsv(Im);
H=hsv(:,:,1);
S=hsv(:,:,2);
V=hsv(:,:,3);
S=adapthisteq(S,'ClipLimit',0.01,'Distribution','rayleigh');
V=adapthisteq(V,'ClipLimit',0.01,'Distribution','rayleigh');
HSV1=cat(3,H,S,V);
HSV1=hsv2rgb(HSV1);
figure(2);
subplot(2,2,1);
imshow(HSV1);
title('HSV image');


hsv=rgb2hsv(Im);
H=hsv(:,:,1);
S2=hsv(:,:,2);
V2=hsv(:,:,3);
S2=adapthisteq(S,'ClipLimit',0.01,'Distribution','uniform');
V2=adapthisteq(V,'ClipLimit',0.01,'Distribution','uniform');
HSV2=cat(3,H,S2,V2);
HSV2=hsv2rgb(HSV2);
figure(2);
subplot(2,2,2);
imshow(HSV2);
title('HSV image');

hsv=rgb2hsv(Im);
H=hsv(:,:,1);
S3=hsv(:,:,2);
V3=hsv(:,:,3);
S3=adapthisteq(S,'ClipLimit',0.01,'Distribution','exponential');
V3=adapthisteq(V,'ClipLimit',0.01,'Distribution','exponential');
HSV3=cat(3,H,S3,V3);
HSV3=hsv2rgb(HSV3);
figure(2);
subplot(2,2,3);
imshow(HSV3);
title('HSV image');
ycbcr=rgb2ycbcr(Im);
Y=ycbcr(:,:,1);
Cb=ycbcr(:,:,2);
Cr=ycbcr(:,:,3);
y1=adapthisteq(Y,'ClipLimit',0.4,'Distribution','exponential');
YCBCR1=cat(3,y1,Cb,Cr);
YCBCR1=ycbcr2rgb(YCBCR1);


y2=adapthisteq(Y,'ClipLimit',0.25,'Distribution','exponential');
YCBCR2=cat(3,y2,Cb,Cr);
YCBCR2=ycbcr2rgb(YCBCR2);



Y3=adapthisteq(Y,'ClipLimit',0.1,'Distribution','exponential');
YCBCR3=cat(3,Y3,Cb,Cr);
YCBCR3=ycbcr2rgb(YCBCR3);


Y4=adapthisteq(Y,'ClipLimit',0.05,'Distribution','exponential');
YCBCR4=cat(3,Y4,Cb,Cr);
YCBCR4=ycbcr2rgb(YCBCR4);

Y5=adapthisteq(Y,'ClipLimit',0.01,'Distribution','exponential');
YCBCR5=cat(3,Y5,Cb,Cr);
YCBCR5=ycbcr2rgb(YCBCR5);




