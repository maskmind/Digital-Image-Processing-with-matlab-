fc=imread( 'img\Fig0651.tif' );
h=rgb2hsi(fc);
H=h(:,:,1);
S=h(:,:,2);
I=h(:,:,3);
w=fspecial('average',25);
I_filtered=imfilter(I,w,'replicate');
h =cat(3, H, S,I_filtered );

f=hsi2rgb(h);
f=min(f,1);


imshow(f);
