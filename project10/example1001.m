f=imread('img/Fig1041(a)(septagon_small_noisy_mean_0_stdv_10).tif');
w=[-1 -1 -1;-1 8 -1;-1 -1 -1];
g=abs(imfilter(double(f),w));
T=max(g(:));
g=g>=T;
imshow(g);