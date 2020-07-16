f=imread('img/Fig1016(a)(building_original).tif');
[g_sobel_default,ts]=edge(f,'sobel');
[g_log_default,tlog]=edge(f,'log');
[g_canny_default,tc]=edge(f,'canny');

g_sobel_best=edge(f,'sobel',0.05);
g_log_best=edge(f,'log',0.003,2.25);
g_canny_best=edge(f,'canny',[0.04,0.1],1.5);

imshow(g_sobel_default);
figure,imshow(g_log_default);
figure,imshow(g_canny_default);
figure,imshow(g_sobel_best);
figure,imshow(g_log_best);
figure,imshow(g_canny_best);
% figure,imshow(g_log_default);
% figure,imshow(g_log_default);