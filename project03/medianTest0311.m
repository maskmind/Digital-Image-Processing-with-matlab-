% 非线性空间滤波器
f=imread( 'img\Fig0318.tif' );
imshow(f, [ ]);
fn=imnoise(f, 'salt & pepper', 0.2);
figure,imshow(fn, [ ]);
gm=medfilt2(fn);
figure,imshow(gm, [ ]);
gms=medfilt2(fn, 'symmetric');
figure,imshow(gms, [ ]);
