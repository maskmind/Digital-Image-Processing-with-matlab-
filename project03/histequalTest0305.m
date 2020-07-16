f=imread( 'img\Fig0316(4)(bottom_left).tif' );

imshow(f)
figure,imhist(f);
ylim('auto')

% 直方图均衡化
g=histeq(f,256);
figure,imshow(g);
figure,imhist(g)
ylim('auto')

