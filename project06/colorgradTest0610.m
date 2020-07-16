f=imread( 'img\Fig0638.tif' );
[vg,a,ppg]=colorgrad(f);
imshow(f);
figure, imshow(vg);
figure, imshow(ppg);
