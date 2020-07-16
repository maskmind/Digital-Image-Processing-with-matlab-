%   使用梯度的分水岭分割
f=imread('img/Fig1056(a)(blob_original).tif');
imshow(f);
h = fspecial('sobel');
fd = double(f);
g = sqrt(imfilter(fd,h,'replicate').^2 + imfilter(fd,h','replicate').^2);
figure,imshow(g);
L = watershed(g);
wr = L == 0;
figure,imshow(wr);  
g2=imclose(imopen(g,ones(3,3)),ones(3,3));
L2=watershed(g2);
wr2=L2==0;
f2=f;
f2(wr2)=255;
figure,imshow(L2);