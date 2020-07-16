f=imread('img/Fig1105(a)(noisy_stroke).tif');
f=im2double(f);
b=boundaries(f);
b=b{1};
bim=bound2im(b,344,270);
figure,imshow(bim);
z=frdescp(b);z546=ifrdescp(z,546);
z546im=bound2im(z546,344,270);
