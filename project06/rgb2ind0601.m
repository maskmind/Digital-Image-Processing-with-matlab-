f=imread( 'img\Fig0651.tif' );

%·Ç¶¶¶¯
[x1,map1] = rgb2ind(f,8,'nodither');
imshow(x1,map1);
%¶¶¶¯
[x2,map2] = rgb2ind(f,8,'dither');
figure,imshow(x2,map2);

g=rgb2gray(f);
g1=dither(g);
figure,imshow(g),figure,imshow(g1);