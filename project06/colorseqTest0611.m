f=imread( 'img\Fig0638.tif' );
imshow(f);


mask=roipoly(f);
red=immultiply(mask,f(:,:,1));
green=immultiply(mask,f(:,:,2));
blue=immultiply(mask,f(:,:,3));

g=cat(3,red,green,blue);
figure, imshow(g);

[M,N,K] =size(g);
I=reshape(g,M*N,3);
idx=find(mask);
I=double(I(idx,1:3));
[C,m]=covmatrix(I);
d=diag(C);
sd=sqrt(d)'
E25=colorseg('euclidean',f,25,m)