%   使用梯度的分水岭分割
f=imread('img/Fig1056(a)(blob_original).tif');
imshow(f);
h = fspecial('sobel');
fd = double(f);
g = sqrt(imfilter(fd,h,'replicate').^2 + imfilter(fd,h','replicate').^2);
L = watershed(g);
wr = L == 0;
figure,imshow(wr);  

rm=imregionalmin(f);
im=imextendedmin(f,2);
fim=f;
fim(im)=175;
figure,imshow(fim);
Lim=watershed(bwdist(im));
em=Lim==0;
figure,imshow(em);

g2=imimposemin(g,im|em);
L2=watershed(g2);
f2=f;
f2(L2==0)=255;
figure,imshow(L2);