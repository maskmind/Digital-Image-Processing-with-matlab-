f=imread( 'img\Fig0638.tif' );
%利用拉普拉斯(Laplacian)算子彩色图像锐化处理
%

lapask=[1 1 1; 1 -8 1; 1 1 1];
fen=imsubtract(f, imfilter(f, lapask, 'replicate'));
imshow(f);
figure, imshow(fen); 
