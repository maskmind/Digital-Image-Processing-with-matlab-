%例3.1
f=imread( 'img\Fig0304.tif' );

g1=imadjust(f,[0 1],[1 0]);
g = imcomplement(f);
g2 = imadjust(f, [0.5 0.75],[0 1]);
% 输入图像low_in到high_in的灰度级映射到输出图像low_out,high_out之间。
g3 = imadjust(f,[ ],[ ],2);

imshow(f);
figure,imshow(g1);
figure,imshow(g);
figure,imshow(g2);
figure,imshow(g3);