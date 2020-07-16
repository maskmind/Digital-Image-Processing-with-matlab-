f=imread( 'img\Fig0316.tif' );
imshow(f, [ ]);
% 线性空间滤波器
w=fspecial('laplacian', 0);

g1=imfilter(f, w, 'replicate');
figure,imshow(g1, [ ]);
f2=im2double(f);
g2=imfilter(f2, w, 'replicate');
figure,imshow(g2, [ ]);
g=f2-g2;
figure,imshow(g, [ ]);

% 手工比较
w4=fspecial('laplacian', 0);
w8=[1 1 1; 1 -8 1; 1 1 1];
f = im2double(f);
g4 = f - imfilter(f, w4, 'replicate');
g8 = f - imfilter(f, w8, 'replicate');
figure,imshow(g4, [ ]);
figure,imshow(g8, [ ]);